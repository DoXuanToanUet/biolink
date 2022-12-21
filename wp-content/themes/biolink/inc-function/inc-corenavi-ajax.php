<?php
//code phân trang ở trang chủ khi load bằng ajax
function ff_corenavi_ajax($custom_query = null, $paged = 1)
{
    global $wp_query, $wp_rewrite;
    if ($custom_query) $main_query = $custom_query;
    else $main_query = $wp_query;
    $big = 999999999;
    $total = isset($main_query->max_num_pages) ? $main_query->max_num_pages : '';
    if ($total > 1) echo '<div class="paginate_links">';
    echo paginate_links(array(
        'base' => trailingslashit(home_url()) . "{$wp_rewrite->pagination_base}/%#%/",
        'format' => '?paged=%#%',
        'current' => max(1, $paged),
        'total' => $total,
        'mid_size' => '2',
        'prev_text' => __('Previous'),
        'next_text' => __('Next'),
    ));
    if ($total > 1) echo '</div>';
}

//Ajax load post
add_action('wp_ajax_ajax_load_post', 'ajax_load_post_func');
add_action('wp_ajax_nopriv_ajax_load_post', 'ajax_load_post_func');
function ajax_load_post_func(){
    $paged       = isset( $_POST['ajax_paged'] ) ? (int) $_POST['ajax_paged'] : 1;
    $catId     = isset( $_POST['catId'] ) ? $_POST['catId'] : ''; // lấy taxonomy
    $list_item = new WP_Query(array(
        'post_type' => 'post',
        'posts_per_page' => 4,
        'post_status' => 'publish',
        'order' => 'DESC',
        'orderby' => 'DATE',
        'tax_query' => array(
            array(
                'taxonomy' => 'category',
                'field'    => 'id',
                'terms'    => $catId,
            ),
        ),
        'paged' => $paged
    ));
    if ($list_item->have_posts()):
        ob_start();
        $max_post_count = $list_item->post_count;
        ?>
            <div class="blog-main-post list-item-content">
                <?php if ($list_item->have_posts()):
                    while ($list_item->have_posts()): $list_item->the_post(); ?>
                        <?php echo do_shortcode('[itemblog]') ?>
                    <?php
                    endwhile;
                endif;wp_reset_query(); ?>
            </div>
            <div class="pagi">	
                <?php ff_corenavi_ajax($list_item, $paged); ?>
            </div>
               
            
           
        <?php $content = ob_get_clean(); ?>
    <?php else: ?>
        <?php wp_send_json_error('No post?'); ?>
    <?php endif; //End news
    wp_send_json_success($content);
    die();
}

//Ajax Search Post
add_action('wp_ajax_search_pro', 'search_pro_func');
add_action('wp_ajax_nopriv_search_pro', 'search_pro_func');
function search_pro_func(){
    $val_search       = isset( $_POST['val_search'] ) ? $_POST['val_search'] : '';
    
    $header_search_query = new WP_Query(array(
        'post_type' => 'post',
        'posts_per_page' => 20,
        'post_status' => 'publish',
        'order' => 'DESC',
        // 'orderby' => 'title',
        // 'search_prod_title' =>  $val_search,
        's'=> $val_search,
    ));
    if ($header_search_query->have_posts()):
        ob_start();
        $max_post_count = $header_search_query->post_count;
        ?>
            <div class="h-search-count" ><?php echo _e('Search result: <span>'.$max_post_count.'</span>','biolink'); ?></div>
            <div class="h-search-main">
                <?php if ($header_search_query->have_posts()):
                    while ($header_search_query->have_posts()): $header_search_query->the_post(); ?>
                        <div class="h-search-item d-flex">
                            <div class="img">
                                <a href="<?php the_permalink(); ?>" class="imgc" title="<?php the_title(); ?>">
                                    <?php if (has_post_thumbnail()): the_post_thumbnail('search-thumb'); else:?>
                                        <img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/img/search-not-found.jpg" alt="<?php the_title(); ?>">
                                    <?php endif; ?>
                                </a>
                            </div>
                            <div class="title">
                                <a href="<?php the_permalink(); ?>" title="<?php the_title(); ?>" class="">
                                    <?php the_title() ?>
                                </a>
                                <div class="sub"><?php echo wp_trim_words(get_the_content(), 15, '...'); ?></div>
                            </div>
                        </div>
                    <?php
                    endwhile;
                endif;wp_reset_postdata(); ?>
            </div>   
        <?php $content = ob_get_clean(); ?>
    <?php else: ?>
        <?php wp_send_json_error('No post?'); ?>
    <?php endif; //End news
    wp_send_json_success($content);
    die();
}

