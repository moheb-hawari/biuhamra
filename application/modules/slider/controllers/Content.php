<?php defined('BASEPATH') || exit('No direct script access allowed');

/**
 * Content controller
 */
class Content extends Admin_Controller
{
    protected $permissionCreate = 'Slider.Content.Create';
    protected $permissionDelete = 'Slider.Content.Delete';
    protected $permissionEdit   = 'Slider.Content.Edit';
    protected $permissionView   = 'Slider.Content.View';

    /**
     * Constructor
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
        
        $this->auth->restrict($this->permissionView);
        $this->load->model('slider/slider_model');
        $this->lang->load('slider');
        $this->load->helper('upload_helper');
            $this->form_validation->set_error_delimiters("<span class='error'>", "</span>");
        
        Template::set_block('sub_nav', 'content/_sub_nav');

        Assets::add_css(assets_path() . 'globals/css/elements.css');
        Assets::add_css( assets_path().'globals/plugins/datatables/themes/bootstrap/dataTables.bootstrap.css');
        Assets::add_css( assets_path().'globals/plugins/datatables/media/css/jquery.dataTables.min.css');
        Assets::add_css( assets_path().'globals/plugins/jasny-bootstrap/dist/css/jasny-bootstrap.min.css');
        Assets::add_css( assets_path().'globals/plugins/components-summernote/dist/summernote.css');
        
        Assets::add_js(assets_path().'globals/plugins/components-summernote/dist/summernote.min.js');
        Assets::add_js( assets_path().'globals/plugins/datatables/media/js/jquery.dataTables.min.js');
        Assets::add_js(assets_path().'globals/plugins/datatables/themes/bootstrap/dataTables.bootstrap.js');
        Assets::add_js(assets_path().'globals/plugins/jasny-bootstrap/dist/js/jasny-bootstrap.min.js');
        Assets::add_js(assets_path().'globals/scripts/tables-datatables.js');
        
        Assets::add_module_js('slider', 'slider.js');
    }

    /**
     * Display a list of Slider data.
     *
     * @return void
     */
    public function index($offset = 0)
    {
        // Deleting anything?
        if (isset($_POST['delete'])) {
            $this->auth->restrict($this->permissionDelete);
            $checked = $this->input->post('checked');
            if (is_array($checked) && count($checked)) {

                // If any of the deletions fail, set the result to false, so
                // failure message is set if any of the attempts fail, not just
                // the last attempt

                $result = true;
                foreach ($checked as $pid) {
                    $deleted = $this->slider_model->delete($pid);
                    if ($deleted == false) {
                        $result = false;
                    }
                }
                if ($result) {
                    Template::set_message(count($checked) . ' ' . lang('slider_delete_success'), 'success');
                } else {
                    Template::set_message(lang('slider_delete_failure') . $this->slider_model->error, 'error');
                }
            }
        }
        $pagerUriSegment = 5;
        $pagerBaseUrl = site_url(SITE_AREA . '/content/slider/index') . '/';
        
        $limit  = $this->settings_lib->item('site.list_limit') ?: 15;

        $this->load->library('pagination');
        $pager['base_url']    = $pagerBaseUrl;
        $pager['total_rows']  = $this->slider_model->count_all();
        $pager['per_page']    = $limit;
        $pager['uri_segment'] = $pagerUriSegment;

        $this->pagination->initialize($pager);
        $this->slider_model->limit($limit, $offset);
        
        $records = $this->slider_model->find_all();

        Template::set('records', $records);
        
    Template::set('toolbar_title', lang('slider_manage'));

        Template::render();
    }
    
    /**
     * Create a Slider object.
     *
     * @return void
     */
    public function create()
    {
        $this->auth->restrict($this->permissionCreate);
        $this->edit();
        
    }
    /**
     * Allows editing of Slider data.
     *
     * @return void
     */
    public function edit()
    {
        $id = $this->uri->segment(5);
        Template::set('weight', $this->slider_model->count_all());
        if (empty($id)) {
            if (isset($_POST['save'])) {
            if ($insert_id = $this->save_slider()) {
                log_activity($this->auth->user_id(), lang('slider_act_create_record') . ': ' . $insert_id . ' : ' . $this->input->ip_address(), 'slider');
                Template::set_message(lang('slider_create_success'), 'success');

                redirect(SITE_AREA . '/content/slider');
            }

            // Not validation error
            if ( ! empty($this->slider_model->error)) {
                Template::set_message(lang('slider_create_failure') . $this->slider_model->error, 'error');
            }
        }

        Template::set('toolbar_title', lang('slider_action_create'));
        Template::set_view('edit');
        Template::render();
        }
        else
        {        
        if (isset($_POST['save'])) {
            $this->auth->restrict($this->permissionEdit);

            if ($this->save_slider('update', $id)) {
                log_activity($this->auth->user_id(), lang('slider_act_edit_record') . ': ' . $id . ' : ' . $this->input->ip_address(), 'slider');
                Template::set_message(lang('slider_edit_success'), 'success');
                redirect(SITE_AREA . '/content/slider');
            }

            // Not validation error
            if ( ! empty($this->slider_model->error)) {
                Template::set_message(lang('slider_edit_failure') . $this->slider_model->error, 'error');
            }
        }
        
        elseif (isset($_POST['delete'])) {
            $this->auth->restrict($this->permissionDelete);

            if ($this->slider_model->delete($id)) {
                log_activity($this->auth->user_id(), lang('slider_act_delete_record') . ': ' . $id . ' : ' . $this->input->ip_address(), 'slider');
                Template::set_message(lang('slider_delete_success'), 'success');

                redirect(SITE_AREA . '/content/slider');
            }

            Template::set_message(lang('slider_delete_failure') . $this->slider_model->error, 'error');
        }
        
        Template::set('slider', $this->slider_model->find($id));

        Template::set('toolbar_title', lang('slider_edit_heading'));
        Template::render();
        }
    }

    //--------------------------------------------------------------------------
    // !PRIVATE METHODS
    //--------------------------------------------------------------------------

    /**
     * Save the data.
     *
     * @param string $type Either 'insert' or 'update'.
     * @param int    $id   The ID of the record to update, ignored on inserts.
     *
     * @return boolean|integer An ID for successful inserts, true for successful
     * updates, else false.
     */
    private function save_slider($type = 'insert', $id = 0)
    {
        if ($type == 'update') {
            $_POST['id'] = $id;
        }

        // Validate the data
        $this->form_validation->set_rules($this->slider_model->get_validation_rules());
        if($type == 'insert')
        {
            if($_FILES['image']['name'] == null)
            {
                $this->form_validation->set_rules('image','Image', 'required');
            }
        }
        if ($this->form_validation->run() === false) {
            return false;
        }

        // Make sure we only pass in the fields we want
        
        $data = $this->slider_model->prep_data($this->input->post());

        // Additional handling for default values should be added below,
        // or in the model's prep_data() method
        
        unset($data['image']);
        
        $return = false;
        if ($type == 'insert') {
            $id = $this->slider_model->insert($data);

            if (is_numeric($id)) {
                $images = do_upload($id);
                if(isset($images)){
                $this->slider_model->skip_validation(true);
                $this->slider_model->update($id, $images);
                }
                $return = $id;
            }
        } elseif ($type == 'update') {
            $return = $this->slider_model->update($id, $data);
             $images = do_upload($id);
            if(isset($images)){ $this->slider_model->update($id, $images);}
        }

        return $return;
    }
}