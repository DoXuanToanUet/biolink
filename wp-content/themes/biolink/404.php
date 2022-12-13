<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
    <meta charset="<?php bloginfo( 'charset' ); ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <?php //wp_head(); ?>
    <title><?php is_front_page() ? bloginfo('description') : wp_title(''); ?></title>
</head>
<link rel="stylesheet" href="<?= home_url(); ?>/wp-content/themes/biolink/assets/plugins/bootstrap/bootstrap-grid.css">
<link rel="stylesheet" href="<?= home_url(); ?>/wp-content/themes/biolink/assets/css/page/404.css">
<body class="error404">
<?php //wp_body_open(); ?> 
    <div class="container">
        <div class="row error404-wrapper">
            <div class="col-lg-6 error404-left">
                <div class="errors__text"><p class="errors__pretitle" >Xin lỗi, chúng tôi không tìm thấy trang mà bạn cần!</p></div>
                <div class="errors__buttons d-flex" style="gap:15px">
                    <a class="btn404" href="<?php echo home_url();?>">Trang chủ</a>
                    <!-- <a class="440btn" href="/blog/">Blog</a></div> -->
                </div>
            </div>
            <div class="col-lg-6 error404-right">
                <img src="<?php echo get_stylesheet_directory_uri() . '/assets/img/404error.png'; ?>" alt="">
            </div>
        </div>
    </div>
<?php //wp_footer(); ?>
</body>
</html>
