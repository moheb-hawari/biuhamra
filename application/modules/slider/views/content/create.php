<?php

if (validation_errors()) :
?>
<div class='alert alert-block alert-error fade in'>
    <a class='close' data-dismiss='alert'>&times;</a>
    <div class='alert alert-danger'>
    <h4 class='alert-heading'>
        <?php echo lang('slider_errors_message'); ?>
    </h4>
    <?php echo validation_errors(); ?>
    </div>
</div>
<?php
endif;

$id = isset($slider->id) ? $slider->id : '';

?>
<div class='admin-box panel'>
    <div class='panel-heading'>
        <div class='panel-title'><h3>Slider</h3></div>
    </div>
    <div class='panel-body'>
    <?php echo form_open($this->uri->uri_string(), 'class="form-horizontal"'); ?>
        <fieldset>
            

            <div class="inputer floating-label control-group<?php echo form_error('en_title') ? ' error' : ''; ?>">
                <?php echo form_label(lang('slider_field_en_title') . lang('bf_form_label_required'), 'en_title', array('class' => 'control-label')); ?>
                <div class='input-wrapper controls'>
                    <input class='form-control' id='en_title' type='text' required='required' name='en_title' maxlength='255' value="<?php echo set_value('en_title', isset($slider->en_title) ? $slider->en_title : ''); ?>" />
                        <label for='en_title'><?php echo lang('slider_field_en_title'); ?></label>
                    <span class='help-inline'><?php echo form_error('en_title'); ?></span>
                </div>
            </div>

            <div class="inputer floating-label control-group<?php echo form_error('ar_title') ? ' error' : ''; ?>">
                <?php echo form_label(lang('slider_field_ar_title'), 'ar_title', array('class' => 'control-label')); ?>
                <div class='input-wrapper controls'>
                    <input class='form-control' id='ar_title' type='text' name='ar_title' maxlength='255' value="<?php echo set_value('ar_title', isset($slider->ar_title) ? $slider->ar_title : ''); ?>" />
                        <label for='ar_title'><?php echo lang('slider_field_ar_title'); ?></label>
                    <span class='help-inline'><?php echo form_error('ar_title'); ?></span>
                </div>
            </div>

            <div class="control-group<?php echo form_error('en_description') ? ' error' : ''; ?>">
                <?php echo form_label(lang('slider_field_en_description'), 'en_description', array('class' => 'control-label')); ?>
                <div class='controls'>
                    <?php echo form_textarea(array('name' => 'en_description', 'id' => 'en_description', 'class'=> 'summernote summernote-default','rows' => '5', 'cols' => '80', 'value' => set_value('en_description', isset($slider->en_description) ? $slider->en_description : ''))); ?>
                    <span class='help-inline'><?php echo form_error('en_description'); ?></span>
                </div>
            </div>

            <div class="control-group<?php echo form_error('ar_description') ? ' error' : ''; ?>">
                <?php echo form_label(lang('slider_field_ar_description'), 'ar_description', array('class' => 'control-label')); ?>
                <div class='controls'>
                    <?php echo form_textarea(array('name' => 'ar_description', 'id' => 'ar_description', 'class'=> 'summernote summernote-default','rows' => '5', 'cols' => '80', 'value' => set_value('ar_description', isset($slider->ar_description) ? $slider->ar_description : ''))); ?>
                    <span class='help-inline'><?php echo form_error('ar_description'); ?></span>
                </div>
            </div>

            <div class="inputer floating-label control-group<?php echo form_error('image') ? ' error' : ''; ?>">
                <?php echo form_label(lang('slider_field_image') . lang('bf_form_label_required'), 'image', array('class' => 'control-label')); ?>
                <div class='input-wrapper controls'>
                    <input class='form-control' id='image' type='text' required='required' name='image' maxlength='255' value="<?php echo set_value('image', isset($slider->image) ? $slider->image : ''); ?>" />
                        <label for='image'><?php echo lang('slider_field_image'); ?></label>
                    <span class='help-inline'><?php echo form_error('image'); ?></span>
                </div>
            </div>

            <?php // Change the values in this array to populate your dropdown as required
               $options = [0];
                if($weight != null) {for ($i = 1;$i<=$weight;$i++) {$options[] = $i;}}
                echo form_dropdown(array('name' => 'weight','class'=>'selectpicker','required' => 'required'), $options, set_value('weight', isset($slider->weight) ? $slider->weight : ''), lang('slider_field_weight') . lang('bf_form_label_required'),'','','col-md-6');
            ?>

            <?php // Change the values in this array to populate your dropdown as required
                $options = array(
                    0 => 'Active',
                    1 => 'Inactive',
                );
                echo form_dropdown(array('name' => 'status','class'=>'selectpicker','required' => 'required'), $options, set_value('status', isset($slider->status) ? $slider->status : ''), lang('slider_field_status') . lang('bf_form_label_required'),'','','col-md-6');
            ?>
        </fieldset>
        <fieldset class='form-actions'>
            <input type='submit' name='save' class='btn btn-primary' value="<?php echo lang('slider_action_create'); ?>" />
            <?php echo lang('bf_or'); ?>
            <?php echo anchor(SITE_AREA . '/content/slider', lang('slider_cancel'), 'class="btn btn-warning"'); ?>
            
        </fieldset>
    <?php echo form_close(); ?>
    </div>
</div>