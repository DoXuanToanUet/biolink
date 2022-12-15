
<footer>
    <div id="footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 ">
                    <a href="<?php echo home_url();?>">
                        <img class="logo-ft" src="<?php echo get_field('logoft_options','option');?>" alt="">
                    </a>
                    <h2 style="font-size:18px;margin-bottom:30px">Create Easy BioLink </h2>
                    <div class="footer-social">
                        <ul class="d-flex align-items-center">
                            <?php
                                if (have_rows('social_network_options', 'option')):
                                    while (have_rows('social_network_options', 'option')) : the_row(); ?>
                                        <li>
                                            <a href="<?php the_sub_field('link_social'); ?>">
                                                <img src="<?php the_sub_field('icon_social'); ?>"
                                                        alt="<?php the_sub_field('title_social'); ?>">
                                            </a>
                                        </li>
                                    <?php endwhile;else :endif;?><?php
                            ?>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3 col-6">
                    <h2 class="ft-title">RESOURCES</h2>
                    <?php if (has_nav_menu('footermenu')):
                        wp_nav_menu(array('theme_location' => 'footermenu', 'container' => ''));
                    endif; ?>
                </div>
                <div class="col-lg-3 col-6">
                    <h2 class="ft-title">Blog</h2>
                    <?php if (has_nav_menu('footermenu2')):
                        wp_nav_menu(array('theme_location' => 'footermenu2', 'container' => ''));
                    endif; ?>
                </div>
                <div class="col-lg-3 col-6">
                    <h2 class="ft-title">Hỗ trợ</h2>
                    <?php if (has_nav_menu('footermenu3')):
                        wp_nav_menu(array('theme_location' => 'footermenu3', 'container' => ''));
                    endif; ?>
                </div>
            </div>
        </div>
    </div>
    <div class="sub-footer">
        © 2022 by <a href="doxuantoan.com">doxuantoan.com</a>
    </div>
</footer>
<?php
if (get_field('add_code_to_footer_options', 'option')) {
    the_field('add_code_to_footer_options', 'option');
}
?>
<?php wp_footer(); ?>
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script> -->
<?php 
// add_action( 'admin_enqueue_scripts', 'twload_custom_script' ); 
// function twload_custom_script() {
//     wp_enqueue_script('twcustom_js_script', 'https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js', array('jquery'));
// }
?>
</body>
</html>