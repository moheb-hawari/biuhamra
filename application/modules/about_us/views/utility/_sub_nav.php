<?php

$checkSegment = $this->uri->segment(4);
$areaUrl = SITE_AREA . '/utility/about_us';

?>
<ul class=' nav-pills sub-nav'>
	<li>
		<a class='btn btn-indigo btn-ripple' href="<?php echo site_url($areaUrl); ?>" id='list'>
            <?php echo lang('about_us_list'); ?>
        </a>
	</li>
	<?php if ($this->auth->has_permission('About_Us.Utility.Create')) : ?>
	<li>
		<a class='btn btn-green btn-ripple' href="<?php echo site_url($areaUrl . '/create'); ?>" id='create_new'>
            <?php echo lang('about_us_new'); ?>
        </a>
	</li>
	<?php endif; ?>
</ul>