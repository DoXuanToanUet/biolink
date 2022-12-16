<?php function add_theme_scripts()
{
    $version = '1.0';
    wp_enqueue_style('BootstrapCss', get_template_directory_uri() . '/assets/plugins/bootstrap/bootstrap-grid.css', array(), $version, 'all');
    wp_enqueue_style('MainCss', get_template_directory_uri() . '/assets/css/custom.css', array(), $version, 'all');

    // wp_enqueue_script('BootstrapJs', get_template_directory_uri() . '/assets/plugins/bootstrap/bootstrap.bundle.min.js', array(), $version, true);
    wp_enqueue_script('MainJs', get_template_directory_uri() . '/assets/js/main.js', array(), $version, true);
    // wp_enqueue_script('jquery-ui-draggable');
}

add_action('wp_enqueue_scripts', 'add_theme_scripts');

/**
 * Essential theme supports
 * */
function theme_setup(){
    /** automatic feed link*/
    add_theme_support( 'automatic-feed-links' );

    /** tag-title **/
    add_theme_support( 'title-tag' );

    /** post formats */
		// $post_formats = array('aside','image','gallery','link','quote','status');
		// add_theme_support( 'post-formats', $post_formats);

    /** post thumbnail **/
    add_theme_support( 'post-thumbnails' );

    /** HTML5 support **/
    add_theme_support( 'html5', array( 'comment-list', 'comment-form', 'search-form', 'gallery', 'caption' ) );

    /** refresh widgest **/
    add_theme_support( 'customize-selective-refresh-widgets' );

    /** custom background **/
    $bg_defaults = array(
        'default-image'          => '',
        'default-preset'         => 'default',
        'default-size'           => 'cover',
        'default-repeat'         => 'no-repeat',
        'default-attachment'     => 'scroll',
    );
    add_theme_support( 'custom-background', $bg_defaults );

    /** custom header **/
    $header_defaults = array(
        'default-image'          => '',
        'width'                  => 300,
        'height'                 => 60,
        'flex-height'            => true,
        'flex-width'             => true,
        'default-text-color'     => '',
        'header-text'            => true,
        'uploads'                => true,
    );
    add_theme_support( 'custom-header', $header_defaults );

    /** custom log **/
    add_theme_support( 'custom-logo', array(
        'height'      => 60,
        'width'       => 400,
        'flex-height' => true,
        'flex-width'  => true,
        'header-text' => array( 'site-title', 'site-description' ),
    ) );

 	// additional image sizes
    // delete the next line if you do not need additional image sizes
    add_image_size( 'search-thumb', 60, 60,true ); //300 pixels wide (and unlimited height)

	
	/*
	 * Make theme available for translation.
	 * Translations can be filed in the /languages/ directory.
	 * If you're building a theme based on Twenty Twenty, use a find and replace
	 * to change 'twentytwenty' to the name of your theme in all the template files.
	 */
	load_theme_textdomain( 'biolink' );

}
add_action('after_setup_theme','theme_setup');


// require get_template_directory() . '/inc-function/inc-devpost.php';
// require get_template_directory() . '/inc-function/inc-archivepost.php';
// require get_template_directory() . '/custom/custom-comment.php';
// require get_template_directory() . '/inc-function/inc-devComment.php';
require get_template_directory() . '/inc-function/inc-ajaxregis.php';
require get_template_directory() . '/inc-function/inc-ajaxlogin.php';
require get_template_directory() . '/inc-function/inc-ForgotPassword.php';
require get_template_directory() . '/inc-function/inc-corenavi-ajax.php';
require get_template_directory() . '/template-page/itemBlog.php';

