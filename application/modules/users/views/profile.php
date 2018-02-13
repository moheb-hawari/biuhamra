<?php

$errorClass   = empty($errorClass) ? ' error' : $errorClass;
$controlClass = empty($controlClass) ? 'span6' : $controlClass;
$fieldData = array(
    'errorClass'   => $errorClass,
    'controlClass' => $controlClass,
);

if (isset($password_hints)) {
    $fieldData['password_hints'] = $password_hints;
}

// In order for $renderPayload to be set properly, the order of the isset() checks
// for $current_user, $user, and $this->auth should be maintained. An if/elseif
// structure could be used for $renderPayload, but the separate if statements would
// still be needed to set $fieldData properly.
$renderPayload = null;
if (isset($current_user)) {
    $fieldData['current_user'] = $current_user;
    $renderPayload = $current_user;
}
if (isset($user)) {
    $fieldData['user'] = $user;
    $renderPayload = $user;
}
if (empty($renderPayload) && isset($this->auth)) {
    $renderPayload = $this->auth->user();
}

?>
<section class="panel" id="profile">
    <div class='panel-heading'>
        <div class='panel-title'>
            <h3><?php e(lang('us_edit_profile')); ?></h3>
        </div>
    </div>
    <div class='panel-body'>
    <?php if (validation_errors()) : ?>
    <div class="alert alert-error">
        <?php echo validation_errors(); ?>
    </div>
    <?php
    endif;
    if (isset($user) && $user->role_name == 'Banned') :
    ?>
    <div data-dismiss="alert" class="alert alert-error">
        <?php echo lang('us_banned_admin_note'); ?>
    </div>
    <?php endif; ?>
    <div class="row-fluid">
        <div class="span12">
            <?php echo form_open($this->uri->uri_string(), array('class' => 'form-horizontal', 'autocomplete' => 'off')); ?>
                <fieldset>
                    <?php Template::block('user_fields', 'user_fields', $fieldData); ?>
                </fieldset>
                <fieldset>
                    <?php
                    // Allow modules to render custom fields
                    Events::trigger('render_user_form', $renderPayload);
                    ?>
                    <!-- Start User Meta -->
                    <?php //$this->load->view('users/user_meta', array('frontend_only' => true)); ?>
                    <!-- End of User Meta -->
                </fieldset>
                <fieldset class="form-actions">
                    <input type="submit" name="save" class="btn btn-primary" value="<?php echo lang('bf_action_save') . ' ' . lang('bf_user'); ?>" />
                    <?php echo lang('bf_or') . ' ' . anchor('/', lang('bf_action_cancel')); ?>
                </fieldset>
            <?php echo form_close(); ?>
        </div>
    </div>
    </div>
</section>