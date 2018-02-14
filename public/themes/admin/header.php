<?php
Assets::add_css(array(
    //'bootstrap.css',
    'bootstrap-responsive.css',
));

if (isset($shortcut_data) && is_array($shortcut_data['shortcut_keys'])) {
    Assets::add_js($this->load->view('ui/shortcut_keys', $shortcut_data, true), 'inline');
}

$context = get_instance()->uri->segment(2) !== null?get_instance()->uri->segment(2):'content';
$controller = get_instance()->uri->segment(3)!== null?get_instance()->uri->segment(3):'dashboard';
$title = lang($controller.'_module_name');
?>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <title><?php echo isset($toolbar_title) ? "{$toolbar_title} : " : '';
        e($this->settings_lib->item('site.title')); ?></title>

        <meta name="description" content="">
        <meta name="author" content="">

        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
	<script src="<?php echo Template::theme_url('js/modernizr-2.5.3.js'); ?>"></script>

        
        <link rel="stylesheet" href="<?php echo assets_path() . 'css/admin1.css'; ?>" >
        
        <?php echo Assets::css(null, true); ?>
        
        <link rel="stylesheet" href="<?php echo assets_path() . 'globals/css/plugins.css'; ?>" >
        
        <link rel="stylesheet" href="<?php echo assets_path() . 'css/style.css'; ?>" >
        <link rel="shortcut icon" href="<?php echo assets_path() . 'globals/img/icons/favicon.ico'; ?>">
        <link rel="apple-touch-icon" href="<?php echo assets_path() . 'globals/img/icons/apple-touch-icon.png'; ?>">

        <script src="<?php echo assets_path() . 'globals/plugins/modernizr/modernizr.min.js'; ?>"></script>
<script> 
    site_url = '<?php echo site_url() ?>';