// $test= 'this is a test';
// echo  "<p>{$test}</p>";
add_action('acf/init', 'my_acf_blocks_init');
function my_acf_blocks_init() {

    // Check function exists.
    if( function_exists('acf_register_block_type') ) {

        // Register a testimonial block.
        acf_register_block_type(array(
            'name'              => 'Biolink Person',
            'title'             => __('Biolink Layout Person'),
            'description'       => __('Biolink section'),
            'render_template'   => 'template-parts/blocks/biolink/biolink-layout1.php',
            'category'          => 'formatting',
			'example'           => array(
				'attributes' => array(
					'mode' => 'preview',
					'data' => array(
						'bio1_img'   => get_template_directory_uri().'/template-parts/blocks/biolink/img/bio1-layout2.jpg',
						// 'bio1_name'   => "Xuân Toàn",
						// 'bio1_desc'   => "orem Ipsum is simply dummy text of the printing and…",
						// 'bio1_rp_0_bio1_rpText' =>'Learn More About The Bachelore',
						// // 'author'        => "Jane Smith",
						// // 'role'          => "Person",
						// 'is_preview'    => true
						// 'preview_image_help'=>"http://biolink.local/wp-content/uploads/2022/12/avatar-gai-xinh-56-1.jpg"
					)
				)
			),
			'enqueue_style' => get_stylesheet_directory_uri() . '/template-parts/blocks/biolink/css/bio1-layout1.css',
			

        ));
    }
}

// function add_theme_caps() {
//     // to add capability to $user_id
//     $user = new WP_User( $user_id );
//     $user->add_cap( 'edit_pages' );
//     $user->add_cap( 'edit_published_pages' );
//     $user->add_cap( 'upload_files' );
// }
// add_action( 'admin_init', 'add_theme_caps' );


 function toast_enqueue_jquery_ui(){
	wp_enqueue_script( 'jquery-ui-resizable');
}
add_action('admin_enqueue_scripts', 'toast_enqueue_jquery_ui');

function toast_resizable_sidebar(){ ?>
	<style>
		.interface-interface-skeleton__sidebar .interface-complementary-area{width:100%;}
		.edit-post-layout:not(.is-sidebar-opened) .interface-interface-skeleton__sidebar{display:none;}
		.is-sidebar-opened .interface-interface-skeleton__sidebar{width:350px;}

		/*UI Styles*/
		.ui-dialog .ui-resizable-n {
			height: 2px;
			top: 0;
		}
		.ui-dialog .ui-resizable-e {
			width: 2px;
			right: 0;
		}
		.ui-dialog .ui-resizable-s {
			height: 2px;
			bottom: 0;
		}
		.ui-dialog .ui-resizable-w {
			width: 2px;
			left: 0;
		}
		.ui-dialog .ui-resizable-se,
		.ui-dialog .ui-resizable-sw,
		.ui-dialog .ui-resizable-ne,
		.ui-dialog .ui-resizable-nw {
			width: 7px;
			height: 7px;
		}
		.ui-dialog .ui-resizable-se {
			right: 0;
			bottom: 0;
		}
		.ui-dialog .ui-resizable-sw {
			left: 0;
			bottom: 0;
		}
		.ui-dialog .ui-resizable-ne {
			right: 0;
			top: 0;
		}
		.ui-dialog .ui-resizable-nw {
			left: 0;
			top: 0;
		}
		.ui-draggable .ui-dialog-titlebar {
			cursor: move;
		}
		.ui-draggable-handle {
			-ms-touch-action: none;
			touch-action: none;
		}
		.ui-resizable {
			position: relative;
		}
		.ui-resizable-handle {
			position: absolute;
			font-size: 0.1px;
			display: block;
			-ms-touch-action: none;
			touch-action: none;
		}
		.ui-resizable-disabled .ui-resizable-handle,
		.ui-resizable-autohide .ui-resizable-handle {
			display: none;
		}
		.ui-resizable-n {
			cursor: n-resize;
			height: 7px;
			width: 100%;
			top: -5px;
			left: 0;
		}
		.ui-resizable-s {
			cursor: s-resize;
			height: 7px;
			width: 100%;
			bottom: -5px;
			left: 0;
		}
		.ui-resizable-e {
			cursor: e-resize;
			width: 7px;
			right: -5px;
			top: 0;
			height: 100%;
		}
		.ui-resizable-w {
			cursor: w-resize;
			width: 7px;
			left: -5px;
			top: 0;
			height: 100%;
		}
		.ui-resizable-se {
			cursor: se-resize;
			width: 12px;
			height: 12px;
			right: 1px;
			bottom: 1px;
		}
		.ui-resizable-sw {
			cursor: sw-resize;
			width: 9px;
			height: 9px;
			left: -5px;
			bottom: -5px;
		}
		.ui-resizable-nw {
			cursor: nw-resize;
			width: 9px;
			height: 9px;
			left: -5px;
			top: -5px;
		}
		.ui-resizable-ne {
			cursor: ne-resize;
			width: 9px;
			height: 9px;
			right: -5px;
			top: -5px;
		}
	</style>

	<script>
		jQuery(window).ready(function(){
    		setTimeout(function(){
        		jQuery('.interface-interface-skeleton__sidebar').width(localStorage.getItem('toast_sidebar_width'))
        		jQuery('.interface-interface-skeleton__sidebar').resizable({
            		handles: 'w',
            		resize: function(event, ui) {
                		jQuery(this).css({'left': 0});
                		localStorage.setItem('toast_sidebar_width', jQuery(this).width());
           				}
        		});
    		}, 500)
		});
	</script>
<?php }
add_action('admin_head', 'toast_resizable_sidebar');


