<?php defined('BASEPATH') || exit('No direct script access allowed');

/**
 * Content controller
 */
class Content extends Admin_Controller
{
    protected $permissionCreate = 'Meet_our_team.Content.Create';
    protected $permissionDelete = 'Meet_our_team.Content.Delete';
    protected $permissionEdit   = 'Meet_our_team.Content.Edit';
    protected $permissionView   = 'Meet_our_team.Content.View';

    /**
     * Constructor
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
        
        $this->auth->restrict($this->permissionView);
        $this->load->model('meet_our_team/meet_our_team_model');
        $this->lang->load('meet_our_team');
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
        
        Assets::add_module_js('meet_our_team', 'meet_our_team.js');
    }

    /**
     * Display a list of Meet Our Team data.
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
                    $deleted = $this->meet_our_team_model->delete($pid);
                    if ($deleted == false) {
                        $result = false;
                    }
                }
                if ($result) {
                    Template::set_message(count($checked) . ' ' . lang('meet_our_team_delete_success'), 'success');
                } else {
                    Template::set_message(lang('meet_our_team_delete_failure') . $this->meet_our_team_model->error, 'error');
                }
            }
        }
        $pagerUriSegment = 5;
        $pagerBaseUrl = site_url(SITE_AREA . '/content/meet_our_team/index') . '/';
        
        $limit  = $this->settings_lib->item('site.list_limit') ?: 15;

        $this->load->library('pagination');
        $pager['base_url']    = $pagerBaseUrl;
        $pager['total_rows']  = $this->meet_our_team_model->count_all();
        $pager['per_page']    = $limit;
        $pager['uri_segment'] = $pagerUriSegment;

        $this->pagination->initialize($pager);
        $this->meet_our_team_model->limit($limit, $offset);
        
        $records = $this->meet_our_team_model->find_all();

        Template::set('records', $records);
        
    Template::set('toolbar_title', lang('meet_our_team_manage'));

        Template::render();
    }
    
    /**
     * Create a Meet Our Team object.
     *
     * @return void
     */
    public function create()
    {
        $this->auth->restrict($this->permissionCreate);
        $this->edit();
        
    }
    /**
     * Allows editing of Meet Our Team data.
     *
     * @return void
     */
    public function edit()
    {
        $id = $this->uri->segment(5);
        Template::set('weight', $this->meet_our_team_model->count_all());
        if (empty($id)) {
            if (isset($_POST['save'])) {
            if ($insert_id = $this->save_meet_our_team()) {
                log_activity($this->auth->user_id(), lang('meet_our_team_act_create_record') . ': ' . $insert_id . ' : ' . $this->input->ip_address(), 'meet_our_team');
                Template::set_message(lang('meet_our_team_create_success'), 'success');

                redirect(SITE_AREA . '/content/meet_our_team');
            }

            // Not validation error
            if ( ! empty($this->meet_our_team_model->error)) {
                Template::set_message(lang('meet_our_team_create_failure') . $this->meet_our_team_model->error, 'error');
            }
        }

        Template::set('toolbar_title', lang('meet_our_team_action_create'));
        Template::set_view('edit');
        Template::render();
        }
        else
        {        
        if (isset($_POST['save'])) {
            $this->auth->restrict($this->permissionEdit);

            if ($this->save_meet_our_team('update', $id)) {
                log_activity($this->auth->user_id(), lang('meet_our_team_act_edit_record') . ': ' . $id . ' : ' . $this->input->ip_address(), 'meet_our_team');
                Template::set_message(lang('meet_our_team_edit_success'), 'success');
                redirect(SITE_AREA . '/content/meet_our_team');
            }

            // Not validation error
            if ( ! empty($this->meet_our_team_model->error)) {
                Template::set_message(lang('meet_our_team_edit_failure') . $this->meet_our_team_model->error, 'error');
            }
        }
        
        elseif (isset($_POST['delete'])) {
            $this->auth->restrict($this->permissionDelete);

            if ($this->meet_our_team_model->delete($id)) {
                log_activity($this->auth->user_id(), lang('meet_our_team_act_delete_record') . ': ' . $id . ' : ' . $this->input->ip_address(), 'meet_our_team');
                Template::set_message(lang('meet_our_team_delete_success'), 'success');

                redirect(SITE_AREA . '/content/meet_our_team');
            }

            Template::set_message(lang('meet_our_team_delete_failure') . $this->meet_our_team_model->error, 'error');
        }
        
        Template::set('meet_our_team', $this->meet_our_team_model->find($id));

        Template::set('toolbar_title', lang('meet_our_team_edit_heading'));
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
    private function save_meet_our_team($type = 'insert', $id = 0)
    {
        if ($type == 'update') {
            $_POST['id'] = $id;
        }

        // Validate the data
        $this->form_validation->set_rules($this->meet_our_team_model->get_validation_rules());
        if ($this->form_validation->run() === false) {
            return false;
        }

        // Make sure we only pass in the fields we want
        
        $data = $this->meet_our_team_model->prep_data($this->input->post());

        // Additional handling for default values should be added below,
        // or in the model's prep_data() method
        

        $return = false;
        if ($type == 'insert') {
            $id = $this->meet_our_team_model->insert($data);

            if (is_numeric($id)) {
                $return = $id;
            }
        } elseif ($type == 'update') {
            $return = $this->meet_our_team_model->update($id, $data);
        }

        return $return;
    }
}