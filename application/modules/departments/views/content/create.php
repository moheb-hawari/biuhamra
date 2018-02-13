<?php

if (validation_errors()) :
?>
<div class='alert alert-block alert-error fade in'>
    <a class='close' data-dismiss='alert'>&times;</a>
    <div class='alert alert-danger'>
    <h4 class='alert-heading'>
        <?php echo lang('departments_errors_message'); ?>
    </h4>
    <?php echo validation_errors(); ?>
    </div>
</div>
<?php
endif;

$id = isset($departments->id) ? $departments->id : '';

?>
<div class='admin-box panel'>
    <div class='panel-heading'>
        <div class='panel-title'><h3>Departments</h3></div>
    </div>
    <div class='panel-body'>
    <?php echo form_open($this->uri->uri_string(), 'class="form-horizontal"'); ?>
        <fieldset>
            

            <div class="inputer floating-label control-group<?php echo form_error('en_title') ? ' error' : ''; ?>">
                <?php echo form_label(lang('departments_field_en_title') . lang('bf_form_label_required'), 'en_title', array('class' => 'control-label')); ?>
                <div class='input-wrapper controls'>
                    <input class='form-control' id='en_title' type='text' required='required' name='en_title' maxlength='255' value="<?php echo set_value('en_title', isset($departments->en_title) ? $departments->en_title : ''); ?>" />
                        <label for='en_title'><?php echo lang('departments_field_en_title'); ?></label>
                    <span class='help-inline'><?php echo form_error('en_title'); ?></span>
                </div>
            </div>

            <div class="inputer floating-label control-group<?php echo form_error('ar_title') ? ' error' : ''; ?>">
                <?php echo form_label(lang('departments_field_ar_title') . lang('bf_form_label_required'), 'ar_title', array('class' => 'control-label')); ?>
                <div class='input-wrapper controls'>
                    <input class='form-control' id='ar_title' type='text' required='required' name='ar_title' maxlength='255' value="<?php echo set_value('ar_title', isset($departments->ar_title) ? $departments->ar_title : ''); ?>" />
                        <label for='ar_title'><?php echo lang('departments_field_ar_title'); ?></label>
                    <span class='help-inline'><?php echo form_error('ar_title'); ?></span>
                </div>
            </div>

            <div class="control-group<?php echo form_error('en_description') ? ' error' : ''; ?>">
                <?php echo form_label(lang('departments_field_en_description') . lang('bf_form_label_required'), 'en_description', array('class' => 'control-label')); ?>
                <div class='controls'>
                    <?php echo form_textarea(array('name' => 'en_description', 'id' => 'en_description', 'class'=> 'summernote summernote-default','rows' => '5', 'cols' => '80', 'value' => set_value('en_description', isset($departments->en_description) ? $departments->en_description : ''), 'required' => 'required')); ?>
                    <span class='help-inline'><?php echo form_error('en_description'); ?></span>
                </div>
            </div>

            <div class="control-group<?php echo form_error('ar_description') ? ' error' : ''; ?>">
                <?php echo form_label(lang('departments_field_ar_description') . lang('bf_form_label_required'), 'ar_description', array('class' => 'control-label')); ?>
                <div class='controls'>
                    <?php echo form_textarea(array('name' => 'ar_description', 'id' => 'ar_description', 'class'=> 'summernote summernote-default','rows' => '5', 'cols' => '80', 'value' => set_value('ar_description', isset($departments->ar_description) ? $departments->ar_description : ''), 'required' => 'required')); ?>
                    <span class='help-inline'><?php echo form_error('ar_description'); ?></span>
                </div>
            </div>

            <div class="inputer floating-label control-group<?php echo form_error('en_image_title') ? ' error' : ''; ?>">
                <?php echo form_label(lang('departments_field_en_image_title') . lang('bf_form_label_required'), 'en_image_title', array('class' => 'control-label')); ?>
                <div class='input-wrapper controls'>
                    <input class='form-control' id='en_image_title' type='text' required='required' name='en_image_title' maxlength='255' value="<?php echo set_value('en_image_title', isset($departments->en_image_title) ? $departments->en_image_title : ''); ?>" />
                        <label for='en_image_title'><?php echo lang('departments_field_en_image_title'); ?></label>
                    <span class='help-inline'><?php echo form_error('en_image_title'); ?></span>
                </div>
            </div>

            <div class="inputer floating-label control-group<?php echo form_error('ar_image_title') ? ' error' : ''; ?>">
                <?php echo form_label(lang('departments_field_ar_image_title'), 'ar_image_title', array('class' => 'control-label')); ?>
                <div class='input-wrapper controls'>
                    <input class='form-control' id='ar_image_title' type='text' name='ar_image_title' maxlength='255' value="<?php echo set_value('ar_image_title', isset($departments->ar_image_title) ? $departments->ar_image_title : ''); ?>" />
                        <label for='ar_image_title'><?php echo lang('departments_field_ar_image_title'); ?></label>
                    <span class='help-inline'><?php echo form_error('ar_image_title'); ?></span>
                </div>
            </div>

            <div class="control-group<?php echo form_error('en_image_description') ? ' error' : ''; ?>">
                <?php echo form_label(lang('departments_field_en_image_description'), 'en_image_description', array('class' => 'control-label')); ?>
                <div class='controls'>
                    <?php echo form_textarea(array('name' => 'en_image_description', 'id' => 'en_image_description', 'class'=> 'summernote summernote-default','rows' => '5', 'cols' => '80', 'value' => set_value('en_image_description', isset($departments->en_image_description) ? $departments->en_image_description : ''))); ?>
                    <span class='help-inline'><?php echo form_error('en_image_description'); ?></span>
                </div>
            </div>

            <div class="control-group<?php echo form_error('ar_image_description') ? ' error' : ''; ?>">
                <?php echo form_label(lang('departments_field_ar_image_description'), 'ar_image_description', array('class' => 'control-label')); ?>
                <div class='controls'>
                    <?php echo form_textarea(array('name' => 'ar_image_description', 'id' => 'ar_image_description', 'class'=> 'summernote summernote-default','rows' => '5', 'cols' => '80', 'value' => set_value('ar_image_description', isset($departments->ar_image_description) ? $departments->ar_image_description : ''))); ?>
                    <span class='help-inline'><?php echo form_error('ar_image_description'); ?></span>
                </div>
            </div>

            <div class="inputer floating-label control-group<?php echo form_error('image') ? ' error' : ''; ?>">
                <?php echo form_label(lang('departments_field_image') . lang('bf_form_label_required'), 'image', array('class' => 'control-label')); ?>
                <div class='input-wrapper controls'>
                    <input class='form-control' id='image' type='text' required='required' name='image' maxlength='255' value="<?php echo set_value('image', isset($departments->image) ? $departments->image : ''); ?>" />
                        <label for='image'><?php echo lang('departments_field_image'); ?></label>
                    <span class='help-inline'><?php echo form_error('image'); ?></span>
                </div>
            </div>

            <?php // Change the values in this array to populate your dropdown as required
                $options = [0];
                if($weight != null) {for ($i = 1;$i<=$weight;$i++) {$options[] = $i;}}
                echo form_dropdown(array('name' => 'weight','class'=>'selectpicker','required' => 'required'), $options, set_value('weight', isset($departments->weight) ? $departments->weight : ''), lang('departments_field_weight') . lang('bf_form_label_required'),'','','col-md-6');
            ?>

            <?php // Change the values in this array to populate your dropdown as required
                $options = array(
                    0 => 'Active',
                    1 => 'Inactive',
                );
                echo form_dropdown(array('name' => 'status','class'=>'selectpicker','required' => 'required'), $options, set_value('status', isset($departments->status) ? $departments->status : ''), lang('departments_field_status') . lang('bf_form_label_required'),'','','col-md-6');
            ?>
        </fieldset>
        <fieldset class='form-actions'>
            <input type='submit' name='save' class='btn btn-primary' value="<?php echo lang('departments_action_create'); ?>" />
            <?php echo lang('bf_or'); ?>
            <?php echo anchor(SITE_AREA . '/content/departments', lang('departments_cancel'), 'class="btn btn-warning"'); ?>
            
        </fieldset>
    <?php echo form_close(); ?>
    </div>
</div>