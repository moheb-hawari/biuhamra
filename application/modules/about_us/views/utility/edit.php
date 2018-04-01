<?php

if (validation_errors()) :
?>
<div class='alert alert-block alert-error fade in'>
    <a class='close' data-dismiss='alert'>&times;</a>
    <div class='alert alert-danger'>
    <h4 class='alert-heading'>
        <?php echo lang('about_us_errors_message'); ?>
    </h4>
    <?php echo validation_errors(); ?>
    </div>
</div>
<?php
endif;

$id = isset($about_us->id) ? $about_us->id : '';

?>
<div class='admin-box panel'>
    <div class='panel-heading'>
        <div class='panel-title'><h3>About Us</h3></div>
    </div>
    <div class='panel-body'>
    <?php echo form_open($this->uri->uri_string(), 'class="form-horizontal"'); ?>
        <fieldset>
            

            <div class="inputer floating-label control-group<?php echo form_error('en_title') ? ' error' : ''; ?>">
                <?php echo form_label(lang('about_us_field_en_title') . lang('bf_form_label_required'), 'en_title', array('class' => 'control-label')); ?>
                <div class='input-wrapper controls'>
                    <input class='form-control' id='en_title' type='text' required='required' name='en_title' maxlength='255' value="<?php echo set_value('en_title', isset($about_us->en_title) ? $about_us->en_title : ''); ?>" />
                        <label for='en_title'><?php echo lang('about_us_field_en_title'); ?></label>
                    <span class='help-inline'><?php echo form_error('en_title'); ?></span>
                </div>
            </div>

            <div class="inputer floating-label control-group<?php echo form_error('ar_title') ? ' error' : ''; ?>">
                <?php echo form_label(lang('about_us_field_ar_title') . lang('bf_form_label_required'), 'ar_title', array('class' => 'control-label')); ?>
                <div class='input-wrapper controls'>
                    <input class='form-control' id='ar_title' type='text' required='required' name='ar_title' maxlength='255' value="<?php echo set_value('ar_title', isset($about_us->ar_title) ? $about_us->ar_title : ''); ?>" />
                        <label for='ar_title'><?php echo lang('about_us_field_ar_title'); ?></label>
                    <span class='help-inline'><?php echo form_error('ar_title'); ?></span>
                </div>
            </div>

            <div class="control-group<?php echo form_error('en_description') ? ' error' : ''; ?>">
                    <?php echo form_label(lang('about_us_field_en_description') . lang('bf_form_label_required'), 'en_description', array('class' => 'control-label')); ?>
                    <div class=''>
                        <div class="rtl-support">
                            <textarea  class="summernote summernote-default" id="en_description" name='en_description'><?php echo set_value('en_description', isset($about_us->en_description) ? $about_us->en_description : ''); ?></textarea>
                        </div>
                        <span class='help-inline'><?php echo form_error('en_description'); ?></span>
                    </div>
                </div>
            
            <div class="control-group<?php echo form_error('ar_description') ? ' error' : ''; ?>">
                    <?php echo form_label(lang('about_us_field_ar_description') . lang('bf_form_label_required'), 'ar_description', array('class' => 'control-label')); ?>
                    <div class=''>
                        <div class="rtl-support">
                            <textarea  class="summernote summernote-default" id="ar_description" name='ar_description'><?php echo set_value('ar_description', isset($about_us->ar_description) ? $about_us->ar_description : ''); ?></textarea>
                        </div>
                        <span class='help-inline'><?php echo form_error('ar_description'); ?></span>
                    </div>
                </div>
            <div class="control-group<?php echo form_error('en_hours') ? ' error' : ''; ?>">
                    <?php echo form_label(lang('about_field_en_hours') . lang('bf_form_label_required'), 'en_hours', array('class' => 'control-label')); ?>
                    <div class=''>
                        <div class="rtl-support">
                            <textarea  class="summernote summernote-default" id="en_hours" name='en_hours'><?php echo set_value('en_hours', isset($about_us->en_hours) ? $about_us->en_hours : ''); ?></textarea>
                        </div>
                        <span class='help-inline'><?php echo form_error('en_hours'); ?></span>
                    </div>
                </div>
            <div class="control-group<?php echo form_error('ar_hours') ? ' error' : ''; ?>">
                    <?php echo form_label(lang('about_field_ar_hours') . lang('bf_form_label_required'), 'ar_hours', array('class' => 'control-label')); ?>

                    <div class="rtl-support">
                            <textarea  class="summernote summernote-default" id="ar_hours" name='ar_hours'><?php echo set_value('ar_hours', isset($about_us->ar_hours) ? $about_us->ar_hours : ''); ?></textarea>
                        </div>
                    <span class='help-inline'><?php echo form_error('ar_hours'); ?></span>

                </div>

            
        </fieldset>
        <fieldset class='form-actions'>
            <input type='submit' name='save' class='btn btn-primary' value="<?php echo lang('about_us_action_edit'); ?>" />
            <?php echo lang('bf_or'); ?>
            <?php echo anchor(SITE_AREA . '/utility/about_us', lang('about_us_cancel'), 'class="btn btn-warning"'); ?>
            
        </fieldset>
    <?php echo form_close(); ?>
    </div>
</div>