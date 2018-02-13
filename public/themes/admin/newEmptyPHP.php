        <div class="navbar navbar-static-top navbar-inverse" id="topbar" >
            <div class="navbar-inner">
                <div class="container-fluid">
                    <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </a>
                        <?php
                        echo anchor('/', html_escape($this->settings_lib->item('site.title')), 'class="brand"');
                        if (isset($shortcut_data) && is_array($shortcut_data['shortcuts']) && is_array($shortcut_data['shortcut_keys']) && count($shortcut_data['shortcut_keys'])
                        ) :
                            ?>
                        <!-- Shortcut Menu -->
                        <div class="nav pull-right" id="shortcuts">
                            <div class="btn-group">
                                <a class="dropdown-toggle light btn" data-toggle="dropdown" href="#"><img src="<?php echo Template::theme_url('images/keyboard-icon.png'); ?>" id="shortkeys_show" title="Keyboard Shortcuts" alt="Keyboard Shortcuts" /></a>
                                <ul class="dropdown-menu pull-right toolbar-keys">
                                    <li>
                                        <div class="inner keys">
                                            <h4><?php echo lang('bf_keyboard_shortcuts'); ?></h4>
                                            <ul>
    <?php foreach ($shortcut_data['shortcut_keys'] as $key => $data) : ?>
                                                    <li><span><?php e($data); ?></span> : <?php echo $shortcut_data['shortcuts'][$key]['description']; ?></li>
    <?php endforeach; ?>
                                            </ul>
                                                <?php if (has_permission('Bonfire.UI.View') && has_permission('Bonfire.UI.Manage')): ?>
                                                <a href="<?php echo site_url(SITE_AREA . '/settings/ui'); ?>"><?php echo lang('bf_keyboard_shortcuts_edit'); ?></a>
                                                <?php endif; ?>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
<?php endif; ?>
                    <div class="nav-collapse in collapse">
                        <!-- User Menu -->
                        <div class="nav pull-right" id="user-menu">
                            <div class="btn-group">
                                <a href="<?php echo site_url(SITE_AREA . '/settings/users/edit'); ?>" id="tb_email" class="btn dark" title="<?php echo lang('bf_user_settings'); ?>">
<?php
$userDisplayName = isset($current_user->display_name) && !empty($current_user->display_name) ? $current_user->display_name : ($this->settings_lib->item('auth.use_usernames') ? $current_user->username : $current_user->email);
echo $userDisplayName;
?>
                                </a>
                                    <?php
                                    /* Change **light** to **dark** to match colors */
                                    ?>
                                <a class="btn dropdown-toggle light" data-toggle="dropdown" href="#"><span class="caret"></span></a>
                                <ul class="dropdown-menu pull-right toolbar-profile">
                                    <li>
                                        <div class="inner">
                                            <div class="toolbar-profile-img">
<?php echo gravatar_link($current_user->email, 96, null, $userDisplayName); ?>
                                            </div>

                                            <div class="toolbar-profile-info">
                                                <p><strong><?php echo $userDisplayName; ?></strong><br />
<?php e($current_user->email); ?>
                                                    <br/>
                                                </p>
                                                <a href="<?php echo site_url(SITE_AREA . '/settings/users/edit'); ?>"><?php echo lang('bf_user_settings'); ?></a>
                                                <a href="<?php echo site_url('logout'); ?>"><?php echo lang('bf_action_logout'); ?></a>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
<?php echo Contexts::render_menu('text', 'normal'); ?>
                    </div><!-- /.nav-collapse -->
                </div><!-- /container -->
                <div class="clearfix"></div>
            </div><!-- /.navbar-inner -->
        </div><!-- /.navbar -->
        <div class="subnav" >
            <div class="container-fluid">
<?php if (isset($toolbar_title)) : ?>
                    <h1><?php echo $toolbar_title; ?></h1>
<?php endif; ?>
                <div class="pull-right" id="sub-menu">
                <?php Template::block('sub_nav', ''); ?>
                </div>
            </div>
        </div>
        
        
        
        
        
        
       
        
        
        
        <!-- content -->

		<div class="footer-links">
			<div class="row no-gutters">
				<div class="col-xs-6 bg-indigo">
					<a href="pages-timeline.html">
						<span class="state">Pages</span>
						<span>Timeline</span>
						<span class="icon"><i class="ion-android-arrow-back"></i></span>
					</a>
				</div><!--.col-->
				<div class="col-xs-6 bg-cyan">
					<a href="components-offline-detector.html">
						<span class="state">Components</span>
						<span>Offline Detector</span>
						<span class="icon"><i class="ion-android-arrow-forward"></i></span>
					</a>
				</div><!--.col-->
			</div><!--.row-->
		</div><!--.footer-links-->
                
                
                
                Access Control File

migrations/001_Install_dashboard_permissions.php

Config file

config/config.php

Controllers

controllers/Dashboard.php
controllers/Content.php
controllers/Reports.php
controllers/Settings.php
controllers/Developer.php

Language File

dashboard_lang.php

Views

views/index.php
views/content/index.php
views/content/create.php
views/content/edit.php
views/content/js.php
views/content/_sub_nav.php
views/reports/index.php
views/reports/create.php
views/reports/edit.php
views/reports/js.php
views/reports/_sub_nav.php
views/settings/index.php
views/settings/create.php
views/settings/edit.php
views/settings/js.php
views/settings/_sub_nav.php
views/developer/index.php
views/developer/create.php
views/developer/edit.php
views/developer/js.php
views/developer/_sub_nav.php