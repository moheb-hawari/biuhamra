<?php defined('BASEPATH') || exit('No direct script access allowed');

/**
 * Dashboard controller
 */
class Dashboard extends Front_Controller
{
    protected $permissionCreate = 'Dashboard.Dashboard.Create';
    protected $permissionDelete = 'Dashboard.Dashboard.Delete';
    protected $permissionEdit   = 'Dashboard.Dashboard.Edit';
    protected $permissionView   = 'Dashboard.Dashboard.View';

    /**
     * Constructor
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
        
        $this->lang->load('dashboard');
        
        

        Assets::add_module_js('dashboard', 'dashboard.js');
    }

    /**
     * Display a list of Dashboard data.
     *
     * @return void
     */
    public function index()
    {
        
        
        
        
        

        Template::render();
    }
    
}