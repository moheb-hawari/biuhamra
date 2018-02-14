<?php

if (validation_errors()) :
?>
<div class='alert alert-block alert-error fade in'>
    <a class='close' data-dismiss='alert'>&times;</a>
    <div class='alert alert-danger'>
    <h4 class='alert-heading'>
        <?php echo lang('careers_errors_message'); ?>
    </h4>
    <?php echo validation_errors(); ?>
    </div>
</div>
<?php
endif;

$id = isset($careers->id) ? $careers->id : '';

?>
<div class='admin-box panel'>
    <div class='panel-heading'>
        <div class='panel-title'><h3>Careers</h3></div>
    </div>
    <input class="tab-input" id="english" type="radio" name="tabs" checked>
    <label class="tab-label" for="english"><?php echo lang('bf_language_tab_english'); ?></label>
    
    <input class="tab-input" id="arabic" type="radio" name="tabs">
    <label class="tab-label" for="arabic"><?php echo lang('bf_language_tab_arabic'); ?></label>
    <div class='panel-body'>
    <?php echo form_open($this->uri->uri_string(), 'class="form-horizontal"'); ?>
        <fieldset>
            <div id="english-content" class="col-md-12">
                <div class="inputer floating-label control-group<?php echo form_error('en_title') ? ' error' : ''; ?>">
                <?php echo form_label(lang('careers_field_en_title') . lang('bf_form_label_required'), 'en_title', array('class' => 'control-label')); ?>
                <div class='input-wrapper controls'>
                    <input class='form-control' id='en_title' type='text' required='required' name='en_title' maxlength='255' value="<?php echo set_value('en_title', isset($careers->en_title) ? $careers->en_title : ''); ?>" />
                        <label for='en_title'><?php echo lang('careers_field_en_title'); ?></label>
                    <span class='help-inline'><?php echo form_error('en_title'); ?></span>
                </div>
            </div>
                <div class="control-group<?php echo form_error('en_description') ? ' error' : ''; ?>">
                <?php echo form_label(lang('careers_field_en_description') . lang('bf_form_label_required'), 'en_description', array('class' => 'control-label')); ?>
                <div class=''>
                    <div class="rtl-support">
                            <textarea  class="summernote summernote-default" id="en_description" name='en_description'><?php echo set_value('en_description', isset($careers->en_description) ? $careers->en_description : ''); ?></textarea>
                        </div>
                    <span class='help-inline'><?php echo form_error('en_description'); ?></span>
                </div>
            </div>
                
            </div>
            <div  id="arabic-content" class="col-md-12">
                <div class="inputer floating-label control-group<?php echo form_error('ar_title') ? ' error' : ''; ?>">
                <?php echo form_label(lang('careers_field_ar_title') . lang('bf_form_label_required'), 'ar_title', array('class' => 'control-label')); ?>
                <div class='input-wrapper controls'>
                    <input class='form-control' id='ar_title' type='text' required='required' name='ar_title' maxlength='255' value="<?php echo set_value('ar_title', isset($careers->ar_title) ? $careers->ar_title : ''); ?>" />
                        <label for='ar_title'><?php echo lang('careers_field_ar_title'); ?></label>
                    <span class='help-inline'><?php echo form_error('ar_title'); ?></span>
                </div>
            </div>

            

            <div class="control-group<?php echo form_error('ar_description') ? ' error' : ''; ?>">
                <?php echo form_label(lang('careers_field_ar_description') . lang('bf_form_label_required'), 'ar_description', array('class' => 'control-label')); ?>
                <div class=''>
                    <div class="rtl-support">
                            <textarea  class="summernote summernote-default" id="ar_description" name='ar_description'><?php echo set_value('ar_description', isset($careers->ar_description) ? $careers->ar_description : ''); ?></textarea>
                        </div>
                    <span class='help-inline'><?php echo form_error('ar_description'); ?></span>
                </div>
            </div>

          

            </div>
            <div class="col-md-12">
                <div class="inputer floating-label control-group<?php echo form_error('job_code') ? ' error' : ''; ?>">
                <?php echo form_label(lang('careers_field_job_code') . lang('bf_form_label_required'), 'job_code', array('class' => 'control-label')); ?>
                <div class='input-wrapper controls'>
                    <input class='form-control' id='job_code' type='text' required='required' name='job_code' maxlength='255' value="<?php echo set_value('job_code', isset($careers->job_code) ? $careers->job_code : ''); ?>" />
                        <label for='job_code'><?php echo lang('careers_field_job_code'); ?></label>
                    <span class='help-inline'><?php echo form_error('job_code'); ?></span>
                </div>
            </div>
                 <?php // Change the values in this array to populate your dropdown as required
                $options = [0];
                if($weight != null) {for ($i = 1;$i<=$weight;$i++) {$options[] = $i;}}
                echo form_dropdown(array('name' => 'weight','class'=>'selectpicker','required' => 'required'), $options, set_value('weight', isset($careers->weight) ? $careers->weight : ''), lang('careers_field_weight') . lang('bf_form_label_required'),'','','col-md-6');
            ?>
                <?php // Change the values in this array to populate your dropdown as required
                $options = array(
                    0 => 'Active',
                    1 => 'Inactive',
                );
                echo form_dropdown(array('name' => 'status','class'=>'selectpicker','required' => 'required'), $options, set_value('status', isset($careers->status) ? $careers->status : ''), lang('careers_field_status') . lang('bf_form_label_required'),'','','col-md-6');
            ?>
            </div>
        </fieldset>
        <fieldset class='form-actions'>
            <input type='submit' name='save' class='btn btn-primary' value="<?php echo lang('careers_action_edit'); ?>" />
            <?php echo lang('bf_or'); ?>
            <?php echo anchor(SITE_AREA . '/humanresources/careers', lang('careers_cancel'), 'class="btn btn-warning"'); ?>
            
            
        </fieldset>
    <?php echo form_close(); ?>
    </div>
</div>