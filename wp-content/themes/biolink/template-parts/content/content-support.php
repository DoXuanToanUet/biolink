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
                    <h1><?php the_title();?></h1>
                    <?php the_content();?>
                </div>
            </div>
        </div>
    </div>
</div>