<?php
include ('config.php');
$pageTitle = site_text('BOUHAMRA CLINIC', 'بوحمره كلينك');
$pageName = 'home';
?>
<header class="main_header">
    <div class="sm_wbnv_cont">
        <!--Header Social Media-->
        <div class="head_smed">
            <div class="container">
                <div class="hd_sm_cont">
                    <div class="site_lang"><a href="#" onclick="change_lang()"><?php e(lang('bf_nav_language')); ?></a></div>
                    <ul class="hd_sm_list">
                        <?php echo ($social_media->facebook != '')?'<li><a href="'.$social_media->facebook.'" target="_blank"><i class="fab fa-facebook-f"></i></a></li>':''; ?>
                            <?php echo ($social_media->twitter != '')?'<li><a href="'.$social_media->twitter.'" target="_blank"><i class="fab fa-twitter"></i></a></li>':''; ?>
                            <?php echo ($social_media->google != '')?'<li><a href="'.$social_media->google.'" target="_blank"><i class="fab fa-google-plus-g"></i></a></li>':''; ?>
                            <?php echo ($social_media->linkedin != '')?'<li><a href="'.$social_media->linkedin.'" target="_blank"><i class="fab fa-linkedin-in"></i></a></li>':''; ?>
                            <?php echo ($social_media->pinterest != '')?'<li><a href="'.$social_media->pinterest.'" target="_blank"><i class="fab fa-snapchat-ghost"></i></a></li>':''; ?>
                            <?php echo ($social_media->instagram != '')?'<li><a href="'.$social_media->instagram.'" target="_blank"><i class="fab fa-instagram"></i></a></li>':''; ?>

                    </ul>
                </div>
            </div>
        </div>
        <!--Web Navbar-->
        <nav class="web_nav hidden-xs">
            <div class="container">
                <div class="wb_nv_cont">
                    <div class="nav_logo">
                        <a href="<?php echo site_url().'/'.lang('bf_language_direction'); ?>">
                            <img class="img-responsive center-block" src="<?php echo assets_path() . 'images/home_page/nav_log.png';?>">
                        </a>
                    </div>
                    <div class="nav_lks">
                        <ul class="nav_lk_list">
                            <li<?=($this->uri->segment(2) == null)?' class="active"':'';?>><a href="<?php echo site_url().'/'.lang('bf_language_direction'); ?>"><span><?= lang('bf_home_nav_title');?></span></a></li>
                            <li class="scroll_to_sec<?=($this->uri->segment(2) == null)?' about_clinic':'';?>"><a href="<?php echo site_url().'/'.lang('bf_language_direction').'?id=about_clinic';?>" <?=($this->uri->segment(2) == null)?'class="scroll_lk"':'';?>><span><?= lang('bf_about_nav_title');?></span></a></li>
                            <li<?=($this->uri->segment(2) == 'departments')?' class="active"':'';?>>
                                <div class="sub_menu">
                                    <a class="sub_mneu_ttle"><span><?= lang('departments_nav_title');?></span></a>
                                    <ul class="web_sbmnu_lst">
                                        <?php
                                        if(!empty($departments))
                                        {
                                            foreach($departments as $key => $val)
                                            { ?>
                                                <li><a href="<?php echo site_url().'/'.lang('bf_language_direction').'/departments/index/'.$val->id; ?>"><?php echo $val->{$lang.'_title'};?></a></li>

                                            <?php } } ?>
                                    </ul>
                                </div>
                            </li>
                            <li<?=($this->uri->segment(2) == 'doctors')?' class="active"':'';?>><a href="<?php echo site_url().'/'.lang('bf_language_direction').'/doctors'; ?>"><span><?= lang('bf_doctors_nav_title');?></span></a></li>
                            <li<?=($this->uri->segment(2) == 'administration' || $this->uri->segment(2) == 'careers')?' class="active"':'';?>><a href="<?php echo site_url().'/'.lang('bf_language_direction').'/photo_gallery'; ?>"><span><?= lang('bf_facilities_nav_title');?></span></a></li>
                            <li<?=(isset($pageName) && $pageName == 'human_res')?' class="active"':'';?>>
                                <div class="sub_menu">
                                    <a class="sub_mneu_ttle"><span><?= lang('bf_human_nav_title');?></span></a>
                                    <ul class="web_sbmnu_lst">
                                        <li><a href="<?php echo site_url().'/'.lang('bf_language_direction').'/administration'; ?>"><?= lang('bf_admin_nav_title');?></a></li>
                                        <li><a href="<?php echo site_url().'/'.lang('bf_language_direction').'/careers'; ?>"><?= lang('bf_careers_nav_title');?></a></li>
                                    </ul>
                                </div>
                            </li>
                            <li class="scroll_to_sec<?=($this->uri->segment(2) == null)?' cont_clinic':'';?>"><a href="<?php echo site_url().'/'.lang('bf_language_direction').'?id=cont_clinic'; ?>" <?=($this->uri->segment(2) == null)?'class="scroll_lk"':'';?>><span><?= lang('bf_contact_nav_title');?></span></a></li>
                        </ul>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </nav>
    </div>
    <!--mobile Navbar-->
    <nav class="mob_nav visible-xs-block">
        <div class="container">
            <div class="mob_nv_cont">
                <div class="nav_logo">
                    <a href="index.php">
                        <img class="img-responsive center-block" src="<?php echo assets_path() . 'images/home_page/nav_log.png';?>">
                    </a>
                </div>
                <div class="mob_lks_cont">
                    <div class="mob_nv_btn"><i class="fas fa-bars"></i></div>
                    <ul class="mob_lks_list">
                        <li<?=($this->uri->segment(2) == null)?' class="active"':'';?>><a href="<?php echo site_url().'/'.lang('bf_language_direction'); ?>"><span><?= lang('bf_home_nav_title');?></span></a></li>
                        <li class="scroll_to_sec<?=($this->uri->segment(2) == null)?' about_clinic':'';?>"><a href="<?php echo site_url().'/'.lang('bf_language_direction').'?id=about_clinic';?>" <?=($this->uri->segment(2) == null)?'class="scroll_lk"':'';?>><span><?= lang('bf_about_nav_title');?></span></a></li>
                        <li<?=($this->uri->segment(2) == 'departments')?' class="active"':'';?> id="sub_item_menu">
                            <div class="sub_menu">
                                <a class="sub_mneu_ttle"><span><?= lang('bf_departments_nav_title');?></span></a>
                                <div class="visible-xs-block mob_sub_btn"></div>
                                <ul class="mob_sbmnu_lst">
                                    <?php
                                        if(!empty($departments))
                                        {
                                            foreach($departments as $key => $val)
                                            { ?>
                                            <li><a href="<?php echo site_url().'/'.lang('bf_language_direction').'/departments/index/'.$val->id; ?>"><?php echo $val->{$lang.'_title'};?></a></li>
                                           
                                    <?php } } ?>
                                </ul>
                            </div>
                        </li>
                        <li<?=($this->uri->segment(2) == 'doctors')?' class="active"':'';?>><a href="<?php echo site_url().'/'.lang('bf_language_direction').'/doctors'; ?>"><span><?= lang('bf_doctors_nav_title');?></span></a></li>
                        <li<?=($this->uri->segment(2) == 'administration' || $this->uri->segment(2) == 'careers')?' class="active"':'';?>><a href="#"><span><?= lang('bf_facilities_nav_title');?></span></a></li>
                        <li<?=(isset($pageName) && $pageName == 'human_res')?' class="active"':'';?> id="sub_item_menu">
                            <div class="sub_menu">
                                <a class="sub_mneu_ttle"><span><?= lang('bf_human_nav_title');?></span></a>
                                <div class="visible-xs-block mob_sub_btn"></div>
                                <ul class="mob_sbmnu_lst">
                                    <li><a href="<?php echo site_url().'/'.lang('bf_language_direction').'/administration'; ?>"><?= lang('bf_admin_nav_title');?></a></li>
                                    <li><a href="<?php echo site_url().'/'.lang('bf_language_direction').'/careers'; ?>"><?= lang('bf_careers_nav_title');?></a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="scroll_to_sec<?=($this->uri->segment(2) == null)?' cont_clinic':'';?>"><a href="<?php echo site_url().'/'.lang('bf_language_direction').'?id=cont_clinic'; ?>" <?=($this->uri->segment(2) == null)?'class="scroll_lk"':'';?>><span><?= lang('bf_contact_nav_title');?></span></a></li>
                    </ul>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </nav>
</header>