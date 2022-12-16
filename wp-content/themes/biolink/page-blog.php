<?php get_header(); ?>
<link rel="stylesheet" href="<?php echo get_stylesheet_directory_uri(); ?>/assets/css/page/blog/blog.css">
<style>
    #blog .page-header{
        background-image: url("<?php echo get_stylesheet_directory_uri(); ?>/assets/img/top-pattern-7.png");
        background-repeat: repeat;
        background-size: 600px !important;
        background-position: center;
        position: relative;
    }
</style>
<div id="blog">
    <div class="page-header">
        <div class="container">
            <div class="search-blog">
                <h1 class="mb-3">Blog</h1>
                <form action="/" method="GET" role="form">
                    <input type="search" name="s" id="s-home" autocomplete="off" placeholder="<?php echo esc_attr_x( 'Tìm kiếm', 'placeholder', 'biolink' ); ?>">
                    <button type="submit" class="button-search">
                        <svg xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svgjs="http://svgjs.com/svgjs" width="512" height="512" x="0" y="0" viewBox="0 0 48 48" style="enable-background:new 0 0 512 512" xml:space="preserve" class=""><g><g id="_x32_-Magnifying_Glass"><path d="m40.8994141 39.4853516-7.8127441-7.8127441c2.3978882-2.734375 3.7209473-6.1942749 3.7209473-9.8649902 0-4.0068359-1.5605469-7.7734375-4.3935547-10.6064453s-6.5996094-4.3935547-10.6064453-4.3935547-7.7734375 1.5605469-10.6064453 4.3935547-4.3935547 6.5996094-4.3935547 10.6064453 1.5605469 7.7734375 4.3935547 10.6064453 6.5996094 4.3935547 10.6064453 4.3935547c3.6707153 0 7.1306152-1.3230591 9.8649902-3.7209473l7.8127441 7.8127441c.1953125.1953125.4511719.2929688.7070313.2929688s.5117188-.0976563.7070313-.2929688c.3906249-.390625.3906249-1.0234375-.0000001-1.4140625zm-28.2841797-8.4853516c-2.4550781-2.4555664-3.8076172-5.7202148-3.8076172-9.1923828s1.3525391-6.7368164 3.8076172-9.1923828c2.4555664-2.4550781 5.7202148-3.8076172 9.1923828-3.8076172s6.7368164 1.3525391 9.1923828 3.8076172c2.4550781 2.4555664 3.8076172 5.7202148 3.8076172 9.1923828s-1.3525391 6.7368164-3.8076172 9.1923828c-2.4555664 2.4550781-5.7202148 3.8076172-9.1923828 3.8076172s-6.7368164-1.3525391-9.1923828-3.8076172z" fill="#000000" data-original="#000000"></path></g></g></svg>
                    </button> 
                </form>
            </div>
        </div>
    </div>

    <div class="container">
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