function my_restrict_access() {
    global $pagenow;

    if( current_user_can('kol_user') && $pagenow == 'post-new.php' && ! current_user_can( 'publish_posts' ) )
          wp_redirect( admin_url() .'/edit.php?post_type=page' );
}
add_action( 'admin_init', 'my_restrict_access', 0 );

/**
 * Remove the users view
 */
// add_filter( 'views_users', '__return_empty_array' );
// add_filter( 'views_users', function( $views ) 
// {
//     return current_user_can( 'kol_user' ) ? $views : [];
// } );

// add_filter("views_users", "dt_list_table_views");
// function dt_list_table_views($views){
//    $users = count_users();
//    $admins_num = $users['avail_roles']['kol_user'] - 1;
//    $all_num = $users['total_users'] - 1;
//    $class_adm = ( strpos($views['kol_user'], 'current') === false ) ? "" : "current";
//    $class_all = ( strpos($views['all'], 'current') === false ) ? "" : "current";
//    $views['kol_user'] = '<a href="users.php?role=administrator" class="' . $class_adm . '">' . translate_user_role('Administrator') . ' <span class="count">(' . $admins_num . ')</span></a>';
//    $views['all'] = '';
//    return $views;
// }

// function eminds_remove_sub_sub_posts_filter() {
// 	global $current_user;
// get_currentuserinfo();
// //print_r($current_user);
// if($current_user->roles[0] == 'kol_user'){
// echo '

// /*admin all-posts screen*/

// /*#posts-filter,*/
// ul.subsubsub .all,
// ul.subsubsub .publish,
// ul.subsubsub .sticky,
// ul.subsubsub .trash,
// ul.subsubsub .draft,
// ul.subsubsub .pending,
// .view-switch,
// .tablenav ,
// .row-actions .editinline,
// .check-column
// * {display:none;}
// ';
// }
// }
// add_action('admin_head', 'eminds_remove_sub_sub_posts_filter');
// filter the 'users' views
// add_filter( "views_users", "wse57231_filter_user_views");

// function wse57231_filter_user_views($views){
//   // This assumes the key for the role is 'super_admin'
//   // Is the current user not a "super_admin"?

//   if( !current_user_can('super_admin')){
//     // Remove the super_admin view from the list of views
//     unset($views['super_admin']);
//   }

//   return $views;
// }

/**
 * Remove the 'all', 'publish', 'future', 'sticky', 'draft', 'pending', 'trash' 
 * views for non-admins
 */
/**
 * Remove the 'all', 'publish', 'future', 'sticky', 'draft', 'pending', 'trash' 
 * views for non-admins
 */
