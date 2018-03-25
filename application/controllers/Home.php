<?php

defined('BASEPATH') || exit('No direct script access allowed');

/**
 * Bonfire
 *
 * An open source project to allow developers to jumpstart their development of
 * CodeIgniter applications.
 *
 * @package   Bonfire
 * @author    Bonfire Dev Team
 * @copyright Copyright (c) 2011 - 2014, Bonfire Dev Team
 * @license   http://opensource.org/licenses/MIT The MIT License
 * @link      http://cibonfire.com
 * @since     Version 1.0
 * @filesource
 */

/**
 * Home controller
 *
 * The base controller which displays the homepage of the Bonfire site.
 *
 * @package    Bonfire
 * @subpackage Controllers
 * @category   Controllers
 * @author     Bonfire Dev Team
 * @link       http://guides.cibonfire.com/helpers/file_helpers.html
 *
 */
class Home extends MX_Controller {

    public $_lang = '';
    
    public function __construct() {
        parent::__construct();

        $this->load->helper('application');
        $this->load->library('Template');
        $this->load->library('Assets');
        
        $this->load->library('events');
        $lang = $this->uri->segment(1);
        $this->_lang = $lang;
        $this->config->set_item('language', isset($lang)&&$lang=='ar'?'arabic':'english');
        
        $this->lang->load('application');
        $this->lang->load('about/about');
        $this->lang->load('social_media/social_media');
        $this->lang->load('departments/departments');
        $this->lang->load('slider/slider');
        $this->lang->load('meet_our_team/meet_our_team');
        $this->lang->load('doctors/doctors');
        $this->lang->load('patients_say/patients_say');
        $this->lang->load('faq/faq');
        $this->lang->load('locations/locations');
        $this->lang->load('information/information');
        
        
        $this->load->model('social_media/social_media_model');
        $this->load->model('departments/departments_model');
        $this->load->model('slider/slider_model');
        $this->load->model('about/about_model');
        $this->load->model('meet_our_team/meet_our_team_model');
        $this->load->model('doctors/doctors_model');
        $this->load->model('patients_say/patients_say_model');
        $this->load->model('faq/faq_model');
        $this->load->model('locations/locations_model');
        $this->load->model('information/information_model');
        $this->load->model('about_us/about_us_model');
        
        
        Assets::add_css(assets_path() . 'css/bootstrap.min.css');
        Assets::add_css(assets_path() . 'css/fontawesome-all.min.css');
        Assets::add_css(assets_path() . 'css/swiper.css');
        Assets::add_css(assets_path() . 'css/main_en.css');
        if(isset($lang)&&$lang=='ar'){Assets::add_css(assets_path() . 'css/main_'.$lang.'.css');}
        Assets::add_css(assets_path() . 'css/media_en.css');
        if(isset($lang)&&$lang=='ar'){Assets::add_css(assets_path() . 'css/media_'.$lang.'.css');}

        //Assets::add_js(assets_path() . 'js/jquery-3.3.1.min.js');
        Assets::add_js(assets_path() . 'js/swiper.min.js');
        Assets::add_js(assets_path() . 'js/fancybox.min.js');
        Assets::add_js(assets_path() . 'js/plugin.js');
        
        // Make the requested page var available, since
        // we're not extending from a Bonfire controller
        // and it's not done for us.
        $this->requested_page = isset($_SESSION['requested_page']) ? $_SESSION['requested_page'] : null;
    }

    //--------------------------------------------------------------------

    /**
     * Displays the homepage of the Bonfire app
     *
     * @return void
     */
    public function index() {
        
        Template::set('lang', $this->_lang);
        Template::set('social_media', $this->social_media_model->find(1));
        Template::set('departments', $this->departments_model->order_by('weight')->find_all());
        Template::set('departments_tabs', $this->departments_model->order_by('weight')->limit(6)->find_all());
        Template::set('slider', $this->slider_model->order_by('weight')->find_all());
        Template::set('about', $this->about_model->limit(3)->find_all());
        Template::set('meet_our_team', $this->meet_our_team_model->limit(1)->find_all());
        Template::set('doctors', $this->doctors_model->order_by('weight')->limit(6)->find_all());
        Template::set('patients_say', $this->patients_say_model->where(['status'=>0])->order_by('weight')->find_all());
        Template::set('faq', $this->faq_model->order_by('weight')->limit(3)->find_all());
        Template::set('locations', $this->locations_model->find_all());
        Template::set('information', $this->information_model->find(1));
        Template::set('about_us', $this->about_us_model->find(1));
        
        Template::render();
    }


}

/* end ./application/controllers/home.php */
