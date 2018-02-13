<?php

if (validation_errors()) :
?>
<div class='alert alert-block alert-error fade in'>
    <a class='close' data-dismiss='alert'>&times;</a>
    <div class='alert alert-danger'>
    <h4 class='alert-heading'>
        <?php echo lang('doctors_errors_message'); ?>
    </h4>
    <?php echo validation_errors(); ?>
    </div>
</div>
<?php
endif;

$id = isset($doctors->id) ? $doctors->id : '';

?>
<div class='admin-box panel'>
    <div class='panel-heading'>
        <div class='panel-title'><h3>Doctors</h3></div>
    </div>
    <div class='panel-body'>
    <?php echo form_open($this->uri->uri_string(), 'class="form-horizontal"'); ?>
        <fieldset>
            

            <div class="inputer floating-label control-group<?php echo form_error('en_name') ? ' error' : ''; ?>">
                <?php echo form_label(lang('doctors_field_en_name') . lang('bf_form_label_required'), 'en_name', array('class' => 'control-label')); ?>
                <div class='input-wrapper controls'>
                    <input class='form-control' id='en_name' type='text' required='required' name='en_name' maxlength='255' value="<?php echo set_value('en_name', isset($doctors->en_name) ? $doctors->en_name : ''); ?>" />
                        <label for='en_name'><?php echo lang('doctors_field_en_name'); ?></label>
                    <span class='help-inline'><?php echo form_error('en_name'); ?></span>
                </div>
            </div>

            <div class="inputer floating-label control-group<?php echo form_error('ar_name') ? ' error' : ''; ?>">
                <?php echo form_label(lang('doctors_field_ar_name') . lang('bf_form_label_required'), 'ar_name', array('class' => 'control-label')); ?>
                <div class='input-wrapper controls'>
                    <input class='form-control' id='ar_name' type='text' required='required' name='ar_name' maxlength='255' value="<?php echo set_value('ar_name', isset($doctors->ar_name) ? $doctors->ar_name : ''); ?>" />
                        <label for='ar_name'><?php echo lang('doctors_field_ar_name'); ?></label>
                    <span class='help-inline'><?php echo form_error('ar_name'); ?></span>
                </div>
            </div>

            <div class="inputer floating-label control-group<?php echo form_error('en_job_title') ? ' error' : ''; ?>">
                <?php echo form_label(lang('doctors_field_en_job_title') . lang('bf_form_label_required'), 'en_job_title', array('class' => 'control-label')); ?>
                <div class='input-wrapper controls'>
                    <input class='form-control' id='en_job_title' type='text' required='required' name='en_job_title' maxlength='255' value="<?php echo set_value('en_job_title', isset($doctors->en_job_title) ? $doctors->en_job_title : ''); ?>" />
                        <label for='en_job_title'><?php echo lang('doctors_field_en_job_title'); ?></label>
                    <span class='help-inline'><?php echo form_error('en_job_title'); ?></span>
                </div>
            </div>

            <div class="inputer floating-label control-group<?php echo form_error('ar_job_title') ? ' error' : ''; ?>">
                <?php echo form_label(lang('doctors_field_ar_job_title') . lang('bf_form_label_required'), 'ar_job_title', array('class' => 'control-label')); ?>
                <div class='input-wrapper controls'>
                    <input class='form-control' id='ar_job_title' type='text' required='required' name='ar_job_title' maxlength='255' value="<?php echo set_value('ar_job_title', isset($doctors->ar_job_title) ? $doctors->ar_job_title : ''); ?>" />
                        <label for='ar_job_title'><?php echo lang('doctors_field_ar_job_title'); ?></label>
                    <span class='help-inline'><?php echo form_error('ar_job_title'); ?></span>
                </div>
            </div>

            <div class="inputer floating-label control-group<?php echo form_error('en_academic') ? ' error' : ''; ?>">
                <?php echo form_label(lang('doctors_field_en_academic') . lang('bf_form_label_required'), 'en_academic', array('class' => 'control-label')); ?>
                <div class='input-wrapper controls'>
                    <input class='form-control' id='en_academic' type='text' required='required' name='en_academic' maxlength='255' value="<?php echo set_value('en_academic', isset($doctors->en_academic) ? $doctors->en_academic : ''); ?>" />
                        <label for='en_academic'><?php echo lang('doctors_field_en_academic'); ?></label>
                    <span class='help-inline'><?php echo form_error('en_academic'); ?></span>
                </div>
            </div>

            <div class="inputer floating-label control-group<?php echo form_error('ar_academic') ? ' error' : ''; ?>">
                <?php echo form_label(lang('doctors_field_ar_academic') . lang('bf_form_label_required'), 'ar_academic', array('class' => 'control-label')); ?>
                <div class='input-wrapper controls'>
                    <input class='form-control' id='ar_academic' type='text' required='required' name='ar_academic' maxlength='255' value="<?php echo set_value('ar_academic', isset($doctors->ar_academic) ? $doctors->ar_academic : ''); ?>" />
                        <label for='ar_academic'><?php echo lang('doctors_field_ar_academic'); ?></label>
                    <span class='help-inline'><?php echo form_error('ar_academic'); ?></span>
                </div>
            </div>

            <div class="control-group<?php echo form_error('en_description') ? ' error' : ''; ?>">
                <?php echo form_label(lang('doctors_field_en_description') . lang('bf_form_label_required'), 'en_description', array('class' => 'control-label')); ?>
                <div class='controls'>
                    <?php echo form_textarea(array('name' => 'en_description', 'id' => 'en_description', 'class'=> 'summernote summernote-default','rows' => '5', 'cols' => '80', 'value' => set_value('en_description', isset($doctors->en_description) ? $doctors->en_description : ''), 'required' => 'required')); ?>
                    <span class='help-inline'><?php echo form_error('en_description'); ?></span>
                </div>
            </div>

            <div class="control-group<?php echo form_error('ar_description') ? ' error' : ''; ?>">
                <?php echo form_label(lang('doctors_field_ar_description') . lang('bf_form_label_required'), 'ar_description', array('class' => 'control-label')); ?>
                <div class='controls'>
                    <?php echo form_textarea(array('name' => 'ar_description', 'id' => 'ar_description', 'class'=> 'summernote summernote-default','rows' => '5', 'cols' => '80', 'value' => set_value('ar_description', isset($doctors->ar_description) ? $doctors->ar_description : ''), 'required' => 'required')); ?>
                    <span class='help-inline'><?php echo form_error('ar_description'); ?></span>
                </div>
            </div>

            <div class="inputer floating-label control-group<?php echo form_error('cover_image') ? ' error' : ''; ?>">
                <?php echo form_label(lang('doctors_field_cover_image') . lang('bf_form_label_required'), 'cover_image', array('class' => 'control-label')); ?>
                <div class='input-wrapper controls'>
                    <input class='form-control' id='cover_image' type='text' required='required' name='cover_image' maxlength='255' value="<?php echo set_value('cover_image', isset($doctors->cover_image) ? $doctors->cover_image : ''); ?>" />
                        <label for='cover_image'><?php echo lang('doctors_field_cover_image'); ?></label>
                    <span class='help-inline'><?php echo form_error('cover_image'); ?></span>
                </div>
            </div>

            <div class="inputer floating-label control-group<?php echo form_error('personal_photo') ? ' error' : ''; ?>">
                <?php echo form_label(lang('doctors_field_personal_photo') . lang('bf_form_label_required'), 'personal_photo', array('class' => 'control-label')); ?>
                <div class='input-wrapper controls'>
                    <input class='form-control' id='personal_photo' type='text' required='required' name='personal_photo' maxlength='255' value="<?php echo set_value('personal_photo', isset($doctors->personal_photo) ? $doctors->personal_photo : ''); ?>" />
                        <label for='personal_photo'><?php echo lang('doctors_field_personal_photo'); ?></label>
                    <span class='help-inline'><?php echo form_error('personal_photo'); ?></span>
                </div>
            </div>

            <?php // Change the values in this array to populate your dropdown as required
                $options = [0];
                if($weight != null) {for ($i = 1;$i<=$weight;$i++) {$options[] = $i;}}
                echo form_dropdown(array('name' => 'weight','class'=>'selectpicker','required' => 'required'), $options, set_value('weight', isset($doctors->weight) ? $doctors->weight : ''), lang('doctors_field_weight') . lang('bf_form_label_required'),'','','col-md-6');
            ?>

            <?php // Change the values in this array to populate your dropdown as required
                $options = array(
                    0 => 'Active',
                    1 => 'Inactive',
                );
                echo form_dropdown(array('name' => 'status','class'=>'selectpicker','required' => 'required'), $options, set_value('status', isset($doctors->status) ? $doctors->status : ''), lang('doctors_field_status') . lang('bf_form_label_required'),'','','col-md-6');
            ?>
        </fieldset>
        <fieldset class='form-actions'>
            <input type='submit' name='save' class='btn btn-primary' value="<?php echo lang('doctors_action_create'); ?>" />
            <?php echo lang('bf_or'); ?>
            <?php echo anchor(SITE_AREA . '/content/doctors', lang('doctors_cancel'), 'class="btn btn-warning"'); ?>
            
        </fieldset>
    <?php echo form_close(); ?>
    </div>
</div>