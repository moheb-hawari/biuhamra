<?php

$num_columns	= 4;
$can_delete	= $this->auth->has_permission('Videos.Facilities.Delete');
$can_edit		= $this->auth->has_permission('Videos.Facilities.Edit');
$has_records	= isset($records) && is_array($records) && count($records);

if ($can_delete) {
    $num_columns++;
}
?>
<div class='admin-box panel'>
    
    <div class='panel-heading'>
	<h3>
		<div class='panel-title'><?php echo lang('videos_area_title'); ?></div>
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
					
					<th><?php echo lang('videos_field_department'); ?></th>
					<th><?php echo lang('videos_field_link'); ?></th>
					<th><?php echo lang('videos_field_thumbnil'); ?></th>
					<th><?php echo lang('videos_field_status'); ?></th>
				</tr>
			</thead>
			<?php if ($has_records) : ?>
			<tfoot>
				<?php if ($can_delete) : ?>
				<tr>
					<td colspan='<?php echo $num_columns; ?>'>
						<?php echo lang('bf_with_selected'); ?>
						<button type='submit' name='delete' id='delete-me' class='btn btn-danger' value="<?php echo lang('bf_action_delete'); ?>" onclick="return confirm('<?php e(js_escape(lang('videos_delete_confirm'))); ?>')" ><?php echo lang('bf_action_delete'); ?></button>
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
					<td><?php echo anchor(SITE_AREA . '/facilities/videos/edit/' . $record->id, '<span class="icon-pencil"></span> ' .  $record->en_section); ?></td>
				<?php else : ?>
					<td><?php e($record->en_title); ?></td>
				<?php endif; ?>
					<td><?php e($record->link); ?></td>
					<td><img width="100px" height="100px" src="<?php e(assets_path().'images/thumbnil/'.$record->id.'/'.$record->thumbnil) ?>"/></td>
					<td><?php e($record->status==0?'Active':'Inactive'); ?></td>
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