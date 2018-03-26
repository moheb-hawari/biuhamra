<?php defined('BASEPATH') || exit('No direct script access allowed');

/**
 * Content controller
 */
class Content extends Admin_Controller
{
    protected $permissionCreate = 'Faq.Content.Create';
    protected $permissionDelete = 'Faq.Content.Delete';
    protected $permissionEdit   = 'Faq.Content.Edit';
    protected $permissionView   = 'Faq.Content.View';

    /**
     * Constructor
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
        
        $this->auth->restrict($this->permissionView);
        $this->load->model('faq/faq_model');
        $this->lang->load('faq');
        $this->load->helper('upload_helper');
            $this->form_validation->set_error_delimiters("<span class='error'>", "</span>");
        
        Template::set_block('sub_nav', 'content/_sub_nav');

        Assets::add_css(assets_path() . 'globals/css/elements.css');
        Assets::add_css( assets_path().'globals/plugins/datatables/themes/bootstrap/dataTables.bootstrap.css');
        Assets::add_css( assets_path().'globals/plugins/datatables/media/css/jquery.dataTables.min.css');
        Assets::add_css( assets_path().'globals/plugins/components-summernote/dist/summernote.css');
        Assets::add_js(assets_path().'globals/plugins/components-summernote/dist/summernote.js');
        Assets::add_js( assets_path().'globals/plugins/datatables/media/js/jquery.dataTables.min.js');
        Assets::add_js(assets_path().'globals/plugins/datatables/themes/bootstrap/dataTables.bootstrap.js');
        Assets::add_js(assets_path().'globals/scripts/tables-datatables.js');
        
        Assets::add_module_js('faq', 'faq.js');
    }

    /**
     * Display a list of FAQ data.
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
                    $deleted = $this->faq_model->delete($pid);
                    if ($deleted == false) {
                        $result = false;
                    }
                }
                if ($result) {
                    Template::set_message(count($checked) . ' ' . lang('faq_delete_success'), 'success');
                } else {
                    Template::set_message(lang('faq_delete_failure') . $this->faq_model->error, 'error');
                }
            }
        }
        $pagerUriSegment = 5;
        $pagerBaseUrl = site_url(SITE_AREA . '/content/faq/index') . '/';
        
        $limit  = $this->settings_lib->item('site.list_limit') ?: 15;

        $this->load->library('pagination');
        $pager['base_url']    = $pagerBaseUrl;
        $pager['total_rows']  = $this->faq_model->count_all();
        $pager['per_page']    = $limit;
        $pager['uri_segment'] = $pagerUriSegment;

        $this->pagination->initialize($pager);
        $this->faq_model->limit($limit, $offset);
        
        
        $records = $this->faq_model->find_all();
        
        Template::set('records', $records);
        
    Template::set('toolbar_title', lang('faq_manage'));

        Template::render();
    }
    
    /**
     * Create a FAQ object.
     *
     * @return void
     */
    public function create()
    {
        $this->auth->restrict($this->permissionCreate);
        $this->edit();
        
    }
    /**
     * Allows editing of FAQ data.
     *
     * @return void
     */
    public function edit()
    {
        $id = $this->uri->segment(5);
        Template::set('weight', $this->faq_model->count_all());
        if (empty($id)) {
            if (isset($_POST['save'])) {
            if ($insert_id = $this->save_faq()) {
                log_activity($this->auth->user_id(), lang('faq_act_create_record') . ': ' . $insert_id . ' : ' . $this->input->ip_address(), 'faq');
                Template::set_message(lang('faq_create_success'), 'success');

                redirect(SITE_AREA . '/content/faq');
            }

            // Not validation error
            if ( ! empty($this->faq_model->error)) {
                Template::set_message(lang('faq_create_failure') . $this->faq_model->error, 'error');
            }
        }

        Template::set('toolbar_title', lang('faq_action_create'));
        Template::set_view('edit');
        Template::render();
        }
        else
        {
        if (isset($_POST['save'])) {
            $this->auth->restrict($this->permissionEdit);

            if ($this->save_faq('update', $id)) {
                log_activity($this->auth->user_id(), lang('faq_act_edit_record') . ': ' . $id . ' : ' . $this->input->ip_address(), 'faq');
                Template::set_message(lang('faq_edit_success'), 'success');
                redirect(SITE_AREA . '/content/faq');
            }

            // Not validation error
            if ( ! empty($this->faq_model->error)) {
                Template::set_message(lang('faq_edit_failure') . $this->faq_model->error, 'error');
            }
        }
        
        elseif (isset($_POST['delete'])) {
            $this->auth->restrict($this->permissionDelete);

            if ($this->faq_model->delete($id)) {
                log_activity($this->auth->user_id(), lang('faq_act_delete_record') . ': ' . $id . ' : ' . $this->input->ip_address(), 'faq');
                Template::set_message(lang('faq_delete_success'), 'success');

                redirect(SITE_AREA . '/content/faq');
            }

            Template::set_message(lang('faq_delete_failure') . $this->faq_model->error, 'error');
        }
        
        Template::set('faq', $this->faq_model->find($id));

        Template::set('toolbar_title', lang('faq_edit_heading'));
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
    private function save_faq($type = 'insert', $id = 0)
    {
        if ($type == 'update') {
            $_POST['id'] = $id;
        }

        // Validate the data
        $this->form_validation->set_rules($this->faq_model->get_validation_rules());
        if ($this->form_validation->run() === false) {
            return false;
        }

        // Make sure we only pass in the fields we want
        
        $data = $this->faq_model->prep_data($this->input->post());

        // Additional handling for default values should be added below,
        // or in the model's prep_data() method
        

        $return = false;
        if ($type == 'insert') {
            $id = $this->faq_model->insert($data);

            if (is_numeric($id)) {
                $return = $id;
            }
        } elseif ($type == 'update') {
            $return = $this->faq_model->update($id, $data);
        }

        return $return;
    }
}