add_filter( 'views_edit-page', function( $views )
{
    if( current_user_can( 'manage_options' ) )
        return $views;

    $remove_views = [ 'all','publish','future','sticky','draft','pending','trash' ];

    foreach( (array) $remove_views as $view )
    {
        if( isset( $views[$view] ) )
            unset( $views[$view] );
    }
    return $views;
} );


function hide_add_new_page_button(){
	if ( ! current_user_can( 'manage_options' ) ) {	
		echo ('<style>a[href~="post-new.php?post_type=page"], .page-title-action { display: none !important; }</style>');
	}
   
}
add_action('admin_head','hide_add_new_page_button');

// function to remove the dashboard widgets, but only for non-admin users
// if you want to remove the widgets for admin(s) too, remove the 'if' statement within the function
function remove_dashboard_widgets() {
	if ( ! current_user_can( 'manage_options' ) ) {	
		// remove_meta_box( 'dashboard_right_now', 'dashboard', 'normal' );
		remove_meta_box( 'dashboard_recent_comments', 'dashboard', 'normal' );
		// remove_meta_box( 'dashboard_incoming_links', 'dashboard', 'normal' );
		remove_meta_box( 'dashboard_plugins', 'dashboard', 'normal' );
		// remove_meta_box( 'dashboard_quick_press', 'dashboard', 'side' );
		// remove_meta_box( 'dashboard_recent_drafts', 'dashboard', 'side' );
		remove_meta_box( 'dashboard_primary', 'dashboard', 'side' );
		remove_meta_box( 'dashboard_activity', 'dashboard', 'normal' );
	}
}
// 
add_action( 'wp_dashboard_setup', 'remove_dashboard_widgets' );


/**
 * Add a widget to the dashboard.
 *
 * This function is hooked into the 'wp_dashboard_setup' action below.
 */
function wporg_add_dashboard_widgets() {
	wp_add_dashboard_widget(
		'wporg_dashboard_widget',                          // Widget slug.
		esc_html__( 'Example Dashboard Widget', 'wporg' ), // Title.
		'wporg_dashboard_widget_render'                    // Display function.
	); 
}
add_action( 'wp_dashboard_setup', 'wporg_add_dashboard_widgets' );

/**
 * Create the function to output the content of our Dashboard Widget.
 */
function wporg_dashboard_widget_render() {
	// Display whatever you want to show.
	?><p>tHIS IS TEST</p><?php 
	esc_html_e( "Howdy! I'm a great Dashboard Widget.", "wporg" );
}


function tabor_register_block_patterns() {

	if ( class_exists( 'WP_Block_Patterns_Registry' ) ) {

                $content = '<!-- wp:acf/testimonial {"id":"block_6389a2ad82330","name":"acf/testimonial","data":{"field_6388332af7587":"","field_6388650b16b68":""},"align":"","mode":"preview"} /-->';

		register_block_pattern(
			'tabor/call-to-action-gallery',
			array(
				'title'         => __( 'Call to Action Gallery', 'textdomain' ),
				'description'   => _x( 'A call to action with a beautiful two-column gallery below.', 'Block pattern description', 'textdomain' ),
				'content'       => trim($content),
				'categories'    => array( 'hero' ),
				'keywords'      => array( 'cta' ),
                                'viewportWidth' => 1400,
                                'blockTypes'    => array( 'core/gallery' ),
			)
		);

	}

}
add_action( 'init', 'tabor_register_block_patterns' );

// add_action('init', function() {
// 	if (!function_exists('unregister_block_pattern')) {
// 		return;
// 	}
// 	// unregister_block_pattern('core/large-header');
// 	// unregister_block_pattern('core/heading-paragraph');
// 	// unregister_block_pattern('core/quote');
// 	// unregister_block_pattern('core/text-three-columns-buttons');
// 	// unregister_block_pattern('core/two-buttons');
// 	// unregister_block_pattern('core/two-images');
// 	// unregister_block_pattern('core/three-buttons');
// 	// unregister_block_pattern('core/text-two-columns-with-images');
// 	// unregister_block_pattern('core/text-two-columns');
// 	// unregister_block_pattern('core/large-header-button');
// 	// unregister_block_pattern('core/event');
	
