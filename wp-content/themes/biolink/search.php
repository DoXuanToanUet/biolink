
<?php get_header(); ?>
<link rel="stylesheet" href="<?php echo get_stylesheet_directory_uri(); ?>/assets/css/page/search/search.css">
<?php
    $paged = ( get_query_var( 'paged' ) ) ? absint( get_query_var( 'paged' ) ) : 1;
	$key 		= isset($_GET['s']) && $_GET['s'] ? $_GET['s'] : '';
	$args = array(
		'posts_per_page'		=> -1,
		'post_type'		=> 'post',
		's'				=> $key,
        'paged' => $paged,
        // 'category-name' =>'tin-tuc'
	);
?>
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
                <?php $the_query = new WP_Query( $args ); ?>
                <?php if( $the_query->have_posts() ): ?>
                    <?php while( $the_query->have_posts() ) : $the_query->the_post(); ?>
                        <div class="search-item pb-3">
                            <a href="<?php the_permalink(); ?>"> <p><?php the_title(); ?></p></a>
                        </div>
                    <?php  endwhile;   ?>
                    <!-- <div class="pagi-search"><?php //the_posts_pagination(array('mid_size'  => 10,)); ?></div> -->
                    <div class="pagi-search">
                       
                    </div>
                <?php else:   echo 'No post'; ?>
                  
                <?php endif; wp_reset_postdata();?>
                
            </div>
        </div>
       
    </div>
   
</div>

<?php get_footer(); ?>