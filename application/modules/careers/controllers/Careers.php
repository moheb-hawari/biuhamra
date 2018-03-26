<?php defined('BASEPATH') || exit('No direct script access allowed');

/**
 * Humanresources controller
 */
class Careers extends Front_Controller
{
    protected $permissionCreate = 'Careers.Careers.Create';
    protected $permissionDelete = 'Careers.Careers.Delete';
    protected $permissionEdit   = 'Careers.Careers.Edit';
    protected $permissionView   = 'Careers.Careers.View';

    /**
     * Constructor
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
        
        $this->load->model('careers/careers_model');
        $this->lang->load('careers');
        
    }

    /**
     * Display a list of Careers data.
     *
     * @return void
     */
    public function index()
    {
        
        Template::set('careers', $this->careers_model->order_by('weight')->where(['status'=>0])->find_all());
        Template::render();
    }
    
      
}