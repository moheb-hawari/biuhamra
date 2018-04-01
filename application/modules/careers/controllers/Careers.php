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
        
        echo 'here';
        die;
        $this->load->library('emailer/emailer');
        $this->load->model('emails/emails_model');
        $this->load->model('emailer/emailer_model');
        $this->emailer->enable_debug(true);
        
        $this->load->helper(array('form', 'url'));

        $result = $this->emails_model->find(1);
        
        $email = $result->contact_email;

        $message = $this->input->post('message') .'<br><br><br> '.lang('emailer_contact_from').$this->input->post('name').'<br> '.lang('emailer_contact_mobile').$this->input->post('phone').'<br>,<br>';
        
        $data = array(
            'to'      => $email,
            'subject' => sprintf(lang('emailer_contact_mail_subject'),$this->input->post('name')),
            'message' => $message,
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
        
        redirect(site_url().'/'.lang('bf_language_direction').'/?id=cont_clinic');

    }
      
}