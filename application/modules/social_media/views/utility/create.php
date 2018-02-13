<?php

if (validation_errors()) :
?>
<div class='alert alert-block alert-error fade in'>
    <a class='close' data-dismiss='alert'>&times;</a>
    <div class='alert alert-danger'>
    <h4 class='alert-heading'>
        <?php echo lang('social_media_errors_message'); ?>
    </h4>
    <?php echo validation_errors(); ?>
    </div>
</div>
<?php
endif;

$id = isset($social_media->id) ? $social_media->id : '';

?>
<div class='admin-box panel'>
    <div class='panel-heading'>
        <div class='panel-title'><h3>Social Media</h3></div>
    </div>
    <div class='panel-body'>
    <?php echo form_open($this->uri->uri_string(), 'class="form-horizontal"'); ?>
        <fieldset>
            

            <div class="inputer floating-label control-group<?php echo form_error('facebook') ? ' error' : ''; ?>">
                <?php echo form_label(lang('social_media_field_facebook'), 'facebook', array('class' => 'control-label')); ?>
                <div class='input-wrapper controls'>
                    <input class='form-control' id='facebook' type='text' name='facebook' maxlength='255' value="<?php echo set_value('facebook', isset($social_media->facebook) ? $social_media->facebook : ''); ?>" />
                        <label for='facebook'><?php echo lang('social_media_field_facebook'); ?></label>
                    <span class='help-inline'><?php echo form_error('facebook'); ?></span>
                </div>
            </div>

            <div class="inputer floating-label control-group<?php echo form_error('twitter') ? ' error' : ''; ?>">
                <?php echo form_label(lang('social_media_field_twitter'), 'twitter', array('class' => 'control-label')); ?>
                <div class='input-wrapper controls'>
                    <input class='form-control' id='twitter' type='text' name='twitter' maxlength='255' value="<?php echo set_value('twitter', isset($social_media->twitter) ? $social_media->twitter : ''); ?>" />
                        <label for='twitter'><?php echo lang('social_media_field_twitter'); ?></label>
                    <span class='help-inline'><?php echo form_error('twitter'); ?></span>
                </div>
            </div>

            <div class="inputer floating-label control-group<?php echo form_error('instagram') ? ' error' : ''; ?>">
                <?php echo form_label(lang('social_media_field_instagram'), 'instagram', array('class' => 'control-label')); ?>
                <div class='input-wrapper controls'>
                    <input class='form-control' id='instagram' type='text' name='instagram' maxlength='255' value="<?php echo set_value('instagram', isset($social_media->instagram) ? $social_media->instagram : ''); ?>" />
                        <label for='instagram'><?php echo lang('social_media_field_instagram'); ?></label>
                    <span class='help-inline'><?php echo form_error('instagram'); ?></span>
                </div>
            </div>

            <div class="inputer floating-label control-group<?php echo form_error('pinterest') ? ' error' : ''; ?>">
                <?php echo form_label(lang('social_media_field_pinterest'), 'pinterest', array('class' => 'control-label')); ?>
                <div class='input-wrapper controls'>
                    <input class='form-control' id='pinterest' type='text' name='pinterest' maxlength='255' value="<?php echo set_value('pinterest', isset($social_media->pinterest) ? $social_media->pinterest : ''); ?>" />
                        <label for='pinterest'><?php echo lang('social_media_field_pinterest'); ?></label>
                    <span class='help-inline'><?php echo form_error('pinterest'); ?></span>
                </div>
            </div>

            <div class="inputer floating-label control-group<?php echo form_error('linkedin') ? ' error' : ''; ?>">
                <?php echo form_label(lang('social_media_field_linkedin'), 'linkedin', array('class' => 'control-label')); ?>
                <div class='input-wrapper controls'>
                    <input class='form-control' id='linkedin' type='text' name='linkedin' maxlength='255' value="<?php echo set_value('linkedin', isset($social_media->linkedin) ? $social_media->linkedin : ''); ?>" />
                        <label for='linkedin'><?php echo lang('social_media_field_linkedin'); ?></label>
                    <span class='help-inline'><?php echo form_error('linkedin'); ?></span>
                </div>
            </div>

            <div class="inputer floating-label control-group<?php echo form_error('google') ? ' error' : ''; ?>">
                <?php echo form_label(lang('social_media_field_google'), 'google', array('class' => 'control-label')); ?>
                <div class='input-wrapper controls'>
                    <input class='form-control' id='google' type='text' name='google' maxlength='255' value="<?php echo set_value('google', isset($social_media->google) ? $social_media->google : ''); ?>" />
                        <label for='google'><?php echo lang('social_media_field_google'); ?></label>
                    <span class='help-inline'><?php echo form_error('google'); ?></span>
                </div>
            </div>

            <div class="inputer floating-label control-group<?php echo form_error('youtube') ? ' error' : ''; ?>">
                <?php echo form_label(lang('social_media_field_youtube'), 'youtube', array('class' => 'control-label')); ?>
                <div class='input-wrapper controls'>
                    <input class='form-control' id='youtube' type='text' name='youtube' maxlength='255' value="<?php echo set_value('youtube', isset($social_media->youtube) ? $social_media->youtube : ''); ?>" />
                        <label for='youtube'><?php echo lang('social_media_field_youtube'); ?></label>
                    <span class='help-inline'><?php echo form_error('youtube'); ?></span>
                </div>
            </div>
        </fieldset>
        <fieldset class='form-actions'>
            <input type='submit' name='save' class='btn btn-primary' value="<?php echo lang('social_media_action_create'); ?>" />
            <?php echo lang('bf_or'); ?>
            <?php echo anchor(SITE_AREA . '/utility/social_media', lang('social_media_cancel'), 'class="btn btn-warning"'); ?>
            
        </fieldset>
    <?php echo form_close(); ?>
    </div>
</div>