// });

add_action('init', function() {
	remove_theme_support('core-block-patterns');
});


add_filter( 'allowed_block_types', 'misha_allowed_block_types' );
 
function misha_allowed_block_types( $allowed_blocks ) {
	if( !current_user_can( 'manage_options' ) ){
		return array(
			// 'core/paragraph',
			// 'core/heading',
			// 'core/list',
			// 'core/image',
			// 'core/columns',
			// 'core/row',
			'acf/biolink-person'
		  );
	}
}

// add_filter( 'allowed_block_types_all', 'misha_blacklist_blocks' );
 
// function misha_blacklist_blocks( $allowed_blocks ) {
// 	// get all the registered blocks
// 	$blocks = WP_Block_Type_Registry::get_instance()->get_all_registered();

// 	// then disable some of them
// 	if( !current_user_can( 'manage_options' ) ){
// 		unset( $blocks[ 'core/archives' ] );
// 		unset( $blocks[ 'core/calendar' ] );
// 		unset( $blocks[ 'core/embed' ] );
// 	}
	

// 	// return the new list of allowed blocks
// 	return array_keys( $blocks );
	
// }


// add_action( 'after_setup_theme', 'mam_gutenberg_css' );
// function mam_gutenberg_css(){
//   add_theme_support( 'editor-styles' ); // if you don't add this line, your stylesheet won't be added
//   add_editor_style( 'assets/css/custom.css' );
// }


// add_filter( 'wp_handle_upload_prefilter', 'limit_uploads_for_user_roles' );

// function limit_uploads_for_user_roles( $file ) {
//   $user = wp_get_current_user();
//   // add the role you want to limit in the array
//   $limit_roles = array('kol_user');
//   $filtered = apply_filters( 'limit_uploads_for_roles', $limit_roles, $user );
//   if ( array_intersect( $limit_roles, $user->roles ) ) {
//     $upload_count = get_user_meta( $user->ID, 'upload_count', true ) ? : 0;
//     $limit = apply_filters( 'limit_uploads_for_user_roles_limit', 10, $user, $upload_count, $file );
//     if ( ( $upload_count + 1 ) > $limit ) {
//       $file['error'] = __('Upload limit has been reached for this account!', 'yourtxtdomain');
//     } else {
//       update_user_meta( $user->ID, 'upload_count', $upload_count + 1 );
//     }
//   }
//   return $file;
// }


// add_filter('upload_mimes','remove_mime_types');
// function remove_mime_types($mimes){
// 	unset( $mimes['mp4'] );
// }

// get a list of all registered WordPress Images Sizes
// $image_sizes = get_intermediate_image_sizes();
// echo '<pre>';
// print_r($image_sizes);
// echo '</pre>';

// Remove or unregister unused WordPress Image Sizes
function cdxn_remove_intermediate_image_sizes($sizes, $metadata) {
    $disabled_sizes = array(
        'woocommerce_thumbnail',
        'woocommerce_single',
        'woocommerce_gallery_thumbnail',
        'shop_catalog',
        'shop_single',
        '1536x1536',
        '2048x2048',
        'shop_thumbnail',
		'medium_large',
		'medium',
		'large'
    );
    // unset disabled sizes
    foreach ($disabled_sizes as $size) {
        if (!isset($sizes[$size])) {
            continue;
        }
        unset($sizes[$size]);
    }
    return $sizes;
}
// Hook the function
add_filter('intermediate_image_sizes_advanced', 'cdxn_remove_intermediate_image_sizes', 10, 2);


function remove_page_attribute_support() {
	if( !current_user_can( 'manage_options' ) ){
		remove_post_type_support('page','page-attributes');
		remove_post_type_support('page','comments');
		remove_post_type_support('page','thumbnail');
		// remove_post_type_support('page','page-attributes');
	}
    
}
add_action( 'init', 'remove_page_attribute_support' );

