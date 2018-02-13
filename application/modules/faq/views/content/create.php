<?php

if (validation_errors()) :
?>
<div class='alert alert-block alert-error fade in'>
    <a class='close' data-dismiss='alert'>&times;</a>
    <div class='alert alert-danger'>
    <h4 class='alert-heading'>
        <?php echo lang('faq_errors_message'); ?>
    </h4>
    <?php echo validation_errors(); ?>
    </div>
</div>
<?php
endif;

$id = isset($faq->id) ? $faq->id : '';

?>
<div class='admin-box panel'>
    <div class='panel-heading'>
        <div class='panel-title'><h3>FAQ</h3></div>
    </div>
    <div class='panel-body'>
    <?php echo form_open($this->uri->uri_string(), 'class="form-horizontal"'); ?>
        <fieldset>
            

            <div class="inputer floating-label control-group<?php echo form_error('en_title') ? ' error' : ''; ?>">
                <?php echo form_label(lang('faq_field_en_title') . lang('bf_form_label_required'), 'en_title', array('class' => 'control-label')); ?>
                <div class='input-wrapper controls'>
                    <input class='form-control' id='en_title' type='text' required='required' name='en_title' maxlength='255' value="<?php echo set_value('en_title', isset($faq->en_title) ? $faq->en_title : ''); ?>" />
                        <label for='en_title'><?php echo lang('faq_field_en_title'); ?></label>
                    <span class='help-inline'><?php echo form_error('en_title'); ?></span>
                </div>
            </div>

            <div class="inputer floating-label control-group<?php echo form_error('ar_title') ? ' error' : ''; ?>">
                <?php echo form_label(lang('faq_field_ar_title') . lang('bf_form_label_required'), 'ar_title', array('class' => 'control-label')); ?>
                <div class='input-wrapper controls'>
                    <input class='form-control' id='ar_title' type='text' required='required' name='ar_title' maxlength='255' value="<?php echo set_value('ar_title', isset($faq->ar_title) ? $faq->ar_title : ''); ?>" />
                        <label for='ar_title'><?php echo lang('faq_field_ar_title'); ?></label>
                    <span class='help-inline'><?php echo form_error('ar_title'); ?></span>
                </div>
            </div>

            <div class="control-group<?php echo form_error('en_description') ? ' error' : ''; ?>">
                <?php echo form_label(lang('faq_field_en_description') . lang('bf_form_label_required'), 'en_description', array('class' => 'control-label')); ?>
                <div class='controls'>
                    <?php echo form_textarea(array('name' => 'en_description', 'id' => 'en_description', 'class'=> 'summernote summernote-default','rows' => '5', 'cols' => '80', 'value' => set_value('en_description', isset($faq->en_description) ? $faq->en_description : ''), 'required' => 'required')); ?>
                    <span class='help-inline'><?php echo form_error('en_description'); ?></span>
                </div>
            </div>

            <div class="control-group<?php echo form_error('ar_description') ? ' error' : ''; ?>">
                <?php echo form_label(lang('faq_field_ar_description') . lang('bf_form_label_required'), 'ar_description', array('class' => 'control-label')); ?>
                <div class='controls'>
                    <?php echo form_textarea(array('name' => 'ar_description', 'id' => 'ar_description', 'class'=> 'summernote summernote-default','rows' => '5', 'cols' => '80', 'value' => set_value('ar_description', isset($faq->ar_description) ? $faq->ar_description : ''), 'required' => 'required')); ?>
                    <span class='help-inline'><?php echo form_error('ar_description'); ?></span>
                </div>
            </div>

            <?php // Change the values in this array to populate your dropdown as required
                $options = [0];
                if($weight != null) {for ($i = 1;$i<=$weight;$i++) {$options[] = $i;}}
                echo form_dropdown(array('name' => 'weight','class'=>'selectpicker','required' => 'required'), $options, set_value('weight', isset($faq->weight) ? $faq->weight : ''), lang('faq_field_weight') . lang('bf_form_label_required'),'','','col-md-6');
            ?>

            <?php // Change the values in this array to populate your dropdown as required
                $options = array(
                    0 => 'Active',
                    1 => 'Inactive',
                );
                echo form_dropdown(array('name' => 'status','class'=>'selectpicker','required' => 'required'), $options, set_value('status', isset($faq->status) ? $faq->status : ''), lang('faq_field_status') . lang('bf_form_label_required'),'','','col-md-6');
            ?>
        </fieldset>
        <fieldset class='form-actions'>
            <input type='submit' name='save' class='btn btn-primary' value="<?php echo lang('faq_action_create'); ?>" />
            <?php echo lang('bf_or'); ?>
            <?php echo anchor(SITE_AREA . '/content/faq', lang('faq_cancel'), 'class="btn btn-warning"'); ?>
            
        </fieldset>
    <?php echo form_close(); ?>
    </div>
</div>