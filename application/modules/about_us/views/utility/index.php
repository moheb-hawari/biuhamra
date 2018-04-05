<?php

$num_columns	= 7;
$can_delete	= $this->auth->has_permission('About_Us.Utility.Delete');
$can_edit		= $this->auth->has_permission('About_Us.Utility.Edit');
$has_records	= isset($records) && is_array($records) && count($records);

if ($can_delete) {
    $num_columns++;
}
?>
<div class='admin-box panel'>
    
    <div class='panel-heading'>
	<h3>
		<div class='panel-title'><?php echo lang('about_us_area_title'); ?></div>
	</h3>
    </div>
    <div class='panel-body'>
	<?php echo form_open($this->uri->uri_string()); ?>
		<table class='table table-striped display datatables-basic'>
			<thead>
				<tr>
					<?php if ($can_delete && $has_records) : ?>
					<th class='sorting_asc_disabled column-check'><input class='check-all' type='checkbox' /></th>
					<?php endif;?>
					
					<th><?php echo lang('about_us_field_en_title'); ?></th>
					<th><?php echo lang('about_us_field_ar_title'); ?></th>
					<th><?php echo lang('about_us_field_en_description'); ?></th>
					<th><?php echo lang('about_us_field_ar_description'); ?></th>
					<th><?php echo lang('about_us_column_deleted'); ?></th>
					<th><?php echo lang('about_us_column_created'); ?></th>
					<th><?php echo lang('about_us_column_modified'); ?></th>
				</tr>
			</thead>
			<?php if ($has_records) : ?>
			<tfoot>
				<?php if ($can_delete) : ?>
				<tr>
					<td colspan='<?php echo $num_columns; ?>'>
						<?php echo lang('bf_with_selected'); ?>
						<button type='submit' name='delete' id='delete-me' class='btn btn-danger' value="<?php echo lang('bf_action_delete'); ?>" onclick="return confirm('<?php e(js_escape(lang('about_us_delete_confirm'))); ?>')" ><?php echo lang('bf_action_delete'); ?></button>
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
					<td><?php echo anchor(SITE_AREA . '/utility/about_us/edit/' . $record->id, '<span class="icon-pencil"></span> ' .  $record->en_title); ?></td>
				<?php else : ?>
					<td><?php e($record->en_title); ?></td>
				<?php endif; ?>
					<td><?php e($record->ar_title); ?></td>
					<td><?php e($record->en_description); ?></td>
					<td><?php e($record->ar_description); ?></td>
					<td><?php echo $record->deleted > 0 ? lang('about_us_true') : lang('about_us_false'); ?></td>
					<td><?php e($record->created_on); ?></td>
					<td><?php e($record->modified_on); ?></td>
				</tr>
				<?php
					endforeach;
				else:
				?>
				<tr>
					<td colspan='<?php echo $num_columns; ?>'><?php echo lang('about_us_records_empty'); ?></td>
				</tr>
				<?php endif; ?>
			</tbody>
		</table>
	<?php
    echo form_close();
   
    
    echo $this->pagination->create_links();
    ?>
     </div>
</div>