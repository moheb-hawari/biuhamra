<?php defined('BASEPATH') || exit('No direct script access allowed');

/**
 * Facilities controller
 */
class Facilities extends Admin_Controller
{
    protected $permissionCreate = 'Photo_gallery.Facilities.Create';
    protected $permissionDelete = 'Photo_gallery.Facilities.Delete';
    protected $permissionEdit   = 'Photo_gallery.Facilities.Edit';
    protected $permissionView   = 'Photo_gallery.Facilities.View';

    /**
     * Constructor
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct(); 	
        $this->auth->restrict($this->permissionView);
        $this->load->model('photo_gallery/photo_gallery_model');
        $this->load->helper('upload_helper');

        $this->lang->load('photo_gallery');
        
            $this->form_validation->set_error_delimiters("<span class='error'>", "</span>");
        
        Template::set_block('sub_nav', 'facilities/_sub_nav');

        Assets::add_css( assets_path() . 'globals/css/elements.css');
        Assets::add_css( assets_path().'globals/plugins/datatables/themes/bootstrap/dataTables.bootstrap.css');
        Assets::add_css( assets_path().'globals/plugins/datatables/media/css/jquery.dataTables.min.css');
//        Assets::add_css( assets_path().'globals/plugins/multi_upload/css/style.css');
        Assets::add_css( 'https://blueimp.github.io/Gallery/css/blueimp-gallery.min.css');
        Assets::add_css( assets_path().'globals/plugins/multi_upload/css/jquery.fileupload.css');
        Assets::add_css( assets_path().'globals/plugins/multi_upload/css/jquery.fileupload-ui.css');
        
        

                        
        Assets::add_js( assets_path().'globals/plugins/datatables/media/js/jquery.dataTables.min.js');
        Assets::add_js( assets_path().'globals/plugins/datatables/themes/bootstrap/dataTables.bootstrap.js');
        
        Assets::add_module_js('photo_gallery', 'photo_gallery.js');
    }

    /**
     * Display a list of Photo Gallery data.
     *
     * @return void
     */
    public function index($offset = 0)
    {
        // Deleting anything?
        if (isset($_POST['delete'])) {
            $this->auth->restrict($this->permissionDelete);
            $checked = $this->input->post('checked');
            if (is_array($checked) && count($checked)) {

                // If any of the deletions fail, set the result to false, so
                // failure message is set if any of the attempts fail, not just
                // the last attempt

                $result = true;
                foreach ($checked as $pid) {
                    $deleted = $this->photo_gallery_model->delete($pid);
                    if ($deleted == false) {
                        $result = false;
                    }
                }
                if ($result) {
                    Template::set_message(count($checked) . ' ' . lang('photo_gallery_delete_success'), 'success');
                } else {
                    Template::set_message(lang('photo_gallery_delete_failure') . $this->photo_gallery_model->error, 'error');
                }
            }
        }
        $pagerUriSegment = 5;
        $pagerBaseUrl = site_url(SITE_AREA . '/facilities/photo_gallery/index') . '/';
        
        $limit  = $this->settings_lib->item('site.list_limit') ?: 15;

        $this->load->library('pagination');
        $pager['base_url']    = $pagerBaseUrl;
        $pager['total_rows']  = $this->photo_gallery_model->count_all();
        $pager['per_page']    = $limit;
        $pager['uri_segment'] = $pagerUriSegment;

        $this->pagination->initialize($pager);
        $this->photo_gallery_model->limit($limit, $offset);
        
        $records = $this->photo_gallery_model->find_all();

        Template::set('records', $records);
        
    Template::set('toolbar_title', lang('photo_gallery_manage'));

        Template::render();
    }
    
    /**
     * Create a Photo Gallery object.
     *
     * @return void
     */
    public function create()
    {
        $this->auth->restrict($this->permissionCreate);
        $this->edit();
        
    }
    /**
     * Allows editing of Photo Gallery data.
     *
     * @return void
     */
    public function edit()
    {
        $id = $this->uri->segment(5);
        Template::set('weight', $this->photo_gallery_model->count_all());
        if (empty($id)) {
            if (isset($_POST['save'])) {
            if ($insert_id = $this->save_photo_gallery()) {
                log_activity($this->auth->user_id(), lang('photo_gallery_act_create_record') . ': ' . $insert_id . ' : ' . $this->input->ip_address(), 'photo_gallery');
                Template::set_message(lang('photo_gallery_create_success'), 'success');

                redirect(SITE_AREA . '/facilities/photo_gallery');
            }

            // Not validation error
            if ( ! empty($this->photo_gallery_model->error)) {
                Template::set_message(lang('photo_gallery_create_failure') . $this->photo_gallery_model->error, 'error');
            }
        }

        Template::set('toolbar_title', lang('photo_gallery_action_create'));
        Template::set_view('edit');
        Template::render();
        }
        
        if (isset($_POST['save'])) {
            $this->auth->restrict($this->permissionEdit);

            if ($this->save_photo_gallery('update', $id)) {
                log_activity($this->auth->user_id(), lang('photo_gallery_act_edit_record') . ': ' . $id . ' : ' . $this->input->ip_address(), 'photo_gallery');
                Template::set_message(lang('photo_gallery_edit_success'), 'success');
                redirect(SITE_AREA . '/facilities/photo_gallery');
            }

            // Not validation error
            if ( ! empty($this->photo_gallery_model->error)) {
                Template::set_message(lang('photo_gallery_edit_failure') . $this->photo_gallery_model->error, 'error');
            }
        }
        
        elseif (isset($_POST['delete'])) {
            $this->auth->restrict($this->permissionDelete);

            if ($this->photo_gallery_model->delete($id)) {
                log_activity($this->auth->user_id(), lang('photo_gallery_act_delete_record') . ': ' . $id . ' : ' . $this->input->ip_address(), 'photo_gallery');
                Template::set_message(lang('photo_gallery_delete_success'), 'success');

                redirect(SITE_AREA . '/facilities/photo_gallery');
            }

            Template::set_message(lang('photo_gallery_delete_failure') . $this->photo_gallery_model->error, 'error');
        }
        
        Template::set('photo_gallery', $this->photo_gallery_model->find($id));

        Template::set('toolbar_title', lang('photo_gallery_edit_heading'));
        Template::render();
    }

