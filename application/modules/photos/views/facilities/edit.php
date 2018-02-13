<?php

if (validation_errors()) :
?>
<div class='alert alert-block alert-error fade in'>
    <a class='close' data-dismiss='alert'>&times;</a>
    <div class='alert alert-danger'>
    <h4 class='alert-heading'>
        <?php echo lang('photos_errors_message'); ?>
    </h4>
    <?php echo validation_errors(); ?>
    </div>
</div>
<?php
endif;

$id = isset($photos->id) ? $photos->id : '';

?>
<div class='admin-box panel'>
    <div class='panel-heading'>
        <div class='panel-title'><h3>Photos</h3></div>
    </div>
    <div class='panel-body'>
    <?php echo form_open_multipart($this->uri->uri_string(), 'class="form-horizontal"'); ?>
        <fieldset>
            

            <?php // Change the values in this array to populate your dropdown as required
                $options = array();
                
                if($departments!= null)
                {
                    foreach($departments as $key => $val)
                    {
                        $options[$val->id] = $val->en_title;
                    }
                }
                echo form_dropdown(array('name' => 'department','class'=>'selectpicker','required' => 'required'), $options, set_value('department', isset($photos->department) ? $photos->department : ''), lang('photos_field_department') . lang('bf_form_label_required'),'','','col-md-6');
            ?>

            <div class="control-group<?php echo form_error('photo') ? ' error' : ''; ?>">
                <?php echo form_label(lang('photos_field_image') . lang('bf_form_label_required'), 'photo', array('class' => 'control-label')); ?>
                <div class="fileinput fileinput-new" data-provides="fileinput">
                    <span class="btn btn-default btn-file">
                        <span class="fileinput-new">Select file</span>
                        <span class="fileinput-exists">Change</span>
                        <input id='photo' type='file' name='photo' value="" />
                    </span>
                    <span class="fileinput-filename"></span>
                    <a href="#" class="close fileinput-exists" data-dismiss="fileinput" style="float: none">&times;</a>
                    <span class='help-inline'><?php echo form_error('photo'); ?></span>
                </div>
            </div>

            <?php // Change the values in this array to populate your dropdown as required
                $options = array(
                    0 => 'Active',
                    1 => 'Inactive',
                );
                echo form_dropdown(array('name' => 'status','class'=>'selectpicker','required' => 'required'), $options, set_value('status', isset($photos->status) ? $photos->status : ''), lang('photos_field_status') . lang('bf_form_label_required'),'','','col-md-6');
            ?>
        </fieldset>
        <fieldset class='form-actions'>
            <input type='submit' name='save' class='btn btn-primary' value="<?php echo lang('photos_action_edit'); ?>" />
            <?php echo lang('bf_or'); ?>
            <?php echo anchor(SITE_AREA . '/facilities/photos', lang('photos_cancel'), 'class="btn btn-warning"'); ?>
            
            
        </fieldset>
    <?php echo form_close(); ?>
    </div>
</div>