</script>
    </head>
    <body class="desktop">

        <!--[if lt IE 7]>
        <p class=chromeframe>Your browser is <em>ancient!</em> <a href="http://browsehappy.com/">Upgrade to a different browser</a> or
        <a href="http://www.google.com/chromeframe/?redirect=true">install Google Chrome Frame</a> to experience this site.</p>
        <![endif]-->
        <noscript>
        <p>Javascript is required to use Bonfire's admin.</p>
        </noscript>

        <div class="nav-bar-container">

            <!-- BEGIN ICONS -->
            <div class="nav-menu">
                <div class="hamburger">
                    <span class="patty"></span>
                    <span class="patty"></span>
                    <span class="patty"></span>
                    <span class="patty"></span>
                    <span class="patty"></span>
                    <span class="patty"></span>
                </div><!--.hamburger-->
            </div><!--.nav-menu-->

            <div class="nav-search">
                <span class="search"></span>
            </div><!--.nav-search-->
            <!--.nav-user-->
            <div class="nav-user">
			<div class="user">
				<img src="<?php echo assets_path().'globals/img/settings.png';?>" alt="">
				<span class="badge">2</span>
			</div><!--.user-->
			<div class="cross">
				<span class="line"></span>
				<span class="line"></span>
			</div><!--.cross-->
		</div>
            <!--.nav-user-->
            <!-- END OF ICONS -->

            <div class="nav-bar-border"></div><!--.nav-bar-border-->

            <!-- BEGIN OVERLAY HELPERS -->
            <div class="overlay">
                <div class="starting-point">
                    <span></span>
                </div><!--.starting-point-->
                <div class="logo">UIGTC ADMIN</div><!--.logo-->
            </div><!--.overlay-->

            <div class="overlay-secondary"></div><!--.overlay-secondary-->
            <!-- END OF OVERLAY HELPERS -->

        </div><!--.nav-bar-container-->

        <div class="content">

            <div class="page-header full-content">
                <div class="row">
                    <div class="col-sm-6">
                        <h1><?php if (isset($toolbar_title)) : ?><?php echo $toolbar_title; ?><?php endif; ?></h1>
                    </div><!--.col-->
                    <div class="col-sm-6">
                        
                    </div><!--.col-->
                </div><!--.row-->
            </div><!--.page-header-->

            <div class="full-content-secondary page-header-secondary">
                <div class="row">
                    <div class="col-sm-6">
                        <ol class="breadcrumb">
                            <li><a href="<?php echo site_url().'/admin/content/dashboard'; ?>"><i class="ion-home"></i></a></li>
                            <li><a href="<?php echo site_url().'/admin/'.$context.'/'.$controller; ?>"><?php if (isset($title)) : ?><?php echo $title; ?><?php endif; ?></a></li>
                            <?php if(get_instance()->uri->segment(4) !== null){ ?>
                            <li><a href="<?php echo $_SESSION['requested_page']; ?>"><?php if (isset($toolbar_title)) : ?><?php echo $toolbar_title; ?><?php endif; ?></a></li>
                            <?php } ?>
                        </ol>
                    </div><!--.col-->
                        <div class="col-sm-6 pull-right sub-menu-secondary" id="sub-menu">
                            <?php Template::block('sub_nav', ''); ?>
                        </div>
                </div><!--.row-->
            </div><!--.page-header-->
            
            <!-- content -->


        </div><!--.content-->

        <div class="layer-container">

            <!-- BEGIN MENU LAYER -->
            <div class="menu-layer">

                <?php

                Contexts::set_attrs(
                        array(
                            'templateContextMenu' => '<li><a href="javascript:;">{text}</a>{content}</li>',
                            '$templateMenu' => '<li><a href="javascript:;" >{display}</a></li>',
                            'templateSubMenu' => '<li><a href="javascript:;">{display}</a><ul class="child-menu">{view}</ul></li>',
                            'templateContextEnd' => '',
                            'child_class' => 'child-menu',
                ));
                echo Contexts::context_nav('content');
                Contexts::set_contexts(['facilities','humanresources','utility','reports','developer','settings']);
                echo Contexts::render_menu('text', 'normal');
                ?>
                
            </div><!--.menu-layer-->
            <!-- END OF MENU LAYER -->
            
            <!-- BEGIN SEARCH LAYER -->
            <div class="search-layer">
                <div class="search">
                    <form action="pages-search-results.html">
                        <div class="form-group">
                            <input type="text" id="input-search" onkeyup="search()" class="form-control" value="" placeholder="type something">
                            <button type="submit" class="btn btn-default disabled"><i class="ion-search"></i></button>
                        </div>
                    </form>
                </div><!--.search-->
                <div class="results">
                    <div class="row">
                        <div class="col-md-4">
                            <div id="patients_search" class="result result-users">
                                <h4>Users <small>(0)</small></h4>

                                <ul class="list-material">
                                    <li><p>No results were found</p></li>
                                </ul>

                            </div><!--.results-user-->
                        </div><!--.col-->
                        

                    </div><!--.row-->
                </div><!--.results-->
            </div><!--.search-layer-->
            <!-- END OF SEARCH LAYER -->

            <!-- BEGIN USER LAYER -->
            <div class="user-layer">
                <ul class="nav nav-tabs nav-justified" role="tablist">
                    <li class="active"><a href="#messages" data-toggle="tab">Messages</a></li>
                    <li><a href="#notifications" data-toggle="tab">Notifications <span class="badge">2</span></a></li>
                    <li><a href="#settings" data-toggle="tab">Settings</a></li>
                </ul>

                <div class="row no-gutters tab-content">

                    <div class="tab-pane fade in active" id="messages">
                        <div class="col-md-4">
                            <div class="message-list-overlay"></div>

                           
                        </div><!--.col-->
                        <div class="col-md-8">
                            <div class="message-send-container">

                                <!--.messages-->

                                <div class="send-message">
                                    <div class="input-group">
                                        <div class="inputer inputer-blue">
                                            <div class="input-wrapper">
                                                <textarea rows="1" id="send-message-input" class="form-control js-auto-size" placeholder="Message"></textarea>
                                            </div>
                                        </div><!--.inputer-->
                                        <span class="input-group-btn">
                                            <button id="send-message-button" class="btn btn-blue" type="button">Send</button>
                                        </span>
                                    </div>
                                </div><!--.send-message-->

                            </div><!--.message-send-container-->
                        </div><!--.col-->

                        <div class="mobile-back">
                            <div class="mobile-back-button"><i class="ion-android-arrow-back"></i></div>
                        </div><!--.mobile-back-->
                    </div><!--.tab-pane #messages-->

                    <div class="tab-pane fade" id="notifications">

                        <div class="col-md-6 col-md-offset-3">

                            <ul class="list-material has-hidden">
                                <li class="has-action-left has-action-right has-long-story">
                                    <a href="#" class="hidden"><i class="ion-android-delete"></i></a>
                                    <a href="#" class="visible">
                                        <div class="list-action-left">
                                            <i class="ion-bag icon text-indigo"></i>
                                        </div>
                                        <div class="list-content">
                                            <span class="caption">Collaboratively administrate empowered markets via plug-and-play networks. Dynamically procrastinate B2C users after installed base benefits.</span>
                                        </div>
                                        <div class="list-action-right">
                                            <span class="top">2 hr</span>
                                            <i class="ion-record text-green bottom"></i>
                                        </div>
                                    </a>
                                </li>
                                <li class="has-action-left has-action-right has-long-story">
                                    <a href="#" class="hidden"><i class="ion-android-delete"></i></a>
                                    <a href="#" class="visible">
                                        <div class="list-action-left">
                                            <i class="ion-image text-green icon"></i>
                                        </div>
                                        <div class="list-content">
                                            <span class="caption">Dramatically visualize customer directed convergence without revolutionary ROI. Efficiently unleash cross-media information without cross-media value.</span>
                                        </div>
                                        <div class="list-action-right">
                                            <span class="top">16:55</span>
                                            <i class="ion-record text-green bottom"></i>
                                        </div>
                                    </a>
                                </li>
                            </ul>

                        </div><!--.col-->
                    </div><!--.tab-pane #notifications-->

                    <div class="tab-pane fade" id="settings">
                        <div class="col-md-6 col-md-offset-3">

                            <div class="settings-panel">
                                <p class="text-grey">Here's where you can check your settings of Pleasure Admin Panel. If you need an extra information from us, do not hesitate to contact.</p>

                                <div class="legend">Your Settings</div>
                                <ul>
                                    <li>
                                        <a href="<?php echo site_url('admin/settings/users/profile'); ?>"><?php echo lang('bf_user_settings'); ?></a>
                                                
                                    </li>
                                    <li>
                                        <a href="<?php echo site_url('logout'); ?>"><?php echo lang('bf_action_logout'); ?></a>
                                    </li>
                                    
                                </ul>
                            </div><!--.settings-panel-->

                        </div><!--.col-->
                    </div><!--.tab-pane #settings-->

                </div><!--.row-->
            </div><!--.user-layer-->
            <!-- END OF USER LAYER -->

        </div><!--.layer-container-->

