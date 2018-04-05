<div class="mn_head_cont">
    <div id="doctors_page" class="subpage_header doc_fdet_hd" style="background-image: url('<?php echo assets_path() .'images/cover_image/'.$doctor->id.'/'.$doctor->cover_image;?>')"></div>
</div>

<section class="main_sction doc_fdet_sec">
    <div class="container">
        <div class="doc_fdet_cont">
            <div class="doc_fdet_card">
                <div class="row">
                    <div class="col-xs-12 col-sm-5">
                        <div class="doc_fdet_img" style="background-image: url('<?php echo assets_path() .'images/personal_photo/'.$doctor->id.'/'.$doctor->personal_photo;?>')"></div>
                    </div>
                    <div class="col-xs-12 col-sm-7">
                        <div class="doc_fdet_bio">
                            <div class="doc_fdet_name"><?php echo $doctor->{$lang.'_name'};?></div>
                            <div class="doc_fdet_pos"><?php echo $doctor->{$lang.'_job_title'};?></div>
                            <div class="doc_fdet_deg"><?php echo $doctor->{$lang.'_academic'};?></div><!--add edu degree to cms-->
                        </div>
                    </div>
                </div>
            </div>
            <div class="doc_fdet_text">
            <?php echo $doctor->{$lang.'_description'};?>    
            </div>
        </div>
    </div>
</section>