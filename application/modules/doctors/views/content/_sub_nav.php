<?php

$checkSegment = $this->uri->segment(4);
$areaUrl = SITE_AREA . '/content/doctors';

?>
<ul class=' nav-pills sub-nav'>
	<li>
		<a class='btn btn-indigo btn-ripple' href="<?php echo site_url($areaUrl); ?>" id='list'>
            <?php echo lang('doctors_list'); ?>
        </a>
	</li>
	<?php if ($this->auth->has_permission('Doctors.Content.Create')) : ?>
	<li>
		<a class='btn btn-green btn-ripple' href="<?php echo site_url($areaUrl . '/create'); ?>" id='create_new'>
            <?php echo lang('doctors_new'); ?>
        </a>
	</li>
	<?php endif; ?>
</ul>