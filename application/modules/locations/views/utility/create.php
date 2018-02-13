<?php

if (validation_errors()) :
?>
<div class='alert alert-block alert-error fade in'>
    <a class='close' data-dismiss='alert'>&times;</a>
    <div class='alert alert-danger'>
    <h4 class='alert-heading'>
        <?php echo lang('locations_errors_message'); ?>
    </h4>
    <?php echo validation_errors(); ?>
    </div>
</div>
<?php
endif;

$id = isset($locations->id) ? $locations->id : '';

?>
<div class='admin-box panel'>
    <div class='panel-heading'>
        <div class='panel-title'><h3>Locations</h3></div>
    </div>
    <div class='panel-body'>
    <?php echo form_open($this->uri->uri_string(), 'class="form-horizontal"'); ?>
        <fieldset>
            

            <div class="inputer floating-label control-group<?php echo form_error('en_title') ? ' error' : ''; ?>">
                <?php echo form_label(lang('locations_field_en_title') . lang('bf_form_label_required'), 'en_title', array('class' => 'control-label')); ?>
                <div class='input-wrapper controls'>
                    <input class='form-control' id='en_title' type='text' required='required' name='en_title' maxlength='255' value="<?php echo set_value('en_title', isset($locations->en_title) ? $locations->en_title : ''); ?>" />
                        <label for='en_title'><?php echo lang('locations_field_en_title'); ?></label>
                    <span class='help-inline'><?php echo form_error('en_title'); ?></span>
                </div>
            </div>

            <div class="inputer floating-label control-group<?php echo form_error('ar_title') ? ' error' : ''; ?>">
                <?php echo form_label(lang('locations_field_ar_title') . lang('bf_form_label_required'), 'ar_title', array('class' => 'control-label')); ?>
                <div class='input-wrapper controls'>
                    <input class='form-control' id='ar_title' type='text' required='required' name='ar_title' maxlength='255' value="<?php echo set_value('ar_title', isset($locations->ar_title) ? $locations->ar_title : ''); ?>" />
                        <label for='ar_title'><?php echo lang('locations_field_ar_title'); ?></label>
                    <span class='help-inline'><?php echo form_error('ar_title'); ?></span>
                </div>
            </div>

            <div class="inputer floating-label control-group<?php echo form_error('latitude') ? ' error' : ''; ?>">
                <?php echo form_label(lang('locations_field_latitude') . lang('bf_form_label_required'), 'latitude', array('class' => 'control-label')); ?>
                <div class='input-wrapper controls'>
                    <input class='form-control' id='latitude' type='text' required='required' name='latitude' maxlength='255' value="<?php echo set_value('latitude', isset($locations->latitude) ? $locations->latitude : ''); ?>" />
                        <label for='latitude'><?php echo lang('locations_field_latitude'); ?></label>
                    <span class='help-inline'><?php echo form_error('latitude'); ?></span>
                </div>
            </div>

            <div class="inputer floating-label control-group<?php echo form_error('longitude') ? ' error' : ''; ?>">
                <?php echo form_label(lang('locations_field_longitude') . lang('bf_form_label_required'), 'longitude', array('class' => 'control-label')); ?>
                <div class='input-wrapper controls'>
                    <input class='form-control' id='longitude' type='text' required='required' name='longitude' maxlength='255' value="<?php echo set_value('longitude', isset($locations->longitude) ? $locations->longitude : ''); ?>" />
                        <label for='longitude'><?php echo lang('locations_field_longitude'); ?></label>
                    <span class='help-inline'><?php echo form_error('longitude'); ?></span>
                </div>
            </div>

            <?php // Change the values in this array to populate your dropdown as required
                $options = array(
                    0 => 'Active',
                    1 => 'Inactive',
                );
                echo form_dropdown(array('name' => 'status','class'=>'selectpicker','required' => 'required'), $options, set_value('status', isset($locations->status) ? $locations->status : ''), lang('locations_field_status') . lang('bf_form_label_required'),'','','col-md-6');
            ?>
        </fieldset>
        <fieldset class='form-actions'>
            <input type='submit' name='save' class='btn btn-primary' value="<?php echo lang('locations_action_create'); ?>" />
            <?php echo lang('bf_or'); ?>
            <?php echo anchor(SITE_AREA . '/utility/locations', lang('locations_cancel'), 'class="btn btn-warning"'); ?>
            
        </fieldset>
    <?php echo form_close(); ?>
    </div>
</div>