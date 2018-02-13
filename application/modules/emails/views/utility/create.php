<?php

if (validation_errors()) :
?>
<div class='alert alert-block alert-error fade in'>
    <a class='close' data-dismiss='alert'>&times;</a>
    <div class='alert alert-danger'>
    <h4 class='alert-heading'>
        <?php echo lang('emails_errors_message'); ?>
    </h4>
    <?php echo validation_errors(); ?>
    </div>
</div>
<?php
endif;

$id = isset($emails->id) ? $emails->id : '';

?>
<div class='admin-box panel'>
    <div class='panel-heading'>
        <div class='panel-title'><h3>Emails</h3></div>
    </div>
    <div class='panel-body'>
    <?php echo form_open($this->uri->uri_string(), 'class="form-horizontal"'); ?>
        <fieldset>
            

            <div class="inputer floating-label control-group<?php echo form_error('careers_email') ? ' error' : ''; ?>">
                <?php echo form_label(lang('emails_field_careers_email') . lang('bf_form_label_required'), 'careers_email', array('class' => 'control-label')); ?>
                <div class='input-wrapper controls'>
                    <input class='form-control' id='careers_email' type='text' required='required' name='careers_email' maxlength='255' value="<?php echo set_value('careers_email', isset($emails->careers_email) ? $emails->careers_email : ''); ?>" />
                        <label for='careers_email'><?php echo lang('emails_field_careers_email'); ?></label>
                    <span class='help-inline'><?php echo form_error('careers_email'); ?></span>
                </div>
            </div>

            <div class="inputer floating-label control-group<?php echo form_error('contact_email') ? ' error' : ''; ?>">
                <?php echo form_label(lang('emails_field_contact_email') . lang('bf_form_label_required'), 'contact_email', array('class' => 'control-label')); ?>
                <div class='input-wrapper controls'>
                    <input class='form-control' id='contact_email' type='text' required='required' name='contact_email' maxlength='255' value="<?php echo set_value('contact_email', isset($emails->contact_email) ? $emails->contact_email : ''); ?>" />
                        <label for='contact_email'><?php echo lang('emails_field_contact_email'); ?></label>
                    <span class='help-inline'><?php echo form_error('contact_email'); ?></span>
                </div>
            </div>
        </fieldset>
        <fieldset class='form-actions'>
            <input type='submit' name='save' class='btn btn-primary' value="<?php echo lang('emails_action_create'); ?>" />
            <?php echo lang('bf_or'); ?>
            <?php echo anchor(SITE_AREA . '/utility/emails', lang('emails_cancel'), 'class="btn btn-warning"'); ?>
            
        </fieldset>
    <?php echo form_close(); ?>
    </div>
</div>