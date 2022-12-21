<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
    <meta charset="<?php bloginfo( 'charset' ); ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="<?php the_field('favicon_options', 'option'); ?>">
    <title> <?php echo is_front_page() ? bloginfo('description') : wp_title( '' ); ?></title>
    <?php wp_head(); ?>
    <?php 
        if( get_field('bio_oBkg') == true ){
            $bodyOverlay = 'bio-overlay' ? 'bio-overlay' : '';
        }
    ?>
</head>
<body <?php //body_class(); ?> class="<?php echo  $bodyOverlay; ?>" >
<?php wp_body_open(); ?>
<?php 
     $choose = get_field('bio_bkg');
    //  echo "<pre>";
    //  var_dump($choose);
    //  echo "</pre>";
    if( $choose == 'bkgImage'):
        $bioBkg = 'url('.get_field('bio_bkgImage').')'; 
    elseif($choose == 'bkgColor'):
        $bioBkg = get_field('bio_bkgColor'); 
    elseif( $choose == 'bkgGradientColor' ):
        $bioBkg = get_field('bio_bkgGradientColor'); 
    endif;
    // echo "<pre>";
    // var_dump($bioBkg);
    // echo "</pre>";
  
?>
<style>
    body{
        background : <?php echo $bioBkg;?>;
        background-size:cover;
        position: relative;
        min-height:100vh;
    }
    body.bio-overlay:after{ 
        content:'';
        position: absolute;
        top:0;
        left:0;
        width:100%;
        height:100%;
        background:rgba(0,0,0,0.5);
        z-index: 1;
    }

</style>
<div class="bio-content">
    <div class="container">
        <?php
         if ( have_posts()  ):
            while ( have_posts() ) : the_post();  
                the_content();
            endwhile;
        endif;
        ?>
    </div>
</div>

<?php wp_footer(); ?>
</body>
</html>


