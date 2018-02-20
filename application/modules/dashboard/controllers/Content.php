<?php defined('BASEPATH') || exit('No direct script access allowed');

/**
 * Content controller
 */
class Content extends Admin_Controller
{
    protected $permissionCreate = 'Dashboard.Content.Create';
    protected $permissionDelete = 'Dashboard.Content.Delete';
    protected $permissionEdit   = 'Dashboard.Content.Edit';
    protected $permissionView   = 'Dashboard.Content.View';

    /**
     * Constructor
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
        
        $this->auth->restrict($this->permissionView);
        $this->lang->load('dashboard');
        $this->load->model('users/user_model');
        $this->load->model('departments/departments_model');
        $this->load->model('doctors/doctors_model');
        $this->load->model('patients_say/patients_say_model');
        
            $this->form_validation->set_error_delimiters("<span class='error'>", "</span>");
        
        Template::set_block('sub_nav', 'content/_sub_nav');
        Assets::add_css(assets_path() . 'globals/css/elements.css');
        Assets::add_css(assets_path() . 'globals/plugins/rickshaw/rickshaw.min.css');
        Assets::add_css(assets_path() . 'globals/plugins/bxslider/jquery.bxslider.css');
        
        Assets::add_js('https://www.gstatic.com/charts/loader.js');
        
        Assets::add_module_js('dashboard', 'dashboard.js');
    }

    /**
     * Display a list of Dashboard data.
     *
     * @return void
     */
    public function index()
    {
        
        Template::set('departments_count', $this->departments_model->count_all());
        Template::set('doctor_count', $this->doctors_model->count_all());
        Template::set('patients_say_count', $this->patients_say_model->count_all());
        
        Template::set('departments', $this->departments_model->limit(5)->find_all());
        Template::set('doctor', $this->doctors_model->limit(5)->find_all());
        Template::set('patients_say', $this->patients_say_model->limit(5)->find_all());


        Template::render();
    }
    
    /**
     * Create a Dashboard object.
     *
     * @return void
     */
    public function create()
    {
        $this->auth->restrict($this->permissionCreate);
        

        Template::set('toolbar_title', lang('dashboard_action_create'));

        Template::render();
    }  /**
     * Allows editing of Dashboard data.
     *
     * @return void
     */
    public function edit()
    {
        $id = $this->uri->segment(5);
        if (empty($id)) {
            Template::set_message(lang('dashboard_invalid_id'), 'error');

            redirect(SITE_AREA . '/content/dashboard');
        }
        
        
        

        Template::set('toolbar_title', lang('dashboard_edit_heading'));
        Template::render();
    }
    
    function display_patient_chart_by_year($month,$status)
    {
        Template::set('report_by_year',$this->patients_model->get_column_statistics($status,$month));
    }
    
   
}