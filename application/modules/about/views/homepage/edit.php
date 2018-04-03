<?php
if (validation_errors()) :
    ?>
    <div class='alert alert-block alert-error fade in'>
        <a class='close' data-dismiss='alert'>&times;</a>
        <div class='alert alert-danger'>
            <h4 class='alert-heading'>
                <?php echo lang('about_errors_message'); ?>
            </h4>
            <?php echo validation_errors(); ?>
        </div>
    </div>
    <?php
endif;

$id = isset($about->id) ? $about->id : '';
?>
<div class='admin-box panel'>
    <div class='panel-heading'>
        <div class='panel-title'><h3>About</h3></div>
    </div>
    <input class="tab-input" id="english" type="radio" name="tabs" checked>
    <label class="tab-label" for="english"><?php echo lang('bf_language_tab_english'); ?></label>
    
    <input class="tab-input" id="arabic" type="radio" name="tabs">
    <label class="tab-label" for="arabic"><?php echo lang('bf_language_tab_arabic'); ?></label>
    <div class='panel-body'>
<?php echo form_open_multipart($this->uri->uri_string(), 'class="form-horizontal"'); ?>
        <fieldset>
            <div id="english-content" class="col-md-12">
                <div class="inputer floating-label control-group<?php echo form_error('en_title') ? ' error' : ''; ?>">
                    <?php echo form_label(lang('about_field_en_title') . lang('bf_form_label_required'), 'en_title', array('class' => 'control-label')); ?>
                    <div class='input-wrapper controls'>
                        <input class='form-control' id='en_title' type='text' required='required' name='en_title' maxlength='255' value="<?php echo set_value('en_title', isset($about->en_title) ? $about->en_title : ''); ?>" />
                        <label for='en_title'><?php echo lang('about_field_en_title'); ?></label>
                        <span class='help-inline'><?php echo form_error('en_title'); ?></span>
                    </div>
                </div>
                <div class="control-group<?php echo form_error('en_description') ? ' error' : ''; ?>">
                    <?php echo form_label(lang('about_field_en_description') . lang('bf_form_label_required'), 'en_description', array('class' => 'control-label')); ?>
                    <div class=''>
                        <div class="input-wrapper controls rtl-support">
                        <textarea cols="80" rows="5"  class=""  id="en_description" name='en_description'><?php echo set_value('en_description', isset($about->en_description) ? $about->en_description : ''); ?></textarea>
                        </div>
                        <span class='help-inline'><?php echo form_error('en_description'); ?></span>
                    </div>
                </div>
                
                
            </div>

            <div  id="arabic-content" class="col-md-12">
                <div class="inputer floating-label control-group<?php echo form_error('ar_title') ? ' error' : ''; ?>">
                    <?php echo form_label(lang('about_field_ar_title') . lang('bf_form_label_required'), 'ar_title', array('class' => 'control-label')); ?>
                    <div class='input-wrapper controls'>
                        <input class='form-control' id='ar_title' type='text' required='required' name='ar_title' maxlength='255' value="<?php echo set_value('ar_title', isset($about->ar_title) ? $about->ar_title : ''); ?>" />
                        <label for='ar_title'><?php echo lang('about_field_ar_title'); ?></label>
                        <span class='help-inline'><?php echo form_error('ar_title'); ?></span>
                    </div>
                </div>
                <div class="control-group<?php echo form_error('ar_description') ? ' error' : ''; ?>">
                    <?php echo form_label(lang('about_field_ar_description') . lang('bf_form_label_required'), 'ar_description', array('class' => 'control-label')); ?>
                    <div class=''>
                        <div class="input-wrapper controls rtl-support">
                        <textarea cols="80" rows="5"  class=""  id="ar_description" name='ar_description'><?php echo set_value('ar_description', isset($about->ar_description) ? $about->ar_description : ''); ?></textarea>
                        </div>
                        <span class='help-inline'><?php echo form_error('ar_description'); ?></span>
                    </div>
                </div>
                
            </div>
            <div class="col-md-12">
                <div class="control-group<?php echo form_error('logo') ? ' error' : ''; ?>">
                <?php echo form_label(lang('about_field_logo'). lang('bf_form_label_required'), 'logo', array('class' => 'control-label')); ?>
                <div class="fileinput fileinput-new" data-provides="fileinput">
                    <span class="btn btn-default btn-file">
                        <span class="fileinput-new">Select file</span>
                        <span class="fileinput-exists">Change</span>
                        <input id='logo' type='file' name='logo' value="" />
                    </span>
                    <span class="fileinput-filename"></span>
                    <a href="#" class="close fileinput-exists" data-dismiss="fileinput" style="float: none">&times;</a>
                    <span class='help-inline'><?php echo form_error('logo'); ?></span>
                </div>
                
            </div>
            </div>
        </fieldset>
        <fieldset class='form-actions'>
            <input type='submit' name='save' class='btn btn-primary' value="<?php echo lang('about_action_edit'); ?>" />
            <?php echo lang('bf_or'); ?>
            <?php echo anchor(SITE_AREA . '/homepage/about', lang('about_cancel'), 'class="btn btn-warning"'); ?>

            
        </fieldset>
            <?php echo form_close(); ?>
    </div>
</div>