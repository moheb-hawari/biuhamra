<div id="hr_page" class="subpage_header" style="background-image: url('<?php echo assets_path() .'images/hr_hd_bg.jpg';?>')">
            <div class="container">
                <div class="hd_main_cont">
                    <div class="header_content">
                        <div class="hr_hd_text">
                            <div class="text1"><?=site_text('“Human Resources isn’t a thing we do. It’s the thing that runs our business.”', '"الموارد البشرية ليست شيئا نقوم به. "إنه الشيء الذي يدير أعمالنا. "');?></div>
                            <div class="text2"><?=site_text('“Do not hire a man who does your work for<br>money, but him who does it for the love of it.”', '"لا تستأجر رجلا يقوم بعملك مقابل المال، بل هو الذي يفعل ذلك لمحبته".');?></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
<section class="main_sction hmn_res_sec">
    <div class="container">
        <div class="hres_ttle"><?=site_text('Administration & Staff', 'موظفو الإدارة');?></div>
        <div class="h_res_cont">
            
            <?php if(!empty($doctors)){ 
                foreach($doctors as $key => $val){ ?>
                    <div class="sin_hr_sec">
                        <div class="sin_admin_img" style="background-image: url('<?php echo assets_path() .'images/personal_photo/'.$val->id.'/'.$val->personal_photo;?>')"></div>
                        <div class="sin_admin_info">
                            <div class="admin_info_cont">
                                <div class="adm_name"><?php echo $val->{$lang.'_name'};?></div>
                                <div class="adm_pos"><?php echo $val->{$lang.'_job_title'};?></div>
                            </div>
                        </div>
                    </div>
            <?php } } ?>
            
        </div>
    </div>
</section>