<!DOCTYPE html>
<html class="no-js" <?php language_attributes(); ?>>
<head>
    <meta charset="<?php bloginfo('charset'); ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="<?php the_field('favicon_options', 'option'); ?>">
    <title><?php is_front_page() ? bloginfo('description') : wp_title(''); ?></title>
    <?php wp_head(); ?>
    <!--Code add Form ACF HeaderOption-->
    <?php
    if (get_field('add_code_to_header_options', 'option')) {
        the_field('add_code_to_header_options', 'option');
    }
    ?>
    <!--Code add Form ACF HeaderOption-->

</head>
<body <?php body_class(); ?>>
<?php wp_body_open(); ?>
<div id="header">
    <div class="container">
        <div class="header-wrapper d-flex justify-content-between">
            <div class="m-mobile">
                <button id="btn-menu-responsive" class="mactive">
                    <span class="bar1"></span>
                    <span class="bar2"></span>
                    <span class="bar3"></span>
                </button>
            </div>
            <div class="logo">
                <h1>
                    <a href="<?php echo home_url();?>">
                        <img src="<?php echo get_field('logo_options','option');?>" alt="">
                    </a>
                </h1>
               
            </div>
            <div class="desktop-menu">
                <?php if (has_nav_menu('mainmenu')):
                    wp_nav_menu(array('theme_location' => 'mainmenu', 'container' => ''));
                endif; ?>
                <div class="right-header">
                    <a href="/login" class="common-btn btn-login flex-center">
                        <svg xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svgjs="http://svgjs.com/svgjs" width="512" height="512" x="0" y="0" viewBox="0 0 32 32" style="enable-background:new 0 0 512 512" xml:space="preserve" class=""><g><path d="m21.817 15.475c1.349-1.433 2.183-3.356 2.183-5.475 0-4.411-3.589-8-8-8s-8 3.589-8 8c0 2.119.834 4.042 2.183 5.475-3.998 2.231-6.183 6.957-6.183 13.525 0 .553.448 1 1 1h22c.553 0 1-.447 1-1 0-6.569-2.185-11.294-6.183-13.525zm-5.817-11.475c3.309 0 6 2.691 6 6s-2.691 6-6 6-6-2.691-6-6 2.691-6 6-6zm-9.982 24c.157-4.234 1.388-9.193 5.883-11.143 1.2.721 2.6 1.143 4.099 1.143s2.899-.422 4.099-1.143c4.494 1.949 5.726 6.909 5.882 11.143z" fill="#fff" data-original="#000000" class=""></path></g></svg>
                        <span>LOGIN</span>    
                    </a>
                </div>
            </div>
            <!-- <div class="header-search">
                <p>Search</p>
            </div> -->
          
        </div>
        
    </div>
</div>
<!-- <div class="m-menu ">
    <div class="m-overlay"></div>  
    <?php //if (has_nav_menu('mainmenu')):
        //wp_nav_menu(array('theme_location' => 'mainmenu', 'container' => ''));
    //endif; ?>          
</div> -->
<!-- <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/css/select2.min.css" rel="stylesheet" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/js/select2.min.js"></script> -->


