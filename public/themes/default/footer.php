    <?php if ( ! isset($show) || $show == true) : ?>
    <hr />
    <div class="container footercont">

<br>
    <footer>
        <div class="row">

            <div class="col-sm-4">
                <div class="logo">
<!--                    <img src="images/footerlogo.png" width="110px">-->
                </div>
            </div>
            <div class="col-sm-8">
                <ul>
                    <li>
                        <a href="#"><i class="fa fa-facebook"></i></a>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-google-plus"></i></a>
                        <a href="#"><i class="fa fa-linkedin"></i></a>
                        <a href="#"><i class="fa fa-instagram"></i></a>
                    </li>

                </ul>
                <p>©2017 UIGTC. All Rights Reserved</p>


            </div>
        </div>


    </footer>

</div>


    <?php endif; ?>
	<div id="debug"><!-- Stores the Profiler Results --></div>
    <!-- Grab Google CDN's jQuery, with a protocol relative URL; fall back to local if offline -->
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="<?php echo js_path(); ?>jquery-1.7.2.min.js"><\/script>');</script>
    <?php echo Assets::js(); ?>
</body>
</html>