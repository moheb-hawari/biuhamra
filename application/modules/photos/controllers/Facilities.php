<?php defined('BASEPATH') || exit('No direct script access allowed');

/**
 * Facilities controller
 */
class Facilities extends Admin_Controller
{
    protected $permissionCreate = 'Photos.Facilities.Create';
    protected $permissionDelete = 'Photos.Facilities.Delete';
    protected $permissionEdit   = 'Photos.Facilities.Edit';
    protected $permissionView   = 'Photos.Facilities.View';

    /**
     * Constructor
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
        
        $this->auth->restrict($this->permissionView);
        $this->load->model('photos/photos_model');
        $this->load->model('departments/departments_model');
        $this->lang->load('photos');
        $this->load->helper('upload_helper');
            $this->form_validation->set_error_delimiters("<span class='error'>", "</span>");
        
        Template::set_block('sub_nav', 'facilities/_sub_nav');

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
        
        Assets::add_module_js('photos', 'photos.js');
    }

    /**
     * Display a list of Photos data.
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
                    $deleted = $this->photos_model->delete($pid);
                    if ($deleted == false) {
                        $result = false;
                    }
                }
                if ($result) {
                    Template::set_message(count($checked) . ' ' . lang('photos_delete_success'), 'success');
                } else {
                    Template::set_message(lang('photos_delete_failure') . $this->photos_model->error, 'error');
                }
            }
        }
        $pagerUriSegment = 5;
        $pagerBaseUrl = site_url(SITE_AREA . '/facilities/photos/index') . '/';
        
        $limit  = $this->settings_lib->item('site.list_limit') ?: 15;

        $this->load->library('pagination');
        $pager['base_url']    = $pagerBaseUrl;
        $pager['total_rows']  = $this->photos_model->count_all();
        $pager['per_page']    = $limit;
        $pager['uri_segment'] = $pagerUriSegment;

        $this->pagination->initialize($pager);
        $this->photos_model->limit($limit, $offset);
        
        
        $fields = array(
            'photos.id',
            'photos.department',
            'photos.photo',
            'photos.status',
            'departments.en_title',
            );
        $records = $this->photos_model->select($fields)
                ->join('departments','departments.id = photos.department')
                ->find_all();

        Template::set('records', $records);
        
    Template::set('toolbar_title', lang('photos_manage'));

        Template::render();
    }
    
    /**
     * Create a Photos object.
     *
     * @return void
     */
    public function create()
    {
        $this->auth->restrict($this->permissionCreate);
        $this->edit();
        
    }
    /**
     * Allows editing of Photos data.
     *
     * @return void
     */
    public function edit()
    {
        $id = $this->uri->segment(5);
        Template::set('departments', $this->departments_model->find_all());
        if (empty($id)) {
            if (isset($_POST['save'])) {
            if ($insert_id = $this->save_photos()) {
                log_activity($this->auth->user_id(), lang('photos_act_create_record') . ': ' . $insert_id . ' : ' . $this->input->ip_address(), 'photos');
                Template::set_message(lang('photos_create_success'), 'success');

                redirect(SITE_AREA . '/facilities/photos');
            }

            // Not validation error
            if ( ! empty($this->photos_model->error)) {
                Template::set_message(lang('photos_create_failure') . $this->photos_model->error, 'error');
            }
        }

        Template::set('toolbar_title', lang('photos_action_create'));
        Template::set_view('edit');
        Template::render();
        }
        else
        {        
        if (isset($_POST['save'])) {
            $this->auth->restrict($this->permissionEdit);

            if ($this->save_photos('update', $id)) {
                log_activity($this->auth->user_id(), lang('photos_act_edit_record') . ': ' . $id . ' : ' . $this->input->ip_address(), 'photos');
                Template::set_message(lang('photos_edit_success'), 'success');
                redirect(SITE_AREA . '/facilities/photos');
            }

            // Not validation error
            if ( ! empty($this->photos_model->error)) {
                Template::set_message(lang('photos_edit_failure') . $this->photos_model->error, 'error');
            }
        }
        
        elseif (isset($_POST['delete'])) {
            $this->auth->restrict($this->permissionDelete);

            if ($this->photos_model->delete($id)) {
                log_activity($this->auth->user_id(), lang('photos_act_delete_record') . ': ' . $id . ' : ' . $this->input->ip_address(), 'photos');
                Template::set_message(lang('photos_delete_success'), 'success');

                redirect(SITE_AREA . '/facilities/photos');
            }

            Template::set_message(lang('photos_delete_failure') . $this->photos_model->error, 'error');
        }
        
        Template::set('photos', $this->photos_model->find($id));

        Template::set('toolbar_title', lang('photos_edit_heading'));
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
    private function save_photos($type = 'insert', $id = 0)
    {
        if ($type == 'update') {
            $_POST['id'] = $id;
        }

        // Validate the data
        $this->form_validation->set_rules($this->photos_model->get_validation_rules());
        if($type == 'insert')
        {
             if($_FILES['photo']['name'] == null)
            {
                $this->form_validation->set_rules('photo','Photo', 'required');
            }
        }
        if ($this->form_validation->run() === false) {
            return false;
        }

        // Make sure we only pass in the fields we want
        
        $data = $this->photos_model->prep_data($this->input->post());

        // Additional handling for default values should be added below,
        // or in the model's prep_data() method
        
         unset($data['photo']);
        $return = false;
        if ($type == 'insert') {
            $id = $this->photos_model->insert($data);

            if (is_numeric($id)) {
                $images = do_upload($id);
                if(isset($images)){
                $this->photos_model->skip_validation(true);
                $this->photos_model->update($id, $images);
                }
                $return = $id;
            }
        } elseif ($type == 'update') {
            $return = $this->photos_model->update($id, $data);
             $images = do_upload($id);
            if(isset($images)){ $this->photos_model->update($id, $images);}
        }

        return $return;
    }
}