<div class="mn_head_cont">
    <div id="facilities_page" class="subpage_header" style="background-image: url('<?=assets_path();?>images/facilities/facil_hd_bg.jpg')">
       <div class="container">
           <div class="hd_main_cont">
               <div class="header_content">
                   <div class="facil_hd_text"><?=site_text('“The art of medicine consists of amusing the patient while nature cures the disease.”', '“فن الطب هي التخفيف عن المريض في حين يشفى المريض طبيعيا من المرض.”');?></div>
               </div>
           </div>
       </div>
   </div>
</div>
<section class="main_sction facilities_sec">
    <div class="container">
        <div class="facil_main_cont">
            <div class="facil_ttle"><?=site_text('Facilities', 'المرافق');?></div>
            <div class="facil_tab_btns text-center">
                <div class="fac_tb_btn phot_tb_btn active" tab="01"><?=site_text('Photos', 'الصور');?></div>
                <div class="fac_tb_btn vid_tb_btn" tab="02"><?=site_text('Videos', 'الفيديو');?></div>
            </div>
            <div class="facil_tab_cont">
                <div class="fac_tb_cont phot_tb_cont" tab="01">
                    <div class="fac_sld_btns">
                        <!-- Slider -->
                        <div class="swiper-container faci_slider">
                            <div class="swiper-wrapper">
                                <?php if(!empty($photo_gallery)){ $x =1;
                                    foreach($photo_gallery as $key => $val){ ?>
                                    <div class="swiper-slide sld_tab_btn" sld_tab="0<?php echo $x; ?>"><?php echo $val->{$lang.'_section'};?></div>
                                <?php  $x++; } } ?>
                                
                            </div>
                            <div class="swiper-button-next"></div>
                            <div class="swiper-button-prev"></div>
                        </div>
                    </div>
                    <div class="fac_sld_cont">
                        <?php if(!empty($photo_gallery)){ $x =1;
                                    foreach($photo_gallery as $key => $val){ ?>
                        <div class="sin_sld_cont" sld_tab="0<?php echo $x; ?>">
                            <div class="row">
                                <?php  $dir = FCPATH.'files/'.$val->id.'/*.{jpeg,gif,png,jpg}';
                                        $images = glob($dir, GLOB_BRACE); 
                                        if(!empty($images)){ $z=1;
                                            foreach($images as $image){
                                        ?>
                                
                                <div class="col-xs-12 col-sm-6 col-md-4">
                                    <a href="<?php echo base_url().'files/'.$val->id.'/'.basename($image); ?>" data-src="#mt01_st0<?php echo $x; ?>_0<?php echo $z; ?>" data-fancybox="mt01_st0<?php echo $x; ?>">
                                        <div class="fci_sin_med" style="background-image: url('<?php echo base_url().'files/'.$val->id.'/'.basename($image); ?>')">
                                            <div class="fci_sin_med_text"><?=site_text('Bouhamra Clinic', 'بوحمره كلينك');?></div>
                                        </div>
                                    </a>
                                    <div class="faci_hidden_cont" id="mt01_st0<?php echo $x; ?>_0<?php echo $z; ?>">
                                        <div class="faci_ppup_img" style="background-image: url('<?php echo base_url().'files/'.$val->id.'/'.basename($image); ?>')"></div>
                                        <div class="med_desc">
                                            <div class="med_ttle"><?=site_text('Bouhamra Clinic', 'بوحمره كلينك');?></div>
                                            <div class="med_txt"><?=site_text('Our value is Not just Healthcare.', 'قيمتنا ليست مجرد الرعاية الصحية.');?></div>
                                            <ul class="med_share text-center">
                                                <li><a href="#" class="facebook_lk"><i class="fab fa-facebook-f"></i></a></li>
                                                <li><a href="#" class="twitter_lk"><i class="fab fa-twitter"></i></a></li>
                                                <li><a href="#" class="google-plus_lk"><i class="fab fa-google-plus-g"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                        <?php  $z++; } } ?>
                            </div>
                        </div>
                        <?php $x++; } } ?>
                        
                    </div>
                </div>
                <div class="fac_tb_cont vid_tb_cont" tab="02">
                    <div class="fac_sld_btns">
                        <!-- Slider -->
                        <div class="swiper-container faci_slider">
                            <div class="swiper-wrapper">
                                <?php if(!empty($photo_gallery)){ $x =1;
                                    foreach($photo_gallery as $key => $val){ ?>
                                    <div class="swiper-slide sld_tab_btn" sld_tab="0<?php echo $x; ?>"><?php echo $val->{$lang.'_section'};?></div>
                                <?php  $x++; } } ?>
                            </div>
                            <div class="swiper-button-next"></div>
                            <div class="swiper-button-prev"></div>
                        </div>
                    </div>
                    <div class="fac_sld_cont">
                        <?php if(!empty($photo_gallery)){ $x =1;
                                    foreach($photo_gallery as $key => $val){ ?>
                                
                        <div class="sin_sld_cont" sld_tab="0<?php echo $x; ?>">
                            <div class="row">
                                <?php
                                $fields = array(
                                    'videos.id',
                                    'videos.department',
                                    'videos.link',
                                    'videos.thumbnil',
                                    'videos.status',
                                    'photo_gallery.en_section',
                                    );
                                $records = $this->videos_model->select($fields)
                                        ->join('photo_gallery','photo_gallery.id = videos.department')
                                        ->where(['videos.department'=>$val->id])
                                        ->find_all();
                                
                                if(!empty($records)){ 
                                    foreach($records as $record){ 
                                ?>
                                <div class="col-xs-12 col-sm-6 col-md-4">
                                    <a href="<?php echo $record->link; ?>" data-fancybox="mt02_st0<?php echo $x; ?>">
                                        <div class="fci_sin_med" style="background-image: url('<?php e(assets_path().'images/thumbnil/'.$record->id.'/'.$record->thumbnil); ?>')">
                                            <div class="fci_sin_med_text"><?php echo $val->{$lang.'_section'};?></div><div class="vid_pl_ico"></div>
                                        </div>
                                    </a>
                                </div>
                                <?php  } } ?>
                            </div>
                        </div>
                        <?php  $x++; } } ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>