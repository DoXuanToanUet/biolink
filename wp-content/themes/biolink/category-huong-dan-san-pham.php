<?php get_header(); ?>
<!-- <link rel="stylesheet" href="<?php //echo get_stylesheet_directory_uri(); ?>/assets/css/page/blog/category-post.css"> -->
<div class="c-content">
    <div class="container">
        <div class="row">
            <div class="col-lg-4">
                <div class="c-sidebar">
                    <?php if (has_nav_menu('sidebarSupport')):
                        wp_nav_menu(array('theme_location' => 'sidebarSupport', 'container' => ''));
                    endif; ?>
                </div>
            </div>
            <div class="col-lg-8">
                <div class="c-main">
                    <p>Việc cần làm </p>
                </div>
            </div>
        </div>
    </div>
</div>



<?php get_footer(); ?>


