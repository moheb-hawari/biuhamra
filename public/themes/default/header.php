<?php

Assets::add_css(array(
    'https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css',
    'https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css',
    'bootstrap.min.css',
    'bootstrap_1.css',
    'bootstrap-responsive.min.css',
    'media.css'));

Assets::add_js('js/jquery.js');
Assets::add_js('bootstrap.min.js');

$inline  = '$(".dropdown-toggle").dropdown();';
$inline .= '$(".tooltips").tooltip();';
Assets::add_js($inline, 'inline');

?>
<!doctype html>
<head>
    <meta charset="utf-8">
    <title><?php
        echo isset($page_title) ? "{$page_title} : " : '';
        e(class_exists('Settings_lib') ? settings_item('site.title') : '');
    ?></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="<?php e(isset($meta_description) ? $meta_description : ''); ?>">
    <meta name="author" content="<?php e(isset($meta_author) ? $meta_author : ''); ?>">
    <?php
    /* Modernizr is loaded before CSS so CSS can utilize its features */
    echo Assets::js('modernizr-2.5.3.js');
    ?>
    <?php echo Assets::css(); ?>
    <link rel="shortcut icon" href="<?php echo base_url(); ?>favicons.ico">
</head>

    