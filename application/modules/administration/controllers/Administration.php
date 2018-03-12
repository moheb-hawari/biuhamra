<?php defined('BASEPATH') || exit('No direct script access allowed');

/**
 * Humanresources controller
 */
class Administration extends Front_Controller
{
    protected $permissionCreate = 'Administration.Administration.Create';
    protected $permissionDelete = 'Administration.Administration.Delete';
    protected $permissionEdit   = 'Administration.Administration.Edit';
    protected $permissionView   = 'Administration.Administration.View';

    /**
     * Constructor
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
        
        $this->load->model('doctors/doctors_model');
        $this->lang->load('doctors/doctors');
        $this->lang->load('administration');
            
    }

    /**
     * Display a list of Administration data.
     *
     * @return void
     */
    public function index()
    {
        Template::set('doctors', $this->doctors_model->order_by('weight')->where(['type'=>1])->find_all());

        Template::render();
    }
    
}