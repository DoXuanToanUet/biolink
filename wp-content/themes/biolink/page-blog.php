<?php get_header(); ?>
<link rel="stylesheet" href="<?php echo get_stylesheet_directory_uri(); ?>/assets/css/page/blog/blog.css">
<div id="blog">
    <div class="container">
    <div class="page-header">
        <h1>Blog</h1>
    </div>
    <div class="blog-content ">
            <div class="blog-main-post list-item-content">
                <?php
                    $args = array(
                        'post_type'     => 'post',
                        'post_status'   => 'publish',
                        // 'category_name' => $cat_current,
                        'order'         => 'DESC',
                        'orderby'       => 'DATE',
                        'posts_per_page'     => 4,// Số bài viết bạn muốn hiển thị.
                        'paged' => 1,
                        'tax_query' => array(
                            array(
                                'taxonomy' => 'category',
                                'field'    => 'id',
                                'terms'    => 8,
                            ),
                        ),
                    );
                    $listPost = new WP_Query($args);
                ?>
                <?php if ($listPost->have_posts()):
                    while ($listPost->have_posts()): $listPost->the_post(); ?>
                        <?= do_shortcode('[itemblog]') ?>
                    <?php
                    endwhile;
                endif;
                wp_reset_postdata(); ?>
            </div>
            <div class="pagi">
                <?php ff_corenavi_ajax($listPost); ?>
            </div>
    </div>
    
    </div>
    <div class="blog-spin">
        <div class="drive-progresser__bar">
            <div class="drive-progresser__bar-item"></div>
        </div>
    </div>
    <!-- <div class="progress"></div> -->
</div>

<input type="hidden" name="url_ajax" value="<?= admin_url('admin-ajax.php'); ?>">


<?php get_footer(); ?>


