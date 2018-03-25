    <?php if ( ! isset($show) || $show == true) : ?>

<footer class="main_footer">
    <div class="container">
        <div class="footer_cont">
            <div class="row">
                <div class="col-xs-12 col-sm-4 col-md-2">
                    <div class="sin_ftr_sec">
                        <div class="ftr_ttle"><?= lang('bf_hot_line');?></div>
                        <div class="ftr_desc"><?php echo $information->{$lang.'_ddress'};?></div>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-4 col-md-3">
                    <div class="sin_ftr_sec">
                        <div class="ftr_ttle"><?= lang('bf_support');?></div>
                        <div class="ftr_desc"><?php echo $information->support;?></div>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-4 col-md-2">
                    <div class="sin_ftr_sec">
                        <div class="ftr_ttle"><?= lang('bf_hot_line');?></div>
                        <div class="ftr_desc ph_num"><?php echo $information->hot_line;?></div>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-5">
                    <div class="ftr_soc_md">
                        <ul class="ftr_soc_md_list text-center">
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
        </div>
    </div>
    <div class="footer_cpyright"><?=site_text('All rights reserved', 'جميع الحقوق محفوظة');?> <a href="<?php echo site_url().'/'.lang('bf_language_direction'); ?>">bouhamraclinickw.com</a> &copy; <?=date("Y");?></div>
    </footer>



    <?php endif; ?>
	<div id="debug"><!-- Stores the Profiler Results --></div>
    <!-- Grab Google CDN's jQuery, with a protocol relative URL; fall back to local if offline -->
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="<?php echo js_path(); ?>jquery-1.7.2.min.js"><\/script>');</script>
    <?php echo Assets::js(); ?>
    <script>
        function change_lang()
        {
            event.preventDefault();
            var url      = window.location.href; 
            if(url.search("/en")>0)
            {
                url = url.replace("/en", "/ar");
            }
            else
            {
                url = url.replace("/ar", "/en");
            }
            window.location.href=url;
        }
        
    </script>
</body>
</html>