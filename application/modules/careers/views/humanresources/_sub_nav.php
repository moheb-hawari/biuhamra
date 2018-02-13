<?php

$checkSegment = $this->uri->segment(4);
$areaUrl = SITE_AREA . '/humanresources/careers';

?>
<ul class=' nav-pills sub-nav'>
	<li>
		<a class='btn btn-indigo btn-ripple' href="<?php echo site_url($areaUrl); ?>" id='list'>
            <?php echo lang('careers_list'); ?>
        </a>
	</li>
	<?php if ($this->auth->has_permission('Careers.Humanresources.Create')) : ?>
	<li>
		<a class='btn btn-green btn-ripple' href="<?php echo site_url($areaUrl . '/create'); ?>" id='create_new'>
            <?php echo lang('careers_new'); ?>
        </a>
	</li>
	<?php endif; ?>
</ul>