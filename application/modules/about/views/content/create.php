<?php

if (validation_errors()) :
?>
<div class='alert alert-block alert-error fade in'>
    <a class='close' data-dismiss='alert'>&times;</a>
    <div class='alert alert-danger'>
    <h4 class='alert-heading'>
        <?php echo lang('about_errors_message'); ?>
    </h4>
    <?php echo validation_errors(); ?>
    </div>
</div>
<?php
endif;

$id = isset($about->id) ? $about->id : '';

?>
<div class='admin-box panel'>
    <div class='panel-heading'>
        <div class='panel-title'><h3>About</h3></div>
    </div>
    <div class='panel-body'>
    <?php echo form_open($this->uri->uri_string(), 'class="form-horizontal"'); ?>
        <fieldset>
            

            <div class="inputer floating-label control-group<?php echo form_error('en_title') ? ' error' : ''; ?>">
                <?php echo form_label(lang('about_field_en_title') . lang('bf_form_label_required'), 'en_title', array('class' => 'control-label')); ?>
                <div class='input-wrapper controls'>
                    <input class='form-control' id='en_title' type='text' required='required' name='en_title' maxlength='255' value="<?php echo set_value('en_title', isset($about->en_title) ? $about->en_title : ''); ?>" />
                        <label for='en_title'><?php echo lang('about_field_en_title'); ?></label>
                    <span class='help-inline'><?php echo form_error('en_title'); ?></span>
                </div>
            </div>

            <div class="inputer floating-label control-group<?php echo form_error('ar_title') ? ' error' : ''; ?>">
                <?php echo form_label(lang('about_field_ar_title') . lang('bf_form_label_required'), 'ar_title', array('class' => 'control-label')); ?>
                <div class='input-wrapper controls'>
                    <input class='form-control' id='ar_title' type='text' required='required' name='ar_title' maxlength='255' value="<?php echo set_value('ar_title', isset($about->ar_title) ? $about->ar_title : ''); ?>" />
                        <label for='ar_title'><?php echo lang('about_field_ar_title'); ?></label>
                    <span class='help-inline'><?php echo form_error('ar_title'); ?></span>
                </div>
            </div>

            <div class="control-group<?php echo form_error('en_description') ? ' error' : ''; ?>">
                <?php echo form_label(lang('about_field_en_description') . lang('bf_form_label_required'), 'en_description', array('class' => 'control-label')); ?>
                <div class='controls'>
                    <?php echo form_textarea(array('name' => 'en_description', 'id' => 'en_description', 'class'=> 'summernote summernote-default','rows' => '5', 'cols' => '80', 'value' => set_value('en_description', isset($about->en_description) ? $about->en_description : ''), 'required' => 'required')); ?>
                    <span class='help-inline'><?php echo form_error('en_description'); ?></span>
                </div>
            </div>

            <div class="control-group<?php echo form_error('ar_description') ? ' error' : ''; ?>">
                <?php echo form_label(lang('about_field_ar_description') . lang('bf_form_label_required'), 'ar_description', array('class' => 'control-label')); ?>
                <div class='controls'>
                    <?php echo form_textarea(array('name' => 'ar_description', 'id' => 'ar_description', 'class'=> 'summernote summernote-default','rows' => '5', 'cols' => '80', 'value' => set_value('ar_description', isset($about->ar_description) ? $about->ar_description : ''), 'required' => 'required')); ?>
                    <span class='help-inline'><?php echo form_error('ar_description'); ?></span>
                </div>
            </div>

            <div class="control-group<?php echo form_error('en_hours') ? ' error' : ''; ?>">
                <?php echo form_label(lang('about_field_en_hours') . lang('bf_form_label_required'), 'en_hours', array('class' => 'control-label')); ?>
                <div class='controls'>
                    <?php echo form_textarea(array('name' => 'en_hours', 'id' => 'en_hours', 'class'=> 'summernote summernote-default','rows' => '5', 'cols' => '80', 'value' => set_value('en_hours', isset($about->en_hours) ? $about->en_hours : ''), 'required' => 'required')); ?>
                    <span class='help-inline'><?php echo form_error('en_hours'); ?></span>
                </div>
            </div>

            <div class="control-group<?php echo form_error('ar_hours') ? ' error' : ''; ?>">
                <?php echo form_label(lang('about_field_ar_hours') . lang('bf_form_label_required'), 'ar_hours', array('class' => 'control-label')); ?>
                <div class='controls'>
                    <?php echo form_textarea(array('name' => 'ar_hours', 'id' => 'ar_hours', 'class'=> 'summernote summernote-default','rows' => '5', 'cols' => '80', 'value' => set_value('ar_hours', isset($about->ar_hours) ? $about->ar_hours : ''), 'required' => 'required')); ?>
                    <span class='help-inline'><?php echo form_error('ar_hours'); ?></span>
                </div>
            </div>

            <div class="inputer floating-label control-group<?php echo form_error('logo') ? ' error' : ''; ?>">
                <?php echo form_label(lang('about_field_logo') . lang('bf_form_label_required'), 'logo', array('class' => 'control-label')); ?>
                <div class='input-wrapper controls'>
                    <input class='form-control' id='logo' type='text' required='required' name='logo' maxlength='255' value="<?php echo set_value('logo', isset($about->logo) ? $about->logo : ''); ?>" />
                        <label for='logo'><?php echo lang('about_field_logo'); ?></label>
                    <span class='help-inline'><?php echo form_error('logo'); ?></span>
                </div>
            </div>
        </fieldset>
        <fieldset class='form-actions'>
            <input type='submit' name='save' class='btn btn-primary' value="<?php echo lang('about_action_create'); ?>" />
            <?php echo lang('bf_or'); ?>
            <?php echo anchor(SITE_AREA . '/content/about', lang('about_cancel'), 'class="btn btn-warning"'); ?>
            
        </fieldset>
    <?php echo form_close(); ?>
    </div>
</div>