<?php defined('BASEPATH') || exit('No direct script access allowed');

/**
 * Content controller
 */
class Departments extends Front_Controller
{
    protected $permissionCreate = 'Departments.Departments.Create';
    protected $permissionDelete = 'Departments.Departments.Delete';
    protected $permissionEdit   = 'Departments.Departments.Edit';
    protected $permissionView   = 'Departments.Departments.View';

    /**
     * Constructor
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
        
        $this->load->model('departments/departments_model');
        $this->lang->load('departments');
    }

    /**
     * Display a list of About data.
     *
     * @return void
     */
    public function index($id)
    {
        Template::set('department', $this->departments_model->order_by('weight')->where(['status'=>0])->find($id));

        Template::render();
    }
    
   
}