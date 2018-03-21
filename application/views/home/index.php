<!-- ========================================= Homepage ========================================= -->
        <!--Header Slider-->
        <div class="swiper-container header_slider">
            <div class="swiper-wrapper">
            <?php
            if(!empty($slider)){
                foreach($slider as $key => $val){ ?>
                        <div class="swiper-slide">
                            <div class="sin_slide" style="background-image: url(<?php echo assets_path() . 'images/image/'.$val->id.'/'.$val->image; ?>">
                                <div class="container">
                                    <div class="sin_slide_cont">
                                        <div class="sin_slide_text">
                                            <div class="slide_ttle"><?php echo $val->{$lang.'_title'};?></div>
                                            <div class="slide_desc"><?php echo $val->{$lang.'_description'};?></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
            <?php } } ?>

            </div>

            <div class="swiper-button-prev"></div>
            <div class="swiper-button-next"></div>
            <!--Clinic Bio-->
            <div class="clinic_discip">
                <?php
                if(!empty($about)){
                    foreach($about as $key => $val){ ?>
                        <div class="sin_discip">
                            <div class="discip_ico">
                                <img class="img-responsive center-block" src="<?php echo assets_path() . 'images/logo/'.$val->id.'/'.$val->logo;?>">
                            </div>
                            <div class="discip_ttle"><?php echo $val->{$lang.'_title'};?></div>
                            <div class="discip_desc"><?php echo $val->{$lang.'_description'};?></div>
                        </div>
                    <?php } } ?>

            </div>
        </div>
        <!-- ========================================= About The Clinic Start ========================================= -->
<section class="main_sction about_clinic_sec" id="about_clinic">
    <div class="container">
        <div class="abt_clin_cont">
            <h1 class="sec_title text-center"><?php echo $about_us->{$lang.'_title'};?></h1>
            <div class="abt_clin_desc"><?php echo $about_us->{$lang.'_description'};?></div>
        </div>
    </div>
</section>
<!-- About The Clinic End -->
<!-- ========================================= Departments Section Start ========================================= -->
<section class="main_sction departs_sec" style="background-image: url(<?php echo assets_path() . 'images/home_page/depart_sec/dep_sec_bg.jpg';?>);">
    <div class="container">
        <div class="dep_sec_cont">
            <div class="tabs_btns_cont">
                <div class="tab_intro">
                    <div class="tabs_title"><?= lang('bf_tab_departments_title');?></div>
                    <div class="tabs_intro"><?= lang('bf_tab_departments_desc');?></div>
                </div>
                <!--tabs btns-->
                <div class="dep_tabs_btns">
                    <?php
                        if(!empty($departments_tabs)){ $x =1;
                            foreach($departments_tabs as $key => $val){ ?>
                                <div class="sin_tab_btn <?php echo $x==1?'active':''; ?>" tab="0<?php echo $x; ?>"><span class="stab_txt" title="<?php echo $val->{$lang.'_title'};?>"><?php echo $val->{$lang.'_title'};?></span></div>
                    <?php $x++;} } ?>
                </div>
            </div>
            <div class="tabs_contents_cont">
                <?php
                    if(!empty($departments_tabs)){ $x =1;
                        foreach($departments_tabs as $key => $val){ ?>
                            <div class="sin_tab_cont" tab="0<?php echo $x; ?>">
                                <div class="tab_detail">
                                    <div class="tab_det_ttle" title="<?php echo $val->{$lang.'_title'};?>"><?php echo $val->{$lang.'_title'};?></div>
                                    <div class="tab_det_desc"><?php echo $val->{$lang.'_description'};?></div>
                                    <a href="<?php echo site_url().'/'.lang('bf_language_direction').'/departments/index/'.$val->id; ?>" class="main_btn tab_read_more"><?= lang('bf_read_more');?></a>
                                </div>
                                <div class="tab_img" style="background-image: url('<?php echo assets_path() . 'images/dep_image/'.$val->id.'/'.$val->dep_image;?>');"></div>
                            </div>
                <?php $x++;} } ?>
            </div>
        </div>
    </div>
</section>
<!-- Departments Section End -->

        <!-- ========================================= Our Team Section Start ========================================= -->
<section class="main_sction our_team_sec">
    <div class="container">
        <div class="our_tm_cont">
            <div class="our_team_intro">
                <div class="our_team_ttle"><?= lang('bf_meet');?> <b><?= lang('bf_our_team');?></b></div>
                <div class="our_team_desc"><?php echo $meet_our_team[0]->{$lang.'_home_description'};?></div>
                <div class="rd_more_btn_cont"><a href="<?php echo site_url().'/'.lang('bf_language_direction').'/doctors'; ?>" class="main_btn"><?= lang('bf_read_more');?></a></div>

            </div>
            <div class="our_team_imgs">
                <?php
                    if(!empty($doctors)){ 
                        foreach($doctors as $key => $val){ ?>
                
                        <div class="sin_doc_img" style="background-image: url('<?php echo assets_path() . 'images/personal_photo/'.$val->id.'/'.$val->personal_photo;?>');">
                            <div class="sin_doc_det">
                                <div class="doc_name"><?php echo $val->{$lang.'_name'};?></div>
                                <div class="doc_spec"><?php echo $val->{$lang.'_academic'};?></div>
                                <div class="doc_soc_md">
                                    <ul class="doc_sm_list">
                                        <li><a href="<?php echo $val->facebook;?>" target="_blank" class="facebook_lk"><i class="fab fa-facebook-f"></i></a></li>
                                        <li><a href="<?php echo $val->twitter;?>" target="_blank" class="twitter_lk"><i class="fab fa-twitter"></i></a></li>
                                        <li><a href="<?php echo $val->google;?>" target="_blank" class="google-plus_lk"><i class="fab fa-google-plus-g"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                 <?php } } ?>
                
            </div>
        </div>
    </div>
