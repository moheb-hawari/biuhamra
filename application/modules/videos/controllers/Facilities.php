<?php defined('BASEPATH') || exit('No direct script access allowed');

/**
 * Facilities controller
 */
class Facilities extends Admin_Controller
{
    protected $permissionCreate = 'Videos.Facilities.Create';
    protected $permissionDelete = 'Videos.Facilities.Delete';
    protected $permissionEdit   = 'Videos.Facilities.Edit';
    protected $permissionView   = 'Videos.Facilities.View';

    /**
     * Constructor
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
        
        $this->auth->restrict($this->permissionView);
        $this->load->model('videos/videos_model');
        $this->load->model('departments/departments_model');
        $this->lang->load('videos');
        $this->load->helper('upload_helper');
            $this->form_validation->set_error_delimiters("<span class='error'>", "</span>");
        
        Template::set_block('sub_nav', 'facilities/_sub_nav');

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
        
        Assets::add_module_js('videos', 'videos.js');
    }

    /**
     * Display a list of Videos data.
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
                    $deleted = $this->videos_model->delete($pid);
                    if ($deleted == false) {
                        $result = false;
                    }
                }
                if ($result) {
                    Template::set_message(count($checked) . ' ' . lang('videos_delete_success'), 'success');
                } else {
                    Template::set_message(lang('videos_delete_failure') . $this->videos_model->error, 'error');
                }
            }
        }
        $pagerUriSegment = 5;
        $pagerBaseUrl = site_url(SITE_AREA . '/facilities/videos/index') . '/';
        
        $limit  = $this->settings_lib->item('site.list_limit') ?: 15;

        $this->load->library('pagination');
        $pager['base_url']    = $pagerBaseUrl;
        $pager['total_rows']  = $this->videos_model->count_all();
        $pager['per_page']    = $limit;
        $pager['uri_segment'] = $pagerUriSegment;

        $this->pagination->initialize($pager);
        $this->videos_model->limit($limit, $offset);
        
        $fields = array(
            'videos.id',
            'videos.department',
            'videos.link',
            'videos.thumbnil',
            'videos.status',
            'departments.en_title',
            );
        $records = $this->videos_model->select($fields)
                ->join('departments','departments.id = videos.department')
                ->find_all();

        Template::set('records', $records);
        
    Template::set('toolbar_title', lang('videos_manage'));

        Template::render();
    }
    
    /**
     * Create a Videos object.
     *
     * @return void
     */
    public function create()
    {
        $this->auth->restrict($this->permissionCreate);
        $this->edit();
        
    }
    /**
     * Allows editing of Videos data.
     *
     * @return void
     */
    public function edit()
    {
        $id = $this->uri->segment(5);
        Template::set('departments', $this->departments_model->find_all());
        if (empty($id)) {
            if (isset($_POST['save'])) {
            if ($insert_id = $this->save_videos()) {
                log_activity($this->auth->user_id(), lang('videos_act_create_record') . ': ' . $insert_id . ' : ' . $this->input->ip_address(), 'videos');
                Template::set_message(lang('videos_create_success'), 'success');

                redirect(SITE_AREA . '/facilities/videos');
            }

            // Not validation error
            if ( ! empty($this->videos_model->error)) {
                Template::set_message(lang('videos_create_failure') . $this->videos_model->error, 'error');
            }
        }

        Template::set('toolbar_title', lang('videos_action_create'));
        Template::set_view('edit');
        Template::render();
        }
        else
        {        
        if (isset($_POST['save'])) {
            $this->auth->restrict($this->permissionEdit);

            if ($this->save_videos('update', $id)) {
                log_activity($this->auth->user_id(), lang('videos_act_edit_record') . ': ' . $id . ' : ' . $this->input->ip_address(), 'videos');
                Template::set_message(lang('videos_edit_success'), 'success');
                redirect(SITE_AREA . '/facilities/videos');
            }

            // Not validation error
            if ( ! empty($this->videos_model->error)) {
                Template::set_message(lang('videos_edit_failure') . $this->videos_model->error, 'error');
            }
        }
        
        elseif (isset($_POST['delete'])) {
            $this->auth->restrict($this->permissionDelete);

            if ($this->videos_model->delete($id)) {
                log_activity($this->auth->user_id(), lang('videos_act_delete_record') . ': ' . $id . ' : ' . $this->input->ip_address(), 'videos');
                Template::set_message(lang('videos_delete_success'), 'success');

                redirect(SITE_AREA . '/facilities/videos');
            }

            Template::set_message(lang('videos_delete_failure') . $this->videos_model->error, 'error');
        }
        
        Template::set('videos', $this->videos_model->find($id));

        Template::set('toolbar_title', lang('videos_edit_heading'));
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
    private function save_videos($type = 'insert', $id = 0)
    {
        if ($type == 'update') {
            $_POST['id'] = $id;
        }

        // Validate the data
        $this->form_validation->set_rules($this->videos_model->get_validation_rules());
        if($type == 'insert')
        {
            if($_FILES['thumbnil']['name'] == null)
            {
                $this->form_validation->set_rules('thumbnil','Thumbnil', 'required');
            }
        }
        if ($this->form_validation->run() === false) {
            return false;
        }

        // Make sure we only pass in the fields we want
        
        $data = $this->videos_model->prep_data($this->input->post());

        // Additional handling for default values should be added below,
        // or in the model's prep_data() method

        unset($data['thumbnil']);    
        $return = false;
        if ($type == 'insert') {
            $id = $this->videos_model->insert($data);

            if (is_numeric($id)) {
                $images = do_upload($id);
                if(isset($images)){
                $this->videos_model->skip_validation(true);
                $this->videos_model->update($id, $images);
                }
                $return = $id;
            }
        } elseif ($type == 'update') {
            $return = $this->videos_model->update($id, $data);
            $images = do_upload($id);
            if(isset($images)){ $this->videos_model->update($id, $images);}
        }

        return $return;
    }
    
}