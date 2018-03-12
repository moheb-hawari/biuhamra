<section class="main_sction">
    <div class="container">
        <div class="sin_dep_cont">
            <div class="sin_dep_ttle"><?=site_text('Doctors', 'الأطباء');?></div>
            <div class="doctors_fdet dep_doc_cont">
                <div class="row">
                    
                    <?php if(!empty($doctors)){ 
                        foreach($doctors as $key => $val){ ?>
                            <div class="col-xs-12 col-sm-6 col-md-4">
                                <a href="<?php echo site_url().'/'.lang('bf_language_direction').'/doctors/doctor/'.$val->id; ?>">
                                    <div class="dep_sin_doc text-center">
                                        <div class="dep_ttle"><?php echo $val->{$lang.'_job_title'};?></div>
                                        <div class="doc_img" style="background-image: url('<?php echo assets_path() .'images/personal_photo/'.$val->id.'/'.$val->personal_photo;?>')"></div>
                                        <div class="doc_detls">
                                            <div class="doc_detls_name"><?php echo $val->{$lang.'_name'};?></div>
                                            <div class="doc_detls_spec"><?php echo $val->{$lang.'_academic'};?></div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                    <?php } } ?>
                </div>
            </div>
        </div>
    </div>
</section>