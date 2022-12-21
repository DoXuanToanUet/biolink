
<?php get_header(); ?>
<link rel="stylesheet" href="<?php echo get_stylesheet_directory_uri(); ?>/assets/css/page/search/search.css">

<style>
    #search .page-header{
        background-image: url("<?php echo get_stylesheet_directory_uri(); ?>/assets/img/top-pattern-7.png");
        background-repeat: repeat;
        background-size: 600px !important;
        background-position: center;
        position: relative;
        background-color: #ff3850;
        padding: 50px 0px;
        text-align: center;
        margin: 0px 0px 30px;
        color:#fff;
    }
</style>
</style>
<div id="search">
    <div class="page-header">
        <div class="container">
            <div class="search-blog">
                <h2><?php _e( 'Search for: <span style="font-style:italic; text-transform: uppercase;">"'.$key.'"</span>', 'biolink' ); ?></h2> 
            </div>
        </div>
    </div>
</div>
<div class="container">
    <div class="pb-4">
        <div class="search page">
            <div class="search-content pb-4">
                <?php
                    $paged = ( get_query_var( 'paged' ) ) ? absint( get_query_var( 'paged' ) ) : 1;
                    // var_dump($paged);
                    $key 		= isset($_GET['s']) && $_GET['s'] ? $_GET['s'] : '';
                    $args = array(
                        'posts_per_page'		=> 4,
                        'post_type'		=> 'post',
                        's'				=> $key,
                        'paged' =>  $paged ,
                        // 'category-name' =>'tin-tuc'
                    );
                    $search_q  = new WP_Query( $args );
                
                    if( $search_q->have_posts() ): ?>
                    <?php while( $search_q->have_posts() ) : $search_q->the_post(); ?>
                        <div class="search-item pb-3">
                            <a href="<?php the_permalink(); ?>"> <p><?php the_title(); ?></p></a>
                        </div>
                    <?php  endwhile;   
                    ?>
                    <div class="pagi-search"><?php //the_posts_pagination(array('mid_size'  => 5,)); ?></div>
                    <div class="pagi-search" style="display:flex">
                      <?php 
                         $big = 999999999; // need an unlikely integer
                        //  global $search_q;
                         // $total =  $s_query->max_num_pages;
                         // var_dump($total);
                         // if ($total > 1) echo '<div class="flex" style="display:flex;">';
                        // if ($search_q) $main_query = $search_q;
                        // else $main_query = $wp_query;
                        // // $big = 999999999;
                        // $total = isset($main_query->max_num_pages) ? $main_query->max_num_pages : '';
                        // if ($total > 1) echo '<div class="">';
                         echo paginate_links( array(
                             'base' => str_replace( $big, '%#%', esc_url( get_pagenum_link( $big ) ) ),
                             'format' => '?paged=%#%',
                             'current' => max( 1, get_query_var('paged') ),
                             'total' => $search_q->max_num_pages,
                             'prev_next'          => true,
                             'prev_text'          => __(' « '),
                             'next_text'          => __(' » '),
                             'type'               => 'plain',
                         ) );
                        //  if ($total > 1) echo '</div>';
                      ?>
                    </div>
               
               <?php else:   echo 'No post'; ?>
                  
               <?php endif; wp_reset_postdata();?>
            </div>
        </div>
       
    </div>
   
</div>

<?php get_footer(); ?>