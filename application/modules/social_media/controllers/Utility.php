<?php defined('BASEPATH') || exit('No direct script access allowed');

/**
 * Utility controller
 */
class Utility extends Admin_Controller
{
    protected $permissionCreate = 'Social_media.Utility.Create';
    protected $permissionDelete = 'Social_media.Utility.Delete';
    protected $permissionEdit   = 'Social_media.Utility.Edit';
    protected $permissionView   = 'Social_media.Utility.View';

    /**
     * Constructor
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
        
        $this->auth->restrict($this->permissionView);
        $this->load->model('social_media/social_media_model');
        $this->lang->load('social_media');
        $this->load->helper('upload_helper');
            $this->form_validation->set_error_delimiters("<span class='error'>", "</span>");
        
        Template::set_block('sub_nav', 'utility/_sub_nav');

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
        
        Assets::add_module_js('social_media', 'social_media.js');
    }

    /**
     * Display a list of Social Media data.
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
                    $deleted = $this->social_media_model->delete($pid);
                    if ($deleted == false) {
                        $result = false;
                    }
                }
                if ($result) {
                    Template::set_message(count($checked) . ' ' . lang('social_media_delete_success'), 'success');
                } else {
                    Template::set_message(lang('social_media_delete_failure') . $this->social_media_model->error, 'error');
                }
            }
        }
        $pagerUriSegment = 5;
        $pagerBaseUrl = site_url(SITE_AREA . '/utility/social_media/index') . '/';
        
        $limit  = $this->settings_lib->item('site.list_limit') ?: 15;

        $this->load->library('pagination');
        $pager['base_url']    = $pagerBaseUrl;
        $pager['total_rows']  = $this->social_media_model->count_all();
        $pager['per_page']    = $limit;
        $pager['uri_segment'] = $pagerUriSegment;

        $this->pagination->initialize($pager);
        $this->social_media_model->limit($limit, $offset);
        
        $records = $this->social_media_model->find_all();

        Template::set('records', $records);
        
    Template::set('toolbar_title', lang('social_media_manage'));

        Template::render();
    }
    
    /**
     * Create a Social Media object.
     *
     * @return void
     */
    public function create()
    {
        $this->auth->restrict($this->permissionCreate);
        $this->edit();
        
    }
    /**
     * Allows editing of Social Media data.
     *
     * @return void
     */
    public function edit()
    {
        $id = $this->uri->segment(5);
        Template::set('weight', $this->social_media_model->count_all());
        if (empty($id)) {
            if (isset($_POST['save'])) {
            if ($insert_id = $this->save_social_media()) {
                log_activity($this->auth->user_id(), lang('social_media_act_create_record') . ': ' . $insert_id . ' : ' . $this->input->ip_address(), 'social_media');
                Template::set_message(lang('social_media_create_success'), 'success');

                redirect(SITE_AREA . '/utility/social_media');
            }

            // Not validation error
            if ( ! empty($this->social_media_model->error)) {
                Template::set_message(lang('social_media_create_failure') . $this->social_media_model->error, 'error');
            }
        }

        Template::set('toolbar_title', lang('social_media_action_create'));
        Template::set_view('edit');
        Template::render();
        }
        else
        {        
        if (isset($_POST['save'])) {
            $this->auth->restrict($this->permissionEdit);

            if ($this->save_social_media('update', $id)) {
                log_activity($this->auth->user_id(), lang('social_media_act_edit_record') . ': ' . $id . ' : ' . $this->input->ip_address(), 'social_media');
                Template::set_message(lang('social_media_edit_success'), 'success');
                redirect(SITE_AREA . '/utility/social_media');
            }

            // Not validation error
            if ( ! empty($this->social_media_model->error)) {
                Template::set_message(lang('social_media_edit_failure') . $this->social_media_model->error, 'error');
            }
        }
        
        elseif (isset($_POST['delete'])) {
            $this->auth->restrict($this->permissionDelete);

            if ($this->social_media_model->delete($id)) {
                log_activity($this->auth->user_id(), lang('social_media_act_delete_record') . ': ' . $id . ' : ' . $this->input->ip_address(), 'social_media');
                Template::set_message(lang('social_media_delete_success'), 'success');

                redirect(SITE_AREA . '/utility/social_media');
            }

            Template::set_message(lang('social_media_delete_failure') . $this->social_media_model->error, 'error');
        }
        
        Template::set('social_media', $this->social_media_model->find($id));

        Template::set('toolbar_title', lang('social_media_edit_heading'));
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
    private function save_social_media($type = 'insert', $id = 0)
    {
        if ($type == 'update') {
            $_POST['id'] = $id;
        }

        // Validate the data
        $this->form_validation->set_rules($this->social_media_model->get_validation_rules());
        if ($this->form_validation->run() === false) {
            return false;
        }

        // Make sure we only pass in the fields we want
        
        $data = $this->social_media_model->prep_data($this->input->post());

        // Additional handling for default values should be added below,
        // or in the model's prep_data() method
        

        $return = false;
        if ($type == 'insert') {
            $id = $this->social_media_model->insert($data);

            if (is_numeric($id)) {
                $return = $id;
            }
        } elseif ($type == 'update') {
            $return = $this->social_media_model->update($id, $data);
        }

        return $return;
    }
}