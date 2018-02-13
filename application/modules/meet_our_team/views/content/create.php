<?php

if (validation_errors()) :
?>
<div class='alert alert-block alert-error fade in'>
    <a class='close' data-dismiss='alert'>&times;</a>
    <div class='alert alert-danger'>
    <h4 class='alert-heading'>
        <?php echo lang('meet_our_team_errors_message'); ?>
    </h4>
    <?php echo validation_errors(); ?>
    </div>
</div>
<?php
endif;

$id = isset($meet_our_team->id) ? $meet_our_team->id : '';

?>
<div class='admin-box panel'>
    <div class='panel-heading'>
        <div class='panel-title'><h3>Meet Our Team</h3></div>
    </div>
    <div class='panel-body'>
    <?php echo form_open($this->uri->uri_string(), 'class="form-horizontal"'); ?>
        <fieldset>
            

            <div class="inputer floating-label control-group<?php echo form_error('en_title') ? ' error' : ''; ?>">
                <?php echo form_label(lang('meet_our_team_field_en_title') . lang('bf_form_label_required'), 'en_title', array('class' => 'control-label')); ?>
                <div class='input-wrapper controls'>
                    <input class='form-control' id='en_title' type='text' required='required' name='en_title' maxlength='255' value="<?php echo set_value('en_title', isset($meet_our_team->en_title) ? $meet_our_team->en_title : ''); ?>" />
                        <label for='en_title'><?php echo lang('meet_our_team_field_en_title'); ?></label>
                    <span class='help-inline'><?php echo form_error('en_title'); ?></span>
                </div>
            </div>

            <div class="inputer floating-label control-group<?php echo form_error('ar_title') ? ' error' : ''; ?>">
                <?php echo form_label(lang('meet_our_team_field_ar_title') . lang('bf_form_label_required'), 'ar_title', array('class' => 'control-label')); ?>
                <div class='input-wrapper controls'>
                    <input class='form-control' id='ar_title' type='text' required='required' name='ar_title' maxlength='255' value="<?php echo set_value('ar_title', isset($meet_our_team->ar_title) ? $meet_our_team->ar_title : ''); ?>" />
                        <label for='ar_title'><?php echo lang('meet_our_team_field_ar_title'); ?></label>
                    <span class='help-inline'><?php echo form_error('ar_title'); ?></span>
                </div>
            </div>

            <div class="control-group<?php echo form_error('ar_home_description') ? ' error' : ''; ?>">
                <?php echo form_label(lang('meet_our_team_field_ar_home_description') . lang('bf_form_label_required'), 'ar_home_description', array('class' => 'control-label')); ?>
                <div class='controls'>
                    <?php echo form_textarea(array('name' => 'ar_home_description', 'id' => 'ar_home_description', 'class'=> 'summernote summernote-default','rows' => '5', 'cols' => '80', 'value' => set_value('ar_home_description', isset($meet_our_team->ar_home_description) ? $meet_our_team->ar_home_description : ''), 'required' => 'required')); ?>
                    <span class='help-inline'><?php echo form_error('ar_home_description'); ?></span>
                </div>
            </div>

            <div class="control-group<?php echo form_error('en_home_description') ? ' error' : ''; ?>">
                <?php echo form_label(lang('meet_our_team_field_en_home_description') . lang('bf_form_label_required'), 'en_home_description', array('class' => 'control-label')); ?>
                <div class='controls'>
                    <?php echo form_textarea(array('name' => 'en_home_description', 'id' => 'en_home_description', 'class'=> 'summernote summernote-default','rows' => '5', 'cols' => '80', 'value' => set_value('en_home_description', isset($meet_our_team->en_home_description) ? $meet_our_team->en_home_description : ''), 'required' => 'required')); ?>
                    <span class='help-inline'><?php echo form_error('en_home_description'); ?></span>
                </div>
            </div>

            <div class="control-group<?php echo form_error('en_description') ? ' error' : ''; ?>">
                <?php echo form_label(lang('meet_our_team_field_en_description'), 'en_description', array('class' => 'control-label')); ?>
                <div class='controls'>
                    <?php echo form_textarea(array('name' => 'en_description', 'id' => 'en_description', 'class'=> 'summernote summernote-default','rows' => '5', 'cols' => '80', 'value' => set_value('en_description', isset($meet_our_team->en_description) ? $meet_our_team->en_description : ''))); ?>
                    <span class='help-inline'><?php echo form_error('en_description'); ?></span>
                </div>
            </div>

            <div class="control-group<?php echo form_error('ar_description') ? ' error' : ''; ?>">
                <?php echo form_label(lang('meet_our_team_field_ar_description'), 'ar_description', array('class' => 'control-label')); ?>
                <div class='controls'>
                    <?php echo form_textarea(array('name' => 'ar_description', 'id' => 'ar_description', 'class'=> 'summernote summernote-default','rows' => '5', 'cols' => '80', 'value' => set_value('ar_description', isset($meet_our_team->ar_description) ? $meet_our_team->ar_description : ''))); ?>
                    <span class='help-inline'><?php echo form_error('ar_description'); ?></span>
                </div>
            </div>
        </fieldset>
        <fieldset class='form-actions'>
            <input type='submit' name='save' class='btn btn-primary' value="<?php echo lang('meet_our_team_action_create'); ?>" />
            <?php echo lang('bf_or'); ?>
            <?php echo anchor(SITE_AREA . '/content/meet_our_team', lang('meet_our_team_cancel'), 'class="btn btn-warning"'); ?>
            
        </fieldset>
    <?php echo form_close(); ?>
    </div>
</div>