	<footer class="footer-custom">
		<p class="">
			
			<span>&copy;</span> Powered by UIGTC  <a href="http://www.uigtc.com" target="_blank">www.uigtc.com</a> V1.1.0
		</p>
	</footer>
	<div id="debug"><!-- Stores the Profiler Results --></div>
    <!-- Grab Google CDN's jQuery, with a protocol relative URL; fall back to local if offline -->
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="<?php echo js_path(); ?>jquery-1.7.2.min.js"><\/script>');</script>
	
    <script src="<?php echo assets_path().'globals/js/global-vendors.js';?>"></script>
    <?php echo Assets::js(); ?>
        <script src="<?php echo assets_path().'globals/js/pleasure.js';?>"></script>
        <script src="<?php echo assets_path().'js/layout.js';?>"></script>
        <script src="<?php echo assets_path().'js/search.js';?>"></script>
        <!-- BEGIN PLUGINS AREA -->
	<!-- END PLUGINS AREA -->

	<!-- PLUGINS INITIALIZATION AND SETTINGS -->
	<!--<script src="../../assets/globals/scripts/tables-datatables.js"></script>-->
	<!-- END PLUGINS INITIALIZATION AND SETTINGS -->
    <script>
	$(document).ready(function () {
		Pleasure.init();
		Layout.init();
                TablesDataTables.init();
                FormsWysiwyg.init();
                
                $('.tab-input').click(function() {
                    if($('#english').is(':checked')) { 
                        $('#english-content').css("display","block");
                        $('#arabic-content').css("display","none");
                    }
                    if($('#arabic').is(':checked')) { 
                        $('#arabic-content').css("display","block");
                        $('#english-content').css("display","none");
                    }
                });
                
               
                
});
	</script>
	<!-- END INITIALIZATION-->

	<!-- BEGIN Google Analytics -->
	<script>
		(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
		(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
		m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
		})(window,document,'script','//www.google-analytics.com/analytics.js','ga');

		ga('create', Pleasure.settings.ga.urchin, Pleasure.settings.ga.url);
		ga('send', 'pageview');
	</script>
</body>
</html>


                <?php 
                /*if(lang('bf_language_direction') == 'rtl')
                {
                    echo 'Layout.settings.rtl = true;';
                    echo 'Layout.handleRtlLayout();';
                }*/
                ?>