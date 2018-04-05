<?php

$num_columns	= 10;
$can_delete	= $this->auth->has_permission('About.Homepage.Delete');
$can_edit		= $this->auth->has_permission('About.Homepage.Edit');
$has_records	= isset($records) && is_array($records) && count($records);

if ($can_delete) {
    $num_columns++;
}
?>
<div class='admin-box panel'>
    
    <div class='panel-heading'>
	<h3>
		<div class='panel-title'><?php echo lang('about_area_title'); ?></div>
	</h3>
    </div>
    <div class='panel-body'>
	<?php echo form_open($this->uri->uri_string()); ?>
		<table class='table table-striped display datatables-basic'>
			<thead>
				<tr>
					
					
					<th><?php echo lang('about_field_en_title'); ?></th>
					<th><?php echo lang('about_field_logo'); ?></th>
				</tr>
			</thead>
			<?php if ($has_records) : ?>
			
			<?php endif; ?>
			<tbody>
				<?php
				if ($has_records) :
					foreach ($records as $record) :
				?>
				<tr>
					
					
				<?php if ($can_edit) : ?>
					<td><?php echo anchor(SITE_AREA . '/homepage/about/edit/' . $record->id, '<span class="icon-pencil"></span> ' .  $record->en_title); ?></td>
				<?php else : ?>
					<td><?php e($record->en_title); ?></td>
				<?php endif; ?>
                                        <td><img width="100px" height="100px" src="<?php e(assets_path().'images/logo/'.$record->id.'/'.$record->logo) ?>"/></td>
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
