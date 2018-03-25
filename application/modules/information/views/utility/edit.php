<?php

if (validation_errors()) :
?>
<div class='alert alert-block alert-error fade in'>
    <a class='close' data-dismiss='alert'>&times;</a>
    <div class='alert alert-danger'>
    <h4 class='alert-heading'>
        <?php echo lang('information_errors_message'); ?>
    </h4>
    <?php echo validation_errors(); ?>
    </div>
</div>
<?php
endif;

$id = isset($information->id) ? $information->id : '';

?>
<div class='admin-box panel'>
    <div class='panel-heading'>
        <div class='panel-title'><h3>Information</h3></div>
    </div>
    <div class='panel-body'>
    <?php echo form_open($this->uri->uri_string(), 'class="form-horizontal"'); ?>
        <fieldset>
            <div class="col-md-6">
                <div class="inputer floating-label control-group<?php echo form_error('hot_line') ? ' error' : ''; ?>">
                <?php echo form_label(lang('information_field_hot_line') . lang('bf_form_label_required'), 'hot_line', array('class' => 'control-label')); ?>
                <div class='input-wrapper controls'>
                    <input class='form-control' id='hot_line' type='text' required='required' name='hot_line' maxlength='255' value="<?php echo set_value('hot_line', isset($information->hot_line) ? $information->hot_line : ''); ?>" />
                        <label for='hot_line'><?php echo lang('information_field_hot_line'); ?></label>
                    <span class='help-inline'><?php echo form_error('hot_line'); ?></span>
                </div>
            </div>
                <div class="control-group<?php echo form_error('en_ddress') ? ' error' : ''; ?>">
                <?php echo form_label(lang('information_field_en_ddress') . lang('bf_form_label_required'), 'en_ddress', array('class' => 'control-label')); ?>
                <div class="rtl-support">
                        <textarea  class="summernote summernote-default" id="en_ddress" name='en_ddress'><?php echo set_value('en_ddress', isset($information->en_ddress) ? $information->en_ddress : ''); ?></textarea>
                    </div>    
                <span class='help-inline'><?php echo form_error('en_ddress'); ?></span>
            </div>
            </div>
            <div class="col-md-6">
                <div class="inputer floating-label control-group<?php echo form_error('support') ? ' error' : ''; ?>">
                <?php echo form_label(lang('information_field_support') . lang('bf_form_label_required'), 'support', array('class' => 'control-label')); ?>
                <div class='input-wrapper controls'>
                    <input class='form-control' id='support' type='text' required='required' name='support' maxlength='255' value="<?php echo set_value('support', isset($information->support) ? $information->support : ''); ?>" />
                        <label for='support'><?php echo lang('information_field_support'); ?></label>
                    <span class='help-inline'><?php echo form_error('support'); ?></span>
                </div>
            </div>
                <div class="control-group<?php echo form_error('ar_ddress') ? ' error' : ''; ?>">
                <?php echo form_label(lang('information_field_ar_ddress') . lang('bf_form_label_required'), 'ar_ddress', array('class' => 'control-label')); ?>
                    <div class="rtl-support">
                        <textarea  class="summernote summernote-default" id="ar_ddress" name='ar_ddress'><?php echo set_value('ar_ddress', isset($information->ar_ddress) ? $information->ar_ddress : ''); ?></textarea>
                    </div>                        <span class='help-inline'><?php echo form_error('ar_ddress'); ?></span>
            </div>
            </div>

        </fieldset>
        <fieldset class='form-actions'>
            <input type='submit' name='save' class='btn btn-primary' value="<?php echo lang('information_action_edit'); ?>" />
            <?php echo lang('bf_or'); ?>
            <?php echo anchor(SITE_AREA . '/utility/information', lang('information_cancel'), 'class="btn btn-warning"'); ?>
            
            
        </fieldset>
    <?php echo form_close(); ?>
    </div>
</div>