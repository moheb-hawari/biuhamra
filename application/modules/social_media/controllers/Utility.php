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
        $this->form_validation->set_error_delimiters("<span class='error'>", "</span>");
        
        Template::set_block('sub_nav', 'utility/_sub_nav');

        Assets::add_css(assets_path() . 'globals/css/elements.css');
        
        
        Assets::add_module_js('social_media', 'social_media.js');
    }

    public function index()
    {
        redirect(SITE_AREA . '/utility/social_media/edit');
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
        $id = 1;
        
        if (isset($_POST['save'])) {
            $this->auth->restrict($this->permissionEdit);

            if ($this->save_social_media('update', $id)) {
                log_activity($this->auth->user_id(), lang('social_media_act_edit_record') . ': ' . $id . ' : ' . $this->input->ip_address(), 'social_media');
                Template::set_message(lang('social_media_edit_success'), 'success');
            }

            // Not validation error
            if ( ! empty($this->social_media_model->error)) {
                Template::set_message(lang('social_media_edit_failure') . $this->social_media_model->error, 'error');
            }
        }
        
        
        
        Template::set('social_media', $this->social_media_model->find($id));

        Template::set('toolbar_title', lang('social_media_edit_heading'));
        Template::render();
        
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