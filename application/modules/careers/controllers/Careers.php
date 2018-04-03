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
    
    function send_career()
    {
 
        $this->load->library('emailer/emailer');
        $this->load->model('emails/emails_model');
        $this->load->model('emailer/emailer_model');
        $this->emailer->enable_debug(true);
        
        $this->load->helper(array('form', 'url'));

        $result = $this->emails_model->find(1);
        
        $job = $this->careers_model->find($_POST['career_number']);
        
//                echo '<pre>';
//print_r();
//echo '</pre>';
//die;
        $email = $result->careers_email;

        
        $data = array(
            'to'      => $email,
            'subject' => lang('job_code').' ; '.$job->job_code,
            'attachments' => $_FILES['cv'],
            'message'=>'',
            'from' => $this->input->post('email'),
         );

        $success = $this->emailer->send($data, false);

        if($success)
        {
            Template::set_message(lang('email_send_success'), 'success');
        }
        else
        {
            Template::set_message(lang('email_send_failure') . $this->emailer->error, 'error');
        }
        
        redirect(site_url().'/'.lang('bf_language_direction').'/careers');

    }
      
}