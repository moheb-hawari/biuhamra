<?php

$num_columns	= 10;
$can_delete	= $this->auth->has_permission('Social_Media.Utility.Delete');
$can_edit		= $this->auth->has_permission('Social_Media.Utility.Edit');
$has_records	= isset($records) && is_array($records) && count($records);

if ($can_delete) {
    $num_columns++;
}
?>
<div class='admin-box panel'>
    
    <div class='panel-heading'>
	<h3>
		<div class='panel-title'><?php echo lang('social_media_area_title'); ?></div>
	</h3>
    </div>
    <div class='panel-body'>
	<?php echo form_open($this->uri->uri_string()); ?>
		<table class='table table-striped display datatables-basic'>
			<thead>
				<tr>
					<?php if ($can_delete && $has_records) : ?>
					<th class='column-check'><input class='check-all' type='checkbox' /></th>
					<?php endif;?>
					
					<th><?php echo lang('social_media_field_facebook'); ?></th>
					<th><?php echo lang('social_media_field_twitter'); ?></th>
					<th><?php echo lang('social_media_field_instagram'); ?></th>
					<th><?php echo lang('social_media_field_pinterest'); ?></th>
					<th><?php echo lang('social_media_field_linkedin'); ?></th>
					<th><?php echo lang('social_media_field_google'); ?></th>
					<th><?php echo lang('social_media_field_youtube'); ?></th>
				</tr>
			</thead>
			<?php if ($has_records) : ?>
			<tfoot>
				<?php if ($can_delete) : ?>
				<tr>
					<td colspan='<?php echo $num_columns; ?>'>
						<?php echo lang('bf_with_selected'); ?>
						<button type='submit' name='delete' id='delete-me' class='btn btn-danger' value="<?php echo lang('bf_action_delete'); ?>" onclick="return confirm('<?php e(js_escape(lang('social_media_delete_confirm'))); ?>')" ><?php echo lang('bf_action_delete'); ?></button>
					</td>
				</tr>
				<?php endif; ?>
			</tfoot>
			<?php endif; ?>
			<tbody>
				<?php
				if ($has_records) :
					foreach ($records as $record) :
				?>
				<tr>
					<?php if ($can_delete) : ?>
					<td class='column-check'><input type='checkbox' name='checked[]' value='<?php echo $record->id; ?>' /></td>
					<?php endif;?>
					
				<?php if ($can_edit) : ?>
					<td><?php echo anchor(SITE_AREA . '/utility/social_media/edit/' . $record->id, '<span class="icon-pencil"></span> ' .  $record->facebook); ?></td>
				<?php else : ?>
					<td><?php e($record->facebook); ?></td>
				<?php endif; ?>
					<td><?php e($record->twitter); ?></td>
					<td><?php e($record->instagram); ?></td>
					<td><?php e($record->pinterest); ?></td>
					<td><?php e($record->linkedin); ?></td>
					<td><?php e($record->google); ?></td>
					<td><?php e($record->youtube); ?></td>
				</tr>
				<?php
					endforeach;
				endif; ?>
			</tbody>
		</table>
	<?php
    echo form_close();
   
    
    echo $this->pagination->create_links();
    ?>
     </div>
</div>