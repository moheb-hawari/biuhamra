<?php

if (validation_errors()) :
?>
<style>
    .bootstrap-select:not([class*="col-"]):not([class*="form-control"]):not(.input-group-btn) {
    width: 300px !important;
}
    .bootstrap-select > .dropdown-toggle {
    width: 150% !important;
    }
</style>
<div class='alert alert-block alert-error fade in'>
    <a class='close' data-dismiss='alert'>&times;</a>
    <div class='alert alert-danger'>
    <h4 class='alert-heading'>
        <?php echo lang('videos_errors_message'); ?>
    </h4>
    <?php echo validation_errors(); ?>
    </div>
</div>
<?php
endif;

$id = isset($videos->id) ? $videos->id : '';

?>
<div class='admin-box panel'>
    <div class='panel-heading'>
        <div class='panel-title'><h3>Videos</h3></div>
    </div>
    <div class='panel-body'>
    <?php echo form_open($this->uri->uri_string(), 'class="form-horizontal"'); ?>
        <fieldset>
            

            <?php // Change the values in this array to populate your dropdown as required
                $options = array(
                    11 => 11,
                );
                echo form_dropdown(array('name' => 'department','class'=>'selectpicker','required' => 'required'), $options, set_value('department', isset($videos->department) ? $videos->department : ''), lang('videos_field_department') . lang('bf_form_label_required'),'','','col-md-6');
            ?>

            <div class="inputer floating-label control-group<?php echo form_error('link') ? ' error' : ''; ?>">
                <?php echo form_label(lang('videos_field_link') . lang('bf_form_label_required'), 'link', array('class' => 'control-label')); ?>
                <div class='input-wrapper controls'>
                    <input class='form-control' id='link' type='text' required='required' name='link' maxlength='255' value="<?php echo set_value('link', isset($videos->link) ? $videos->link : ''); ?>" />
                        <label for='link'><?php echo lang('videos_field_link'); ?></label>
                    <span class='help-inline'><?php echo form_error('link'); ?></span>
                </div>
            </div>

            <div class="inputer floating-label control-group<?php echo form_error('thumbnil') ? ' error' : ''; ?>">
                <?php echo form_label(lang('videos_field_thumbnil') . lang('bf_form_label_required'), 'thumbnil', array('class' => 'control-label')); ?>
                <div class='input-wrapper controls'>
                    <input class='form-control' id='thumbnil' type='text' required='required' name='thumbnil' maxlength='255' value="<?php echo set_value('thumbnil', isset($videos->thumbnil) ? $videos->thumbnil : ''); ?>" />
                        <label for='thumbnil'><?php echo lang('videos_field_thumbnil'); ?></label>
                    <span class='help-inline'><?php echo form_error('thumbnil'); ?></span>
                </div>
            </div>

            <?php // Change the values in this array to populate your dropdown as required
                $options = array(
                    0 => 'Active',
                    1 => 'Inactive',
                );
                echo form_dropdown(array('name' => 'status','class'=>'selectpicker','required' => 'required'), $options, set_value('status', isset($videos->status) ? $videos->status : ''), lang('videos_field_status') . lang('bf_form_label_required'),'','','col-md-6');
            ?>
        </fieldset>
        <fieldset class='form-actions'>
            <input type='submit' name='save' class='btn btn-primary' value="<?php echo lang('videos_action_create'); ?>" />
            <?php echo lang('bf_or'); ?>
            <?php echo anchor(SITE_AREA . '/facilities/videos', lang('videos_cancel'), 'class="btn btn-warning"'); ?>
            
        </fieldset>
    <?php echo form_close(); ?>
    </div>
</div>