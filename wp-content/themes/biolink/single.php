<?php get_header(); ?>
<?php setPostViews(get_the_ID()); ?>
<?php 
    $obj = get_queried_object();
    $categories = get_the_category();
    // echo "<pre>";
    // var_dump($obj);
   
    // echo "<pre>";
?>

    <div class="container">
        <?php /* Start the Loop */
            while ( have_posts() ) :
                the_post();
                if( in_category('huong-dan-san-pham') ){
                    get_template_part( 'template-parts/content/content', 'support' );
                }else{
                    get_template_part( 'template-parts/content/content', 'blog' );
                }
               
            endwhile; // End of the loop.
       ?>
    </div>
<?php get_footer(); ?>
