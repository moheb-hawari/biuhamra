<?php
if (validation_errors()) :
    ?>
    <div class='alert alert-block alert-error fade in'>
        <a class='close' data-dismiss='alert'>&times;</a>
        <div class='alert alert-danger'>
            <h4 class='alert-heading'>
                <?php echo lang('photo_gallery_errors_message'); ?>
            </h4>
            <?php echo validation_errors(); ?>
        </div>
    </div>
    <?php
endif;

$id = isset($photo_gallery->id) ? $photo_gallery->id : '';
?>
<div class='admin-box panel'>
    <div class='panel-heading'>
        <div class='panel-title'><h3>Photo Gallery</h3></div>
    </div>
    <div class='panel-body'>
<?php echo form_open($this->uri->uri_string(), 'class="form-horizontal"'); ?>
        <fieldset>


            <div class="inputer floating-label control-group<?php echo form_error('en_section') ? ' error' : ''; ?>">
                <?php echo form_label(lang('photo_gallery_field_en_section') . lang('bf_form_label_required'), 'en_section', array('class' => 'control-label')); ?>
                <div class='input-wrapper controls'>
                    <input class='form-control' id='en_section' type='text' required='required' name='en_section' maxlength='255' value="<?php echo set_value('en_section', isset($photo_gallery->en_section) ? $photo_gallery->en_section : ''); ?>" />
                    <label for='en_section'><?php echo lang('photo_gallery_field_en_section'); ?></label>
                    <span class='help-inline'><?php echo form_error('section'); ?></span>
                </div>
            </div>
            <div class="inputer floating-label control-group<?php echo form_error('ar_section') ? ' error' : ''; ?>">
                <?php echo form_label(lang('photo_gallery_field_ar_section') . lang('bf_form_label_required'), 'ar_section', array('class' => 'control-label')); ?>
                <div class='input-wrapper controls'>
                    <input class='form-control' id='ar_section' type='text' required='required' name='ar_section' maxlength='255' value="<?php echo set_value('ar_section', isset($photo_gallery->ar_section) ? $photo_gallery->ar_section : ''); ?>" />
                    <label for='ar_section'><?php echo lang('photo_gallery_field_ar_section'); ?></label>
                    <span class='help-inline'><?php echo form_error('section'); ?></span>
                </div>
            </div>

<?php
// Change the values in this array to populate your dropdown as required
$options = [0];
if ($weight != null) {
    for ($i = 1; $i <= $weight; $i++) {
        $options[] = $i;
    }
}
echo form_dropdown(array('name' => 'weight', 'class' => 'selectpicker', 'required' => 'required'), $options, set_value('weight', isset($photo_gallery->weight) ? $photo_gallery->weight : ''), lang('photo_gallery_field_weight') . lang('bf_form_label_required'));
?>

            <?php
            // Change the values in this array to populate your dropdown as required
            $options = array(
                0 => 'Active',
                1 => 'Inactive',
            );
            echo form_dropdown(array('name' => 'status', 'class' => 'selectpicker', 'required' => 'required'), $options, set_value('status', isset($photo_gallery->status) ? $photo_gallery->status : ''), lang('photo_gallery_field_status') . lang('bf_form_label_required'));
            ?>
        </fieldset>
        <fieldset>

        </fieldset>
        <fieldset class='form-actions'>
            <input type='submit' name='save' class='btn btn-primary' value="<?php echo lang('photo_gallery_action_edit'); ?>" />
        <?php echo lang('bf_or'); ?>
        <?php echo anchor(SITE_AREA . '/facilities/photo_gallery', lang('photo_gallery_cancel'), 'class="btn btn-warning"'); ?>

        </fieldset>
        <?php echo form_close(); ?>
    </div>
</div>

            