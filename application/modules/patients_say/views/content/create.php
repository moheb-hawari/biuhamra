<?php

if (validation_errors()) :
?>
<div class='alert alert-block alert-error fade in'>
    <a class='close' data-dismiss='alert'>&times;</a>
    <div class='alert alert-danger'>
    <h4 class='alert-heading'>
        <?php echo lang('patients_say_errors_message'); ?>
    </h4>
    <?php echo validation_errors(); ?>
    </div>
</div>
<?php
endif;

$id = isset($patients_say->id) ? $patients_say->id : '';

?>
<div class='admin-box panel'>
    <div class='panel-heading'>
        <div class='panel-title'><h3>Patients Say</h3></div>
    </div>
    <div class='panel-body'>
    <?php echo form_open($this->uri->uri_string(), 'class="form-horizontal"'); ?>
        <fieldset>
            

            <div class="inputer floating-label control-group<?php echo form_error('en_name') ? ' error' : ''; ?>">
                <?php echo form_label(lang('patients_say_field_en_name') . lang('bf_form_label_required'), 'en_name', array('class' => 'control-label')); ?>
                <div class='input-wrapper controls'>
                    <input class='form-control' id='en_name' type='text' required='required' name='en_name' maxlength='255' value="<?php echo set_value('en_name', isset($patients_say->en_name) ? $patients_say->en_name : ''); ?>" />
                        <label for='en_name'><?php echo lang('patients_say_field_en_name'); ?></label>
                    <span class='help-inline'><?php echo form_error('en_name'); ?></span>
                </div>
            </div>

            <div class="inputer floating-label control-group<?php echo form_error('ar_name') ? ' error' : ''; ?>">
                <?php echo form_label(lang('patients_say_field_ar_name') . lang('bf_form_label_required'), 'ar_name', array('class' => 'control-label')); ?>
                <div class='input-wrapper controls'>
                    <input class='form-control' id='ar_name' type='text' required='required' name='ar_name' maxlength='255' value="<?php echo set_value('ar_name', isset($patients_say->ar_name) ? $patients_say->ar_name : ''); ?>" />
                        <label for='ar_name'><?php echo lang('patients_say_field_ar_name'); ?></label>
                    <span class='help-inline'><?php echo form_error('ar_name'); ?></span>
                </div>
            </div>

            <div class="inputer floating-label control-group<?php echo form_error('en_job_title') ? ' error' : ''; ?>">
                <?php echo form_label(lang('patients_say_field_en_job_title') . lang('bf_form_label_required'), 'en_job_title', array('class' => 'control-label')); ?>
                <div class='input-wrapper controls'>
                    <input class='form-control' id='en_job_title' type='text' required='required' name='en_job_title' maxlength='255' value="<?php echo set_value('en_job_title', isset($patients_say->en_job_title) ? $patients_say->en_job_title : ''); ?>" />
                        <label for='en_job_title'><?php echo lang('patients_say_field_en_job_title'); ?></label>
                    <span class='help-inline'><?php echo form_error('en_job_title'); ?></span>
                </div>
            </div>

            <div class="inputer floating-label control-group<?php echo form_error('ar_job_title') ? ' error' : ''; ?>">
                <?php echo form_label(lang('patients_say_field_ar_job_title') . lang('bf_form_label_required'), 'ar_job_title', array('class' => 'control-label')); ?>
                <div class='input-wrapper controls'>
                    <input class='form-control' id='ar_job_title' type='text' required='required' name='ar_job_title' maxlength='255' value="<?php echo set_value('ar_job_title', isset($patients_say->ar_job_title) ? $patients_say->ar_job_title : ''); ?>" />
                        <label for='ar_job_title'><?php echo lang('patients_say_field_ar_job_title'); ?></label>
                    <span class='help-inline'><?php echo form_error('ar_job_title'); ?></span>
                </div>
            </div>

            <div class="control-group<?php echo form_error('en_comment') ? ' error' : ''; ?>">
                <?php echo form_label(lang('patients_say_field_en_comment') . lang('bf_form_label_required'), 'en_comment', array('class' => 'control-label')); ?>
                <div class='controls'>
                    <?php echo form_textarea(array('name' => 'en_comment', 'id' => 'en_comment', 'class'=> 'summernote summernote-default','rows' => '5', 'cols' => '80', 'value' => set_value('en_comment', isset($patients_say->en_comment) ? $patients_say->en_comment : ''), 'required' => 'required')); ?>
                    <span class='help-inline'><?php echo form_error('en_comment'); ?></span>
                </div>
            </div>

            <div class="control-group<?php echo form_error('ar_comment') ? ' error' : ''; ?>">
                <?php echo form_label(lang('patients_say_field_ar_comment') . lang('bf_form_label_required'), 'ar_comment', array('class' => 'control-label')); ?>
                <div class='controls'>
                    <?php echo form_textarea(array('name' => 'ar_comment', 'id' => 'ar_comment', 'class'=> 'summernote summernote-default','rows' => '5', 'cols' => '80', 'value' => set_value('ar_comment', isset($patients_say->ar_comment) ? $patients_say->ar_comment : ''), 'required' => 'required')); ?>
                    <span class='help-inline'><?php echo form_error('ar_comment'); ?></span>
                </div>
            </div>

            <?php // Change the values in this array to populate your dropdown as required
                $options = [0];
                if($weight != null) {for ($i = 1;$i<=$weight;$i++) {$options[] = $i;}}
                echo form_dropdown(array('name' => 'weight','class'=>'selectpicker','required' => 'required'), $options, set_value('weight', isset($patients_say->weight) ? $patients_say->weight : ''), lang('patients_say_field_weight') . lang('bf_form_label_required'),'','','col-md-6');
            ?>

            <?php // Change the values in this array to populate your dropdown as required
                $options = array(
                    0 => 'Active',
                    1 => 'Inactive',
                );
                echo form_dropdown(array('name' => 'status','class'=>'selectpicker','required' => 'required'), $options, set_value('status', isset($patients_say->status) ? $patients_say->status : ''), lang('patients_say_field_status') . lang('bf_form_label_required'),'','','col-md-6');
            ?>
        </fieldset>
        <fieldset class='form-actions'>
            <input type='submit' name='save' class='btn btn-primary' value="<?php echo lang('patients_say_action_create'); ?>" />
            <?php echo lang('bf_or'); ?>
            <?php echo anchor(SITE_AREA . '/content/patients_say', lang('patients_say_cancel'), 'class="btn btn-warning"'); ?>
            
        </fieldset>
    <?php echo form_close(); ?>
    </div>
</div>