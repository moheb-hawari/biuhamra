<div id="hr_page" class="subpage_header" style="background-image: url('<?php echo assets_path() . 'images/hr_hd_bg.jpg'; ?>')">
    <div class="container">
        <div class="hd_main_cont">
            <div class="header_content">
                <div class="hr_hd_text">
                    <div class="text1"><?= site_text('“Human Resources isn’t a thing we do. It’s the thing that runs our business.”', '"الموارد البشرية ليست شيئا نقوم به. "إنه الشيء الذي يدير أعمالنا. "'); ?></div>
                    <div class="text2"><?= site_text('“Do not hire a man who does your work for<br>money, but him who does it for the love of it.”', '"لا تستأجر رجلا يقوم بعملك مقابل المال، بل هو الذي يفعل ذلك لمحبته".'); ?></div>
                </div>
            </div>
        </div>
    </div>
</div>
<?php echo Template::message(); ?>
<section class="main_sction hmn_res_sec">
    <div class="container">
        <div class="hres_ttle"><?=site_text('careers', 'الوظائف');?></div>
        <div class="h_res_cont">
            <?php if(!empty($careers)){ 
                $x=0;
                foreach($careers as $key => $val){ ?>
            <div class="sin_hr_sec">
                <div class="sin_job_ttle"><?php echo $val->{$lang.'_title'};?></div>
                <div class="sin_job_req"><?php echo $val->{$lang.'_description'};?></div>
                <div class="job_apply_con">
                    <div class="sin_job_code"><?=site_text('Job Code : '. $val->job_code, 'رمز الوظيفة : '. $val->job_code);?></div>
                    <div class="job_apply_btn">
                    <div class="sin_job_code">
                        <div class="job_apply_btn">
                            <button class="main_btn" data-toggle="modal" data-target="#panel-modal<?php echo $x; ?>"><?=site_text('Apply  Now', 'قدم الآن');?></button>
                        </div><!--.col-md-9-->
                    </div><!--.row-->
                    </div>
                </div>
            </div>
            <div class="modal fade full-height" id="panel-modal<?php echo $x; ?>" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title"><?=site_text('Apply  Now', 'قدم الآن');?></h4>
                </div>
                <?php echo form_open_multipart($this->uri->uri_string().'/send_career/', 'class="send_msg_form"'); ?>

                <div class="modal-body">
                    
                    <div class="control-group<?php echo form_error('email') ? ' error' : ''; ?>">
                    <?php echo form_label(lang('bf_email') , 'email', array('class' => 'control-label')); ?>
                    <div class="input-wrapper controls rtl-support">
                        <input type="email" id="en_comment" name='email'/>
                    </div> 
                    <span class='help-inline'><?php echo form_error('email'); ?></span>
                    <input type="file" name='cv' />
            </div>
                    <input type="hidden" name='career_number' value="<?php echo $val->id; ?>" />
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-flat-primary" data-dismiss="modal"><?=site_text('Cancel', 'إلغاء');?></button>
                    <button type="submit" name='submit' value="submit" class="btn btn-flat-primary"><?=site_text('Apply  Now', 'قدم الآن');?></button>
                </div>
                <?php echo form_close(); ?>

            </div>
        </div>
    </div><!--.modal-->
            <?php } $x++; } ?>
            
        </div>
    </div>
    
</section>