// echo "<pre>";
// var_dump( get_page_by_path('bio2', OBJECT, 'page') ) ;
// echo "</pre>";

function add_login_check()
{
    if (is_user_logged_in()) {
        if ( is_page('register') || is_page('login') || is_page('lost-password')){
			wp_redirect( home_url() ); exit; 
        }
    }
}
add_action('wp', 'add_login_check');

//* Clean WordPress header
// function wps_deregister_styles()
// {
//     wp_dequeue_style('wp-block-library');
//     wp_dequeue_style('wp-block-library-theme');
// }

// add_action('wp_print_styles', 'wps_deregister_styles', 100);

// add_filter( 'get_site_icon_url', '__return_false' );


add_action('wp_logout','auto_redirect_after_logout');

function auto_redirect_after_logout(){
	// if ( )
  wp_safe_redirect( home_url().'/login' );
  exit;
}



// add_action('wp_before_admin_bar_render', 'rew_admin_bar_remove_wp_profile', 0);

// function rew_admin_bar_remove_wp_profile() {
//     global $wp_admin_bar;

//     $wp_admin_bar->remove_menu('edit-profile');
//  }

add_action('admin_bar_menu', 'rew_add_bbp_profile', 99);

function rew_add_bbp_profile($wp_admin_bar) {
	
	$profilelink = get_edit_profile_url().'#delete-my-account';
	$wp_admin_bar->add_node( array(
		'parent' => 'user-actions',
		'id'        => 'bbp-edit-profile',
		'title' => 'Delete Account',
		'href' => $profilelink,
	) );

}
add_action( 'admin_head-profile.php', 'wpse_72463738_remove_admin_color_scheme_picker' );

/**
 * Remove the color picker from the user profile admin page.
 */
function wpse_72463738_remove_admin_color_scheme_picker() {
	if( !current_user_can( 'manage_options' ) ){
		remove_action( 'admin_color_scheme_picker', 'admin_color_scheme_picker' );
	}
   
}

// Remove fields from Admin profile page
if ( ! function_exists( 'cor_remove_personal_options' ) ) {
	function cor_remove_personal_options( $subject ) {
		$subject = preg_replace('#<h2>'.__("Personal Options").'</h2>#s', '', $subject, 1); // Remove the "Personal Options" title
		$subject = preg_replace('#<tr class="user-rich-editing-wrap(.*?)</tr>#s', '', $subject, 1); // Remove the "Visual Editor" field
		$subject = preg_replace('#<tr class="user-comment-shortcuts-wrap(.*?)</tr>#s', '', $subject, 1); // Remove the "Keyboard Shortcuts" field
		$subject = preg_replace('#<tr class="show-admin-bar(.*?)</tr>#s', '', $subject, 1); // Remove the "Toolbar" field
		$subject = preg_replace('#<h2>'.__("Name").'</h2>#s', '', $subject, 1); // Remove the "Name" title
		$subject = preg_replace('#<tr class="user-display-name-wrap(.*?)</tr>#s', '', $subject, 1); // Remove the "Display name publicly as" field
		$subject = preg_replace('#<h2>'.__("Contact Info").'</h2>#s', '', $subject, 1); // Remove the "Contact Info" title
		$subject = preg_replace('#<tr class="user-url-wrap(.*?)</tr>#s', '', $subject, 1); // Remove the "Website" field
		$subject = preg_replace('#<h2>'.__("About Yourself").'</h2>#s', '', $subject, 1); // Remove the "About Yourself" title
		$subject = preg_replace('#<tr class="user-description-wrap(.*?)</tr>#s', '', $subject, 1); // Remove the "Biographical Info" field
		$subject = preg_replace('#<tr class="user-profile-picture(.*?)</tr>#s', '', $subject, 1); // Remove the "Profile Picture" field
		return $subject;
	}

	function cor_profile_subject_start() {
		if ( ! current_user_can('manage_options') ) {
			ob_start( 'cor_remove_personal_options' );
		}
	}

	function cor_profile_subject_end() {
		if ( ! current_user_can('manage_options') ) {
			ob_end_flush();
		}
	}
}
add_action( 'admin_head', 'cor_profile_subject_start' );
add_action( 'admin_footer', 'cor_profile_subject_end' );



