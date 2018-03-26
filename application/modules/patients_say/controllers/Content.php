<?php defined('BASEPATH') || exit('No direct script access allowed');

/**
 * Content controller
 */
class Content extends Admin_Controller
{
    protected $permissionCreate = 'Patients_say.Content.Create';
    protected $permissionDelete = 'Patients_say.Content.Delete';
    protected $permissionEdit   = 'Patients_say.Content.Edit';
    protected $permissionView   = 'Patients_say.Content.View';

    /**
     * Constructor
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
        
        $this->auth->restrict($this->permissionView);
        $this->load->model('patients_say/patients_say_model');
        $this->lang->load('patients_say');
        $this->load->helper('upload_helper');
            $this->form_validation->set_error_delimiters("<span class='error'>", "</span>");
        
        Template::set_block('sub_nav', 'content/_sub_nav');

        Assets::add_css(assets_path() . 'globals/css/elements.css');
        Assets::add_css( assets_path().'globals/plugins/datatables/themes/bootstrap/dataTables.bootstrap.css');
        Assets::add_css( assets_path().'globals/plugins/datatables/media/css/jquery.dataTables.min.css');
        Assets::add_css( assets_path().'globals/plugins/components-summernote/dist/summernote.css');
        Assets::add_css( assets_path().'globals/plugins/jasny-bootstrap/dist/css/jasny-bootstrap.min.css');
        
        Assets::add_js( assets_path().'globals/plugins/datatables/media/js/jquery.dataTables.min.js');
        Assets::add_js(assets_path().'globals/plugins/datatables/themes/bootstrap/dataTables.bootstrap.js');
        Assets::add_js(assets_path().'globals/plugins/components-summernote/dist/summernote.js');
        Assets::add_js(assets_path().'globals/scripts/tables-datatables.js');
        
        Assets::add_module_js('patients_say', 'patients_say.js');
    }

    /**
     * Display a list of Patients Say data.
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
                    $deleted = $this->patients_say_model->delete($pid);
                    if ($deleted == false) {
                        $result = false;
                    }
                }
                if ($result) {
                    Template::set_message(count($checked) . ' ' . lang('patients_say_delete_success'), 'success');
                } else {
                    Template::set_message(lang('patients_say_delete_failure') . $this->patients_say_model->error, 'error');
                }
            }
        }
        $pagerUriSegment = 5;
        $pagerBaseUrl = site_url(SITE_AREA . '/content/patients_say/index') . '/';
        
        $limit  = $this->settings_lib->item('site.list_limit') ?: 15;

        $this->load->library('pagination');
        $pager['base_url']    = $pagerBaseUrl;
        $pager['total_rows']  = $this->patients_say_model->count_all();
        $pager['per_page']    = $limit;
        $pager['uri_segment'] = $pagerUriSegment;

        $this->pagination->initialize($pager);
        $this->patients_say_model->limit($limit, $offset);
        
        $records = $this->patients_say_model->find_all();

        Template::set('records', $records);
        
    Template::set('toolbar_title', lang('patients_say_manage'));

        Template::render();
    }
    
    /**
     * Create a Patients Say object.
     *
     * @return void
     */
    public function create()
    {
        $this->auth->restrict($this->permissionCreate);
        $this->edit();
        
    }
    /**
     * Allows editing of Patients Say data.
     *
     * @return void
     */
    public function edit()
    {
        $id = $this->uri->segment(5);
        Template::set('weight', $this->patients_say_model->count_all());
        if (empty($id)) {
            if (isset($_POST['save'])) {
            if ($insert_id = $this->save_patients_say()) {
                log_activity($this->auth->user_id(), lang('patients_say_act_create_record') . ': ' . $insert_id . ' : ' . $this->input->ip_address(), 'patients_say');
                Template::set_message(lang('patients_say_create_success'), 'success');

                redirect(SITE_AREA . '/content/patients_say');
            }

            // Not validation error
            if ( ! empty($this->patients_say_model->error)) {
                Template::set_message(lang('patients_say_create_failure') . $this->patients_say_model->error, 'error');
            }
        }

        Template::set('toolbar_title', lang('patients_say_action_create'));
        Template::set_view('edit');
        Template::render();
        }
        else
        {
        if (isset($_POST['save'])) {
            $this->auth->restrict($this->permissionEdit);

            if ($this->save_patients_say('update', $id)) {
                log_activity($this->auth->user_id(), lang('patients_say_act_edit_record') . ': ' . $id . ' : ' . $this->input->ip_address(), 'patients_say');
                Template::set_message(lang('patients_say_edit_success'), 'success');
                redirect(SITE_AREA . '/content/patients_say');
            }

            // Not validation error
            if ( ! empty($this->patients_say_model->error)) {
                Template::set_message(lang('patients_say_edit_failure') . $this->patients_say_model->error, 'error');
            }
        }
        
        elseif (isset($_POST['delete'])) {
            $this->auth->restrict($this->permissionDelete);

            if ($this->patients_say_model->delete($id)) {
                log_activity($this->auth->user_id(), lang('patients_say_act_delete_record') . ': ' . $id . ' : ' . $this->input->ip_address(), 'patients_say');
                Template::set_message(lang('patients_say_delete_success'), 'success');

                redirect(SITE_AREA . '/content/patients_say');
            }

            Template::set_message(lang('patients_say_delete_failure') . $this->patients_say_model->error, 'error');
        }
        
        Template::set('patients_say', $this->patients_say_model->find($id));

        Template::set('toolbar_title', lang('patients_say_edit_heading'));
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
    private function save_patients_say($type = 'insert', $id = 0)
    {
        if ($type == 'update') {
            $_POST['id'] = $id;
        }

        // Validate the data
        $this->form_validation->set_rules($this->patients_say_model->get_validation_rules());
        if ($this->form_validation->run() === false) {
            return false;
        }

        // Make sure we only pass in the fields we want
        
        $data = $this->patients_say_model->prep_data($this->input->post());

        // Additional handling for default values should be added below,
        // or in the model's prep_data() method
        

        $return = false;
        if ($type == 'insert') {
            $id = $this->patients_say_model->insert($data);

            if (is_numeric($id)) {
                $return = $id;
            }
        } elseif ($type == 'update') {
            $return = $this->patients_say_model->update($id, $data);
        }

        return $return;
    }
}