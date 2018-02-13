<?php defined('BASEPATH') || exit('No direct script access allowed');

/**
 * Humanresources controller
 */
class Humanresources extends Admin_Controller
{
    protected $permissionCreate = 'Careers.Humanresources.Create';
    protected $permissionDelete = 'Careers.Humanresources.Delete';
    protected $permissionEdit   = 'Careers.Humanresources.Edit';
    protected $permissionView   = 'Careers.Humanresources.View';

    /**
     * Constructor
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
        
        $this->auth->restrict($this->permissionView);
        $this->load->model('careers/careers_model');
        $this->lang->load('careers');
        $this->load->helper('upload_helper');
            $this->form_validation->set_error_delimiters("<span class='error'>", "</span>");
        
        Template::set_block('sub_nav', 'humanresources/_sub_nav');

        Assets::add_css(assets_path() . 'globals/css/elements.css');
        Assets::add_css( assets_path().'globals/plugins/datatables/themes/bootstrap/dataTables.bootstrap.css');
        Assets::add_css( assets_path().'globals/plugins/datatables/media/css/jquery.dataTables.min.css');
        Assets::add_css( assets_path().'globals/plugins/components-summernote/dist/summernote.css');
        Assets::add_css( assets_path().'globals/plugins/jasny-bootstrap/dist/css/jasny-bootstrap.min.css');   
        
        Assets::add_js(assets_path().'globals/plugins/components-summernote/dist/summernote.min.js');
        Assets::add_js( assets_path().'globals/plugins/datatables/media/js/jquery.dataTables.min.js');
        Assets::add_js(assets_path().'globals/plugins/datatables/themes/bootstrap/dataTables.bootstrap.js');
        Assets::add_js(assets_path().'globals/plugins/jasny-bootstrap/dist/js/jasny-bootstrap.min.js');
        Assets::add_js(assets_path().'globals/scripts/tables-datatables.js');
        
        Assets::add_module_js('careers', 'careers.js');
    }

    /**
     * Display a list of Careers data.
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
                    $deleted = $this->careers_model->delete($pid);
                    if ($deleted == false) {
                        $result = false;
                    }
                }
                if ($result) {
                    Template::set_message(count($checked) . ' ' . lang('careers_delete_success'), 'success');
                } else {
                    Template::set_message(lang('careers_delete_failure') . $this->careers_model->error, 'error');
                }
            }
        }
        $pagerUriSegment = 5;
        $pagerBaseUrl = site_url(SITE_AREA . '/humanresources/careers/index') . '/';
        
        $limit  = $this->settings_lib->item('site.list_limit') ?: 15;

        $this->load->library('pagination');
        $pager['base_url']    = $pagerBaseUrl;
        $pager['total_rows']  = $this->careers_model->count_all();
        $pager['per_page']    = $limit;
        $pager['uri_segment'] = $pagerUriSegment;

        $this->pagination->initialize($pager);
        $this->careers_model->limit($limit, $offset);
        
        $records = $this->careers_model->find_all();

        Template::set('records', $records);
        
    Template::set('toolbar_title', lang('careers_manage'));

        Template::render();
    }
    
    /**
     * Create a Careers object.
     *
     * @return void
     */
    public function create()
    {
        $this->auth->restrict($this->permissionCreate);
        $this->edit();
        
    }
    /**
     * Allows editing of Careers data.
     *
     * @return void
     */
    public function edit()
    {
        $id = $this->uri->segment(5);
        Template::set('weight', $this->careers_model->count_all());
        if (empty($id)) {
            if (isset($_POST['save'])) {
            if ($insert_id = $this->save_careers()) {
                log_activity($this->auth->user_id(), lang('careers_act_create_record') . ': ' . $insert_id . ' : ' . $this->input->ip_address(), 'careers');
                Template::set_message(lang('careers_create_success'), 'success');

                redirect(SITE_AREA . '/humanresources/careers');
            }

            // Not validation error
            if ( ! empty($this->careers_model->error)) {
                Template::set_message(lang('careers_create_failure') . $this->careers_model->error, 'error');
            }
        }

        Template::set('toolbar_title', lang('careers_action_create'));
        Template::set_view('edit');
        Template::render();
        }
        else
        {
        if (isset($_POST['save'])) {
            $this->auth->restrict($this->permissionEdit);

            if ($this->save_careers('update', $id)) {
                log_activity($this->auth->user_id(), lang('careers_act_edit_record') . ': ' . $id . ' : ' . $this->input->ip_address(), 'careers');
                Template::set_message(lang('careers_edit_success'), 'success');
                redirect(SITE_AREA . '/humanresources/careers');
            }

            // Not validation error
            if ( ! empty($this->careers_model->error)) {
                Template::set_message(lang('careers_edit_failure') . $this->careers_model->error, 'error');
            }
        }
        
        elseif (isset($_POST['delete'])) {
            $this->auth->restrict($this->permissionDelete);

            if ($this->careers_model->delete($id)) {
                log_activity($this->auth->user_id(), lang('careers_act_delete_record') . ': ' . $id . ' : ' . $this->input->ip_address(), 'careers');
                Template::set_message(lang('careers_delete_success'), 'success');

                redirect(SITE_AREA . '/humanresources/careers');
            }

            Template::set_message(lang('careers_delete_failure') . $this->careers_model->error, 'error');
        }
        
        Template::set('careers', $this->careers_model->find($id));

        Template::set('toolbar_title', lang('careers_edit_heading'));
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
    private function save_careers($type = 'insert', $id = 0)
    {
        if ($type == 'update') {
            $_POST['id'] = $id;
        }

        // Validate the data
        $this->form_validation->set_rules($this->careers_model->get_validation_rules());
        if ($this->form_validation->run() === false) {
            return false;
        }

        // Make sure we only pass in the fields we want
        
        $data = $this->careers_model->prep_data($this->input->post());

        // Additional handling for default values should be added below,
        // or in the model's prep_data() method
        

        $return = false;
        if ($type == 'insert') {
            $id = $this->careers_model->insert($data);

            if (is_numeric($id)) {
                $return = $id;
            }
        } elseif ($type == 'update') {
            $return = $this->careers_model->update($id, $data);
        }

        return $return;
    }
}