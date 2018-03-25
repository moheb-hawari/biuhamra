<?php

if (validation_errors()) :
?>
<div class='alert alert-block alert-error fade in'>
    <a class='close' data-dismiss='alert'>&times;</a>
    <div class='alert alert-danger'>
    <h4 class='alert-heading'>
        <?php echo lang('doctors_errors_message'); ?>
    </h4>
    <?php echo validation_errors(); ?>
    </div>
</div>
<?php
endif;

$id = isset($doctors->id) ? $doctors->id : '';

?>
<div class='admin-box panel'>
    <div class='panel-heading'>
        <div class='panel-title'><h3>Doctors</h3></div>
    </div>
    <input class="tab-input" id="english" type="radio" name="tabs" checked>
    <label class="tab-label" for="english"><?php echo lang('bf_language_tab_english'); ?></label>
    
    <input class="tab-input" id="arabic" type="radio" name="tabs">
    <label class="tab-label" for="arabic"><?php echo lang('bf_language_tab_arabic'); ?></label>
    <div class='panel-body'>
    <?php echo form_open_multipart($this->uri->uri_string(), 'class="form-horizontal"'); ?>
        <fieldset>
            <div id="english-content" class="col-md-12">
                <div class="inputer floating-label control-group<?php echo form_error('en_name') ? ' error' : ''; ?>">
                <?php echo form_label(lang('doctors_field_en_name') . lang('bf_form_label_required'), 'en_name', array('class' => 'control-label')); ?>
                <div class='input-wrapper controls'>
                    <input class='form-control' id='en_name' type='text' required='required' name='en_name' maxlength='255' value="<?php echo set_value('en_name', isset($doctors->en_name) ? $doctors->en_name : ''); ?>" />
                        <label for='en_name'><?php echo lang('doctors_field_en_name'); ?></label>
                    <span class='help-inline'><?php echo form_error('en_name'); ?></span>
                </div>
            </div>
                <div class="inputer floating-label control-group<?php echo form_error('en_job_title') ? ' error' : ''; ?>">
                <?php echo form_label(lang('doctors_field_en_job_title') . lang('bf_form_label_required'), 'en_job_title', array('class' => 'control-label')); ?>
                <div class='input-wrapper controls'>
                    <input class='form-control' id='en_job_title' type='text' required='required' name='en_job_title' maxlength='255' value="<?php echo set_value('en_job_title', isset($doctors->en_job_title) ? $doctors->en_job_title : ''); ?>" />
                        <label for='en_job_title'><?php echo lang('doctors_field_en_job_title'); ?></label>
                    <span class='help-inline'><?php echo form_error('en_job_title'); ?></span>
                </div>
            </div>
                <div class="inputer floating-label control-group<?php echo form_error('en_academic') ? ' error' : ''; ?>">
                <?php echo form_label(lang('doctors_field_en_academic') . lang('bf_form_label_required'), 'en_academic', array('class' => 'control-label')); ?>
                <div class='input-wrapper controls'>
                    <input class='form-control' id='en_academic' type='text' required='required' name='en_academic' maxlength='255' value="<?php echo set_value('en_academic', isset($doctors->en_academic) ? $doctors->en_academic : ''); ?>" />
                        <label for='en_academic'><?php echo lang('doctors_field_en_academic'); ?></label>
                    <span class='help-inline'><?php echo form_error('en_academic'); ?></span>
                </div>
            </div>
                <div class="control-group<?php echo form_error('en_description') ? ' error' : ''; ?>">
                <?php echo form_label(lang('doctors_field_en_description') . lang('bf_form_label_required'), 'en_description', array('class' => 'control-label')); ?>
                    <div class="rtl-support">
                        <textarea  class="summernote summernote-default" id="en_description" name='en_description'><?php echo set_value('en_description', isset($doctors->en_description) ? $doctors->en_description : ''); ?></textarea>
                    </div>  
                    <span class='help-inline'><?php echo form_error('en_description'); ?></span>
            </div>
                
                
            </div>
            
            <div id="arabic-content" class="col-md-12">
                <div class="inputer floating-label control-group<?php echo form_error('ar_name') ? ' error' : ''; ?>">
                <?php echo form_label(lang('doctors_field_ar_name') . lang('bf_form_label_required'), 'ar_name', array('class' => 'control-label')); ?>
                <div class='input-wrapper controls'>
                    <input class='form-control' id='ar_name' type='text' required='required' name='ar_name' maxlength='255' value="<?php echo set_value('ar_name', isset($doctors->ar_name) ? $doctors->ar_name : ''); ?>" />
                        <label for='ar_name'><?php echo lang('doctors_field_ar_name'); ?></label>
                    <span class='help-inline'><?php echo form_error('ar_name'); ?></span>
                </div>
            </div>

            

            <div class="inputer floating-label control-group<?php echo form_error('ar_job_title') ? ' error' : ''; ?>">
                <?php echo form_label(lang('doctors_field_ar_job_title') . lang('bf_form_label_required'), 'ar_job_title', array('class' => 'control-label')); ?>
                <div class='input-wrapper controls'>
                    <input class='form-control' id='ar_job_title' type='text' required='required' name='ar_job_title' maxlength='255' value="<?php echo set_value('ar_job_title', isset($doctors->ar_job_title) ? $doctors->ar_job_title : ''); ?>" />
                        <label for='ar_job_title'><?php echo lang('doctors_field_ar_job_title'); ?></label>
                    <span class='help-inline'><?php echo form_error('ar_job_title'); ?></span>
                </div>
            </div>

            

            <div class="inputer floating-label control-group<?php echo form_error('ar_academic') ? ' error' : ''; ?>">
                <?php echo form_label(lang('doctors_field_ar_academic') . lang('bf_form_label_required'), 'ar_academic', array('class' => 'control-label')); ?>
                <div class='input-wrapper controls'>
                    <input class='form-control' id='ar_academic' type='text' required='required' name='ar_academic' maxlength='255' value="<?php echo set_value('ar_academic', isset($doctors->ar_academic) ? $doctors->ar_academic : ''); ?>" />
                        <label for='ar_academic'><?php echo lang('doctors_field_ar_academic'); ?></label>
                    <span class='help-inline'><?php echo form_error('ar_academic'); ?></span>
                </div>
            </div>

            

            <div class="control-group<?php echo form_error('ar_description') ? ' error' : ''; ?>">
                <?php echo form_label(lang('doctors_field_ar_description') . lang('bf_form_label_required'), 'ar_description', array('class' => 'control-label')); ?>
                <div class="rtl-support">
                        <textarea  class="summernote summernote-default" id="ar_description" name='ar_description'><?php echo set_value('ar_description', isset($doctors->ar_description) ? $doctors->ar_description : ''); ?></textarea>
                    </div>  
                <span class='help-inline'><?php echo form_error('ar_description'); ?></span>
            </div>

            </div>
            <div class="control-group<?php echo form_error('cover_image') ? ' error' : ''; ?>">
                <?php echo form_label(lang('doctors_field_cover_image') . lang('bf_form_label_required'), 'cover_image', array('class' => 'control-label')); ?>
                <div class="fileinput fileinput-new" data-provides="fileinput">
                    <span class="btn btn-default btn-file">
                        <span class="fileinput-new">Select file</span>
                        <span class="fileinput-exists">Change</span>
                        <input id='cover_image' type='file' name='cover_image' value="" />
                    </span>
                    <span class="fileinput-filename"></span>
                    <a href="#" class="close fileinput-exists" data-dismiss="fileinput" style="float: none">&times;</a>
                    <span class='help-inline'><?php echo form_error('cover_image'); ?></span>
                </div>
            </div>
            
            <div class="col-md-12">
                <div class="control-group<?php echo form_error('personal_photo') ? ' error' : ''; ?>">
                <?php echo form_label(lang('doctors_field_personal_photo') . lang('bf_form_label_required'), 'personal_photo', array('class' => 'control-label')); ?>
                <div class="fileinput fileinput-new" data-provides="fileinput">
                    <span class="btn btn-default btn-file">
                        <span class="fileinput-new">Select file</span>
                        <span class="fileinput-exists">Change</span>
                        <input id='personal_photo' type='file' name='personal_photo' value="" />
                    </span>
                    <span class="fileinput-filename"></span>
                    <a href="#" class="close fileinput-exists" data-dismiss="fileinput" style="float: none">&times;</a>
                    <span class='help-inline'><?php echo form_error('personal_photo'); ?></span>
                </div>
            </div>
                
                 <div class="inputer floating-label control-group<?php echo form_error('facebook') ? ' error' : ''; ?>">
                <?php echo form_label(lang('doctors_field_facebook') . lang('bf_form_label_required'), 'facebook', array('class' => 'control-label')); ?>
                <div class='input-wrapper controls'>
                    <input class='form-control' id='facebook' type='text' required='required' name='facebook' maxlength='255' value="<?php echo set_value('facebook', isset($doctors->facebook) ? $doctors->facebook : ''); ?>" />
                        <label for='ar_academic'><?php echo lang('doctors_field_facebook'); ?></label>
                    <span class='help-inline'><?php echo form_error('facebook'); ?></span>
                </div>
            </div>
            <div class="inputer floating-label control-group<?php echo form_error('twitter') ? ' error' : ''; ?>">
                <?php echo form_label(lang('doctors_field_twitter') . lang('bf_form_label_required'), 'twitter', array('class' => 'control-label')); ?>
                <div class='input-wrapper controls'>
                    <input class='form-control' id='twitter' type='text' required='required' name='twitter' maxlength='255' value="<?php echo set_value('twitter', isset($doctors->twitter) ? $doctors->twitter : ''); ?>" />
                        <label for='ar_academic'><?php echo lang('doctors_field_twitter'); ?></label>
                    <span class='help-inline'><?php echo form_error('twitter'); ?></span>
                </div>
            </div>
            <div class="inputer floating-label control-group<?php echo form_error('google') ? ' error' : ''; ?>">
                <?php echo form_label(lang('doctors_field_google') . lang('bf_form_label_required'), 'google', array('class' => 'control-label')); ?>
                <div class='input-wrapper controls'>
                    <input class='form-control' id='google' type='text' required='required' name='google' maxlength='255' value="<?php echo set_value('google', isset($doctors->google) ? $doctors->google : ''); ?>" />
                        <label for='ar_academic'><?php echo lang('doctors_field_google'); ?></label>
                    <span class='help-inline'><?php echo form_error('google'); ?></span>
                </div>
            </div>
                
                
                <?php // Change the values in this array to populate your dropdown as required
                    $options = array(
                    0 => 'Participant',
                    1 => 'Administrator',
                );
                echo form_dropdown(array('name' => 'type','class'=>'selectpicker','required' => 'required'), $options, set_value('administrator', isset($doctors->administrator) ? $doctors->administrator : ''), lang('doctors_field_type') . lang('bf_form_label_required'),'','','col-md-6');
            ?>
                <?php // Change the values in this array to populate your dropdown as required
                $options = [0];
                if($weight != null) {for ($i = 1;$i<=$weight;$i++) {$options[] = $i;}}
                echo form_dropdown(array('name' => 'weight','class'=>'selectpicker','required' => 'required'), $options, set_value('weight', isset($doctors->weight) ? $doctors->weight : ''), lang('doctors_field_weight') . lang('bf_form_label_required'),'','','col-md-6');
            ?>
                <?php // Change the values in this array to populate your dropdown as required
                    $options = array(
                    0 => 'Active',
                    1 => 'Inactive',
                );
                echo form_dropdown(array('name' => 'status','class'=>'selectpicker','required' => 'required'), $options, set_value('status', isset($doctors->status) ? $doctors->status : ''), lang('doctors_field_status') . lang('bf_form_label_required'),'','','col-md-6');
            ?>
            </div>

        </fieldset>
        <fieldset class='form-actions'>
            <input type='submit' name='save' class='btn btn-primary' value="<?php echo lang('doctors_action_edit'); ?>" />
            <?php echo lang('bf_or'); ?>
            <?php echo anchor(SITE_AREA . '/content/doctors', lang('doctors_cancel'), 'class="btn btn-warning"'); ?>
            
            
        </fieldset>
    <?php echo form_close(); ?>
    </div>
</div>