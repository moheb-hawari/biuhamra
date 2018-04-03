<?php echo theme_view('header'); ?>

    <?php
    echo theme_view('_sitenav');

    echo isset($content) ? $content : Template::content();

    echo theme_view('footer');
    ?>