    //--------------------------------------------------------------------------
    // !PRIVATE METHODS
    //--------------------------------------------------------------------------

    /**
     * Save the data.
     *
     * @param string $type Either 'insert' or 'update'.
     * @param int    $id   The ID of the record to update, ignored on inserts.
     *
     * @return boolean|integer An ID for successful inserts, true for successful
     * updates, else false.
     */
    private function save_photo_gallery($type = 'insert', $id = 0)
    {
        if ($type == 'update') {
            $_POST['id'] = $id;
        }

        // Validate the data
        $this->form_validation->set_rules($this->photo_gallery_model->get_validation_rules());
        if ($this->form_validation->run() === false) {
            return false;
        }

        // Make sure we only pass in the fields we want
        
        $data = $this->photo_gallery_model->prep_data($this->input->post());

        // Additional handling for default values should be added below,
        // or in the model's prep_data() method
        

        $return = false;
        if ($type == 'insert') {
            $id = $this->photo_gallery_model->insert($data);

            if (is_numeric($id)) {
                $return = $id;
            }
        } elseif ($type == 'update') {
            $return = $this->photo_gallery_model->update($id, $data);
        }

        return $return;
    }
    
    function uplaod_images($id,$name='')
    {
        
        Assets::add_js( assets_path().'globals/plugins/multi_upload/js/vendor/jquery.ui.widget.js');
        Assets::add_js( 'https://blueimp.github.io/JavaScript-Templates/js/tmpl.min.js');
        Assets::add_js( 'https://blueimp.github.io/JavaScript-Load-Image/js/load-image.all.min.js');
        Assets::add_js( 'https://blueimp.github.io/JavaScript-Canvas-to-Blob/js/canvas-to-blob.min.js');
        Assets::add_js( 'https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js');
        Assets::add_js( 'https://blueimp.github.io/Gallery/js/jquery.blueimp-gallery.min.js');
        Assets::add_js( assets_path().'globals/plugins/multi_upload/js/jquery.iframe-transport.js');
        Assets::add_js( assets_path().'globals/plugins/multi_upload/js/jquery.fileupload.js');
        Assets::add_js( assets_path().'globals/plugins/multi_upload/js/jquery.fileupload-process.js');
        Assets::add_js( assets_path().'globals/plugins/multi_upload/js/jquery.fileupload-image.js');
        Assets::add_js( assets_path().'globals/plugins/multi_upload/js/jquery.fileupload-audio.js');
        Assets::add_js( assets_path().'globals/plugins/multi_upload/js/jquery.fileupload-video.js');
        Assets::add_js( assets_path().'globals/plugins/multi_upload/js/jquery.fileupload-validate.js');
        Assets::add_js( assets_path().'globals/plugins/multi_upload/js/jquery.fileupload-ui.js');
        Assets::add_js( assets_path().'globals/plugins/multi_upload/js/main.js');
                
        Template::set('photo_gallery', $this->photo_gallery_model->find($id));

        Template::set('toolbar_title', lang('photo_gallery_edit_heading'));
        Template::set_view('add_photo');
        Template::render();
        
    }
    
    
    function do_multi_upload($id,$name)
    {
		
		error_reporting(E_ALL | E_STRICT);
		//print_r($this->auth->user());	
		
		   $script_url=$this->config->base_url()."index.php/admin/facilities/photo_gallery/deleteImages/".$id.'/';
		
            require('assets/globals/plugins/multi_upload/server/php/UploadHandler.php');
            $option = array(
            'user_dirs' => 'public/assets/images/',
            'gallary_id'=>$id,
			'script_url'=>$script_url
            );
            return $upload_handler = new UploadHandler($option);
        
    }
	
	function deleteImages($id){
		
		 
		require('assets/globals/plugins/multi_upload/server/php/UploadHandler.php');
		
		 $option = array(
            'user_dirs' => 'public/assets/images/',
            'gallary_id'=>$id,
		
            );
		
		 $upload_handler = new UploadHandler($option);
	
	}
   function getNewToken(){	   
	     $reponse = array(
                'csrfName' => $this->security->get_csrf_token_name(),
                'csrfHash' => $this->security->get_csrf_hash()
                );				
			echo $reponse['csrfHash'];	   
   }		
    function uplaod_images2($id,$name)
    {
                    
        if (isset($_POST['submit'])) {

        $this->do_multi_upload($id);
        
      Template::set_message(lang('photo_gallery_delete_success'), 'success');

        redirect(SITE_AREA . '/facilities/photo_gallery');
        
        }
        
        Template::set('photo_gallery', $this->photo_gallery_model->find($id));

        Template::set('toolbar_title', lang('photo_gallery_edit_heading'));
        Template::set_view('add_photo');
        Template::render();
        
    }
}
