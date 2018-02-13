<?php defined('BASEPATH') || exit('No direct script access allowed');

/**
 * Humanresources controller
 */
class Humanresources extends Admin_Controller
{
    protected $permissionCreate = 'Administration.Humanresources.Create';
    protected $permissionDelete = 'Administration.Humanresources.Delete';
    protected $permissionEdit   = 'Administration.Humanresources.Edit';
    protected $permissionView   = 'Administration.Humanresources.View';

    /**
     * Constructor
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
        
        $this->auth->restrict($this->permissionView);
        $this->load->model('doctors/doctors_model');
        $this->lang->load('doctors/doctors');
        $this->lang->load('administration');
            $this->form_validation->set_error_delimiters("<span class='error'>", "</span>");
        
        Template::set_block('sub_nav', 'humanresources/_sub_nav');

        Assets::add_css(assets_path() . 'globals/css/elements.css');
        Assets::add_css( assets_path().'globals/plugins/datatables/themes/bootstrap/dataTables.bootstrap.css');
        Assets::add_css( assets_path().'globals/plugins/datatables/media/css/jquery.dataTables.min.css');
        Assets::add_css( assets_path().'globals/plugins/jasny-bootstrap/dist/css/jasny-bootstrap.min.css');
        Assets::add_css( assets_path().'globals/plugins/components-summernote/dist/summernote.css');
        
        Assets::add_js(assets_path().'globals/plugins/components-summernote/dist/summernote.min.js');
        Assets::add_js( assets_path().'globals/plugins/datatables/media/js/jquery.dataTables.min.js');
        Assets::add_js(assets_path().'globals/plugins/datatables/themes/bootstrap/dataTables.bootstrap.js');
        Assets::add_js(assets_path().'globals/plugins/jasny-bootstrap/dist/js/jasny-bootstrap.min.js');
        Assets::add_js(assets_path().'globals/scripts/tables-datatables.js');
        
        Assets::add_module_js('administration', 'administration.js');
    }

    /**
     * Display a list of Administration data.
     *
     * @return void
     */
    public function index($offset = 0)
    {
        $pagerUriSegment = 5;
        $pagerBaseUrl = site_url(SITE_AREA . '/content/doctors/index') . '/';
        
        $limit  = $this->settings_lib->item('site.list_limit') ?: 15;
        $where = ['type'=>1];
        $this->load->library('pagination');
        $pager['base_url']    = $pagerBaseUrl;
        $pager['total_rows']  = $this->doctors_model->where($where)->count_all();
        $pager['per_page']    = $limit;
        $pager['uri_segment'] = $pagerUriSegment;

        $this->pagination->initialize($pager);
        $this->doctors_model->limit($limit, $offset);
        
        $records = $this->doctors_model->where($where)->find_all();

        Template::set('records', $records);
        
    Template::set('toolbar_title', lang('doctors_manage'));

        Template::render();
        
        
    Template::set('toolbar_title', lang('administration_manage'));

        Template::render();
    }
    
}