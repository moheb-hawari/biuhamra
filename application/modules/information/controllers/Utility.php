<?php defined('BASEPATH') || exit('No direct script access allowed');

/**
 * Utility controller
 */
class Utility extends Admin_Controller
{
    protected $permissionCreate = 'Information.Utility.Create';
    protected $permissionDelete = 'Information.Utility.Delete';
    protected $permissionEdit   = 'Information.Utility.Edit';
    protected $permissionView   = 'Information.Utility.View';

    /**
     * Constructor
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
        
        $this->auth->restrict($this->permissionView);
        $this->load->model('information/information_model');
        $this->lang->load('information');
        $this->load->helper('upload_helper');
            $this->form_validation->set_error_delimiters("<span class='error'>", "</span>");
        
        Template::set_block('sub_nav', 'utility/_sub_nav');

        Assets::add_css(assets_path() . 'globals/css/elements.css');
        Assets::add_css( assets_path().'globals/plugins/datatables/themes/bootstrap/dataTables.bootstrap.css');
        Assets::add_css( assets_path().'globals/plugins/datatables/media/css/jquery.dataTables.min.css');
        Assets::add_css( assets_path().'globals/plugins/components-summernote/dist/summernote.css');
        Assets::add_js(assets_path().'globals/plugins/components-summernote/dist/summernote.min.js');
        Assets::add_js( assets_path().'globals/plugins/datatables/media/js/jquery.dataTables.min.js');
        Assets::add_js(assets_path().'globals/plugins/datatables/themes/bootstrap/dataTables.bootstrap.js');
        Assets::add_js(assets_path().'globals/scripts/tables-datatables.js');
        
        Assets::add_module_js('information', 'information.js');
    }

    /**
     * Display a list of Information data.
     *
     * @return void
     */
    public function index()
    {
        redirect(SITE_AREA . '/utility/information/edit');
    }
    
    /**
     * Create a Information object.
     *
     * @return void
     */
    public function create()
    {
        $this->auth->restrict($this->permissionCreate);
        $this->edit();
       
    }
    /**
     * Allows editing of Information data.
     *
     * @return void
     */
    public function edit()
    {
        $id = 1;
        
        if (isset($_POST['save'])) {
            $this->auth->restrict($this->permissionEdit);

            if ($this->save_information('update', $id)) {
                log_activity($this->auth->user_id(), lang('information_act_edit_record') . ': ' . $id . ' : ' . $this->input->ip_address(), 'information');
                Template::set_message(lang('information_edit_success'), 'success');
            }

            // Not validation error
            if ( ! empty($this->information_model->error)) {
                Template::set_message(lang('information_edit_failure') . $this->information_model->error, 'error');
            }
        }
        
        
        Template::set('information', $this->information_model->find($id));

        Template::set('toolbar_title', lang('information_edit_heading'));
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
    private function save_information($type = 'insert', $id = 0)
    {
        if ($type == 'update') {
            $_POST['id'] = $id;
        }

        // Validate the data
        $this->form_validation->set_rules($this->information_model->get_validation_rules());
        if ($this->form_validation->run() === false) {
            return false;
        }

        // Make sure we only pass in the fields we want
        
        $data = $this->information_model->prep_data($this->input->post());

        // Additional handling for default values should be added below,
        // or in the model's prep_data() method
        

        $return = false;
        if ($type == 'insert') {
            $id = $this->information_model->insert($data);

            if (is_numeric($id)) {
                $return = $id;
            }
        } elseif ($type == 'update') {
            $return = $this->information_model->update($id, $data);
        }

        return $return;
    }
}