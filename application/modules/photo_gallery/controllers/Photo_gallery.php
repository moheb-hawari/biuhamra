<?php defined('BASEPATH') || exit('No direct script access allowed');

/**
 * Facilities controller
 */
class Photo_gallery extends Front_Controller
{
    protected $permissionCreate = 'Photo_gallery.Photo_gallery.Create';
    protected $permissionDelete = 'Photo_gallery.Photo_gallery.Delete';
    protected $permissionEdit   = 'Photo_gallery.Photo_gallery.Edit';
    protected $permissionView   = 'Photo_gallery.Photo_gallery.View';

    /**
     * Constructor
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
        
        
        $this->load->model('photo_gallery/photo_gallery_model');
        $this->load->model('videos/videos_model');
        $this->lang->load('photo_gallery');
        
    }

    /**
     * Display a list of Photo Gallery data.
     *
     * @return void
     */
    public function index()
    {
        Template::set('photo_gallery', $this->photo_gallery_model->order_by('weight')->where(['status'=>0])->find_all());

        Template::render();
    }
    
    
}