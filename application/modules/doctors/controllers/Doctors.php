<?php defined('BASEPATH') || exit('No direct script access allowed');

/**
 * Content controller
 */
class Doctors extends Front_Controller
{
    protected $permissionCreate = 'Doctors.Doctors.Create';
    protected $permissionDelete = 'Doctors.Doctors.Delete';
    protected $permissionEdit   = 'Doctors.Doctors.Edit';
    protected $permissionView   = 'Doctors.Doctors.View';

    /**
     * Constructor
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
        
        $this->load->model('doctors/doctors_model');
        $this->lang->load('doctors');
    }

    /**
     * Display a list of About data.
     *
     * @return void
     */
    public function index()
    {

        Template::set('doctors', $this->doctors_model->order_by('weight')->where(['status'=>0])->find_all());



        Template::render();
    }
    
    public function doctor($id)
    {
        Template::set('doctor', $this->doctors_model->order_by('weight')->where(['status'=>0])->find($id));
        Template::render();
    }
   
}