</section>
<!-- Our Team Section End -->


<?php 
if(!empty($patients_say)){ 
    
    ?>
<!-- ========================================= Testimonial Slider Start ========================================= -->
<section class="main_sction testim_sec" style="background-image: url(<?php echo assets_path() . 'images/home_page/testim_slider/01.jpg';?>);">
    <div class="sec_overlay">
        <div class="container">
            <div class="testim_cont">
                <div class="testim_ttle"><?= lang('bf_patients_say');?></div>
                <div class="swiper-container testim_slider">
                    <div class="swiper-wrapper">
                        <?php
                        if(!empty($patients_say)){ 
                            foreach($patients_say as $key => $val){ ?>
                            <div class="swiper-slide sin_testim_silde">
                                <div class="sin_patient_testim">
                                    <div class="patient_txt"><cite><?php echo $val->{$lang.'_comment'};?></cite></div>
                                    <div class="patient_name"><b><?php echo $val->{$lang.'_name'};?></b></div>
                                    <div class="patient_job"><?php echo $val->{$lang.'_job_title'};?></div>
                                </div>
                            </div>
                            <?php } } ?>
                    </div>
                    <div class="swiper-button-prev"></div>
                    <div class="swiper-button-next"></div>
                </div>
            </div>
        </div>
    </div>
</section>

<?php } ?>
<!-- Testimonial Slider End -->
        <!-- ========================================= Message - FAQ Section Start ========================================= -->
<section class="main_sction mess_faq_sec">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-6">
                <div class="msg_faq_con msg_frm_cont">
                    <div class="msg_faq_intro">
                        <div class="msg_faq_ttle"><?= lang('bf_send_message');?></div>
                        <div class="msg_faq_bio"><?= lang('bf_send_desc');?></div>
                    </div>
                    <!--Send Us Message Form-->
                    <form class="send_msg_form">
                        <div class="form_ipt_cont">
                            <label><?= lang('bf_contact_name');?></label>
                            <input name="name" type="text" placeholder="<?= lang('bf_contact_name_place');?>">
                        </div>
                        <div class="form_ipt_cont">
                            <label><?= lang('bf_contact_email');?></label>
                            <input name="email" type="email" placeholder="<?= lang('bf_contact_email_place');?>">
                        </div>
                        <div class="form_ipt_cont">
                            <label><?= lang('bf_contact_mobile');?></label>
                            <input name="phone" type="text" placeholder="<?= lang('bf_contact_mobile_place');?>">
                        </div>
                        <div class="form_ipt_cont">
                            <label><?= lang('bf_contact_message');?></label>
                            <input type="text" name="message" placeholder="<?= lang('bf_contact_message_place');?>"></input>
                        </div>
                        <div class="frm_confirm">
                            <input type="submit" class="main_btn" value="<?= lang('bf_contact_send');?>">
                        </div>
                    </form>
                </div>
            </div>
            <div class="col-xs-12 col-sm-6">
                <div class="msg_faq_con">
                    <div class="msg_faq_intro">
                        <div class="msg_faq_ttle"><?= lang('bf_have_question');?></div>
                        <div class="msg_faq_bio"><?= lang('bf_have_question_desc');?></div>
                    </div>
                    <!--FAQ Accordion-->
                    <div class="faq_accordion">
                        <?php
                        if(!empty($faq)){ $x=1;
                            foreach($faq as $key => $val){ ?>
                                <div class="sin_accdn">
                                    <div class="acc_ttle <?php echo $x==1?'active':''; ?>"><?php echo $val->{$lang.'_title'};?></div>
                                    <div class="acc_desc"><?php echo $val->{$lang.'_description'};?></div>
                                </div>
                        <?php $x++;} } ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Message - FAQ Section End -->
        <!-- ========================================= Location Section Start ========================================= -->
         <?php
                if(!empty($locations)){ ?>
<div class="map_cont">
    <div id="loc_map"></div>
</div>
        
                <?php } ?>
<div class="boh_work_time text-center">
    <div class="container">
        <div class="wday_ico"><img class="img-responsive" src="<?php echo assets_path() . 'images/home_page/wday_ico.png';?>"></div>
        <div class="sin_wday">
            <span><?=site_text('Saturday to Thursday :', 'السبت الى الخميس: ');?></span>
            <span>08:30 - 12:30, 16:30 - 20:30</span>
        </div>
        <div class="sin_wday">
            <span><?=site_text('Friday :', 'الجمعة :');?></span>
            <span><?=site_text('Closed', 'عطلة');?></span>
        </div>
    </div>
</div>
<script>
    function bouhamraMap() {
        var mapProp= {
            center:new google.maps.LatLng(<?php echo $locations[0]->latitude;?>, <?php echo $locations[0]->longitude;?>),
            zoom:17
        };
        var map=new google.maps.Map(document.getElementById("loc_map"),mapProp);
        var myLatLng = {
            <?php
                if(!empty($locations)){ 
                    foreach($locations as $key => $val){ ?>
                        lat: <?php echo $val->latitude;?>, lng: <?php echo $val->longitude;?>
            <?php } } ?>
        };
        var marker = new google.maps.Marker({
            position: myLatLng,
            map: map,
            title: 'Bouhamra Clinic'
        });
    }
</script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBj2BpkNnoDi2jn8kOqX-uEsdPqbShXhqM&callback=bouhamraMap"></script>
<!-- Location Section End -->