add_action( 'admin_enqueue_scripts', 'load_admin_styles' );
function load_admin_styles() {
    wp_enqueue_style( 'admin_css_bar', get_template_directory_uri() . '/assets/css/admin/dev-admin-style.css', false, '1.0.0' );
}

/*-------------*/
function dev_setup()
{
    add_theme_support('post-thumbnails');
    register_nav_menus(array(
        'mainmenu'   => __('Main menu', ''),
        'footermenu' => __('Footer menu', ''),
        'footermenu2' => __('Footer menu2', ''),
        'footermenu3' => __('Footer menu3', ''),
        'sidebarSupport' => __('Sidebar Hỗ trợ', ''),
    ));
}

add_action('after_setup_theme', 'dev_setup');


//Theme Options
if (function_exists('acf_add_options_page')) {

    acf_add_options_page(array(
        'page_title' => 'Theme General Settings',
        'menu_title' => 'Theme Settings',
        'menu_slug'  => 'theme-general-settings',
        'capability' => 'edit_posts',
        'redirect'   => false
    ));

    acf_add_options_sub_page(array(
        'page_title'  => 'Theme Header Settings',
        'menu_title'  => 'Header',
        'parent_slug' => 'theme-general-settings',
    ));

    acf_add_options_sub_page(array(
        'page_title'  => 'Theme Footer Settings',
        'menu_title'  => 'Footer',
        'parent_slug' => 'theme-general-settings',
    ));

    acf_add_options_sub_page(array(
        'page_title'  => 'Theme Common Settings',
        'menu_title'  => 'Common',
        'parent_slug' => 'theme-general-settings',
    ));

}
// Wp v4.7.1 and higher
add_filter( 'wp_check_filetype_and_ext', function($data, $file, $filename, $mimes) {
	$filetype = wp_check_filetype( $filename, $mimes );
	return [
		'ext'             => $filetype['ext'],
		'type'            => $filetype['type'],
		'proper_filename' => $data['proper_filename']
	];
  
  }, 10, 4 );
  
  function cc_mime_types( $mimes ){
	$mimes['svg'] = 'image/svg+xml';
	return $mimes;
  }
  add_filter( 'upload_mimes', 'cc_mime_types' );
  
  function fix_svg() {
	echo '<style type="text/css">
		  .attachment-266x266, .thumbnail img {
			   width: 100% !important;
			   height: auto !important;
		  }
		  </style>';
  }
  add_action( 'admin_head', 'fix_svg' );


/*-----Count View------*/
function getPostViews($postID)
{ // hàm này dùng để lấy số người đã xem qua bài viết
    $count_key = 'post_views_count';
    $count = get_post_meta($postID, $count_key, true);
    if ($count == '') { // Nếu như lượt xem không có
        delete_post_meta($postID, $count_key);
        add_post_meta($postID, $count_key, '0');

        return "0"; // giá trị trả về bằng 0
    }

    return $count; // Trả về giá trị lượt xem
}


function setPostViews($postID)
{// hàm này dùng để set và update số lượt người xem bài viết.
    $count_key = 'post_views_count';
    $count = get_post_meta($postID, $count_key, true);
    if ($count == '') {
        $count = 0;
        delete_post_meta($postID, $count_key);
        add_post_meta($postID, $count_key, '0');
    } else {
        $count++; // cộng đồn view
        update_post_meta($postID, $count_key, $count); // update count
    }
}


//Remove Default jQuery
if (!is_admin()) add_action("wp_enqueue_scripts", "my_jquery_enqueue", 11);
function my_jquery_enqueue()
{
    wp_deregister_script('jquery');
    wp_register_script('jquery', get_template_directory_uri() . '/assets/plugins/jquery.min.js', false, null);
    wp_enqueue_script('jquery');
}

