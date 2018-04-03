<?php defined('BASEPATH') || exit('No direct script access allowed');

/**
 * Utility controller
 */
class Utility extends Admin_Controller
{
    protected $permissionCreate = 'About_us.Utility.Create';
    protected $permissionDelete = 'About_us.Utility.Delete';
    protected $permissionEdit   = 'About_us.Utility.Edit';
    protected $permissionView   = 'About_us.Utility.View';

    /**
     * Constructor
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
        
        $this->auth->restrict($this->permissionView);
        $this->load->model('about_us/about_us_model');
        $this->lang->load('about_us');
        
            $this->form_validation->set_error_delimiters("<span class='error'>", "</span>");
        
        Template::set_block('sub_nav', 'utility/_sub_nav');

        Assets::add_css(assets_path() . 'globals/css/elements.css');
        Assets::add_css( assets_path().'globals/plugins/datatables/themes/bootstrap/dataTables.bootstrap.css');
        Assets::add_css( assets_path().'globals/plugins/datatables/media/css/jquery.dataTables.min.css');
        Assets::add_css( assets_path().'globals/plugins/jasny-bootstrap/dist/css/jasny-bootstrap.min.css');
        Assets::add_css( assets_path().'globals/plugins/components-summernote/dist/summernote.css');

        
        Assets::add_js( assets_path().'globals/plugins/datatables/media/js/jquery.dataTables.min.js');
        Assets::add_js(assets_path().'globals/plugins/datatables/themes/bootstrap/dataTables.bootstrap.js');
        Assets::add_js(assets_path().'globals/scripts/tables-datatables.js');
        Assets::add_js(assets_path().'globals/plugins/jasny-bootstrap/dist/js/jasny-bootstrap.min.js');
        Assets::add_js(assets_path().'globals/plugins/components-summernote/dist/summernote.js');
        
        Assets::add_module_js('about_us', 'about_us.js');
    }

    /**
     * Display a list of About Us data.
     *
     * @return void
     */
    public function index()
    {
        redirect(SITE_AREA . '/utility/about_us/edit');
    }
    
    /**
     * Create a About Us object.
     *
     * @return void
     */
    public function create()
    {
        $this->auth->restrict($this->permissionCreate);
        $this->edit();
    }
    /**
     * Allows editing of About Us data.
     *
     * @return void
     */
    public function edit()
    {
        $id = 1;
        
        if (isset($_POST['save'])) {
            $this->auth->restrict($this->permissionEdit);

            if ($this->save_about_us('update', $id)) {
                log_activity($this->auth->user_id(), lang('about_us_act_edit_record') . ': ' . $id . ' : ' . $this->input->ip_address(), 'about_us');
                Template::set_message(lang('about_us_edit_success'), 'success');
                redirect(SITE_AREA . '/utility/about_us');
            }

            // Not validation error
            if ( ! empty($this->about_us_model->error)) {
                Template::set_message(lang('about_us_edit_failure') . $this->about_us_model->error, 'error');
            }
        }
        
        Template::set('about_us', $this->about_us_model->find($id));

        Template::set('toolbar_title', lang('about_us_edit_heading'));
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
    private function save_about_us($type = 'insert', $id = 0)
    {
        if ($type == 'update') {
            $_POST['id'] = $id;
        }

        // Validate the data
        $this->form_validation->set_rules($this->about_us_model->get_validation_rules());
        if ($this->form_validation->run() === false) {
            return false;
        }

        // Make sure we only pass in the fields we want
        
        $data = $this->about_us_model->prep_data($this->input->post());

        // Additional handling for default values should be added below,
        // or in the model's prep_data() method
        

        $return = false;
        if ($type == 'insert') {
            $id = $this->about_us_model->insert($data);

            if (is_numeric($id)) {
                $return = $id;
            }
        } elseif ($type == 'update') {
            $return = $this->about_us_model->update($id, $data);
        }

        return $return;
    }
}