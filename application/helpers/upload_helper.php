<?php

defined('BASEPATH') OR exit('No direct script access allowed');

function image_validation()
{
    $CI = & get_instance();
    
    foreach($_FILES as $key => $val)
    {
        if($val['name'] == null)
        {
            $CI->form_validation->set_rules($key, ucfirst($key), 'required');
        }
            
    }
}
function do_upload($id) {

    $CI = & get_instance();
    $data = array();
    
    foreach($_FILES as $key => $val)
    {
        if($val['name'] == null){continue;}
        
        


        $file_name = pathinfo($val['name'], PATHINFO_FILENAME);
        $file_ext = pathinfo($val['name'], PATHINFO_EXTENSION);
        $new_file_name = date('U').'.'.$file_ext;
        $config['file_name'] = $new_file_name;
        $val['name'] = $new_file_name;
    
        $config['allowed_types']        = 'gif|jpg|png|jpeg';
        $config['upload_path']          = FCPATH."assets/images/$key/$id";
        
        if (!file_exists($config['upload_path'])) {
            if (!mkdir($config['upload_path'], 0777, true)){die('Failed to create folders...');}
        }
        else
        {
            $files = glob(FCPATH."assets/images/$key/$id/*"); // get all file names
            foreach($files as $file){ // iterate files
              if(is_file($file))
                unlink($file); // delete file
            }
        }
        
        $CI->load->library('upload', $config);
        $CI->upload->initialize($config);
            
        if ( ! $CI->upload->do_upload($key))
        {
            Template::set_message($CI->upload->display_errors(), 'error');
            return false;
        }
        else
        {
            $data[$key] = $val['name'];
        }
    }
    return $data;
}
