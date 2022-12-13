<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
    <meta charset="<?php bloginfo( 'charset' ); ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <?php //wp_head(); ?>
    <title><?php is_front_page() ? bloginfo('description') : wp_title(''); ?></title>
</head>
<link rel="stylesheet" href="<?= home_url(); ?>/wp-content/themes/biolink/assets/css/custom.css">
<link rel="stylesheet" href="<?= home_url(); ?>/wp-content/themes/biolink/assets/plugins/bootstrap/bootstrap-grid.css">
<style>
    .bio-login{
        background : url(<?php echo get_field("bio_loginImg"); ?>) no-repeat;
        position: relative;
        width: 100%;
        background-size:cover;
        height:100vh;
    }
    .bio-login:after{ 
        content:'';
        position: absolute;
        top:0;
        left:0;
        width:100%;
        height:100%;
        background:linear-gradient(180deg,rgba(0,0,0,.8),rgba(0,0,0,.4),rgba(0,0,0,.8));
        z-index: 1;
    }
</style>
<body class="bio-login">
<?php //wp_body_open(); ?>
    <div class="bio-content">
        <div class="container">
            <div class="devlogin">
                
                <div class="devAccount-form-wrapper">
                    <div class="login-title"><?php _e('Đăng ký'); ?></div>
                    <form  method="post" class="devRegis-form">
                        <div class="row row-small">
                            <div class="col col-lg-6 ">
                                <div class="devAccount-item">
                                    <!-- <label>Họ của bạn:</label> -->
                                    <input type="text" value="" name="last_name" id="last_name" placeholder="Họ" required/>
                                </div>
                            </div>
                            <div class="col col-lg-6 ">
                                <div class="devAccount-item">
                                    <!-- <label>Tên của bạn:</label> -->
                                    <input type="text" value="" name="first_name" id="first_name" placeholder="Tên"  required/>
                                </div>
                            </div>
                        </div>
                        <div class="devAccount-item">
                            <!-- <label>Email của bạn:</label> -->
                            <input type="text" value="" name="email" id="email" placeholder="Email" required/>
                        </div>
                        <div class="devAccount-item">
                            <!-- <label>Tài khoản:</label> -->
                            <input type="text" value="" name="username" id="username" placeholder="Nhập tên tài khoản" required/>
                        </div>
                        <div class="devAccount-item devRegis-itemChoose">
                            <!-- <label>Tài khoản:</label> -->
                            <div class="Regislink"> <?php echo preg_replace("(^https?://)", "", site_url().'/' ); ?></div>
                            <input type="text" value="" name="yourNameLink" id="yourNameLink" placeholder="yourname" required/>
                        </div>
                        <div class="devAccount-item">
                            <!-- <label>Mật khẩu:</label> -->
                            <input type="password" value="" name="pwd1" id="pwd1" placeholder="Mật khẩu" required/>
                            <div class="show-password-icon" id="show-password-icon">
                                <svg xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svgjs="http://svgjs.com/svgjs" width="512" height="512" x="0" y="0" viewBox="0 0 128 128" style="enable-background:new 0 0 512 512" xml:space="preserve" class="hovered-paths"><g><path xmlns="http://www.w3.org/2000/svg" id="Show" d="m64 104c-41.873 0-62.633-36.504-63.496-38.057-.672-1.209-.672-2.678 0-3.887.863-1.552 21.623-38.056 63.496-38.056s62.633 36.504 63.496 38.057c.672 1.209.672 2.678 0 3.887-.863 1.552-21.623 38.056-63.496 38.056zm-55.293-40.006c4.758 7.211 23.439 32.006 55.293 32.006 31.955 0 50.553-24.775 55.293-31.994-4.758-7.211-23.439-32.006-55.293-32.006-31.955 0-50.553 24.775-55.293 31.994zm55.293 24.006c-13.234 0-24-10.766-24-24s10.766-24 24-24 24 10.766 24 24-10.766 24-24 24zm0-40c-8.822 0-16 7.178-16 16s7.178 16 16 16 16-7.178 16-16-7.178-16-16-16z" fill="#000000" data-original="#000000" class="hovered-path"></path></g></svg>
                            </div>
                        </div>
                        <div class="devAccount-item">
                            <!-- <label>Nhập lại mật khẩu:</label> -->
                            <input type="password" value="" name="pwd2" id="pwd2" placeholder="Xác nhận mật khẩu" required />
                            <div class="show-password-icon" id="show-password-icon2">
                                <svg xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svgjs="http://svgjs.com/svgjs" width="512" height="512" x="0" y="0" viewBox="0 0 128 128" style="enable-background:new 0 0 512 512" xml:space="preserve" class="hovered-paths"><g><path xmlns="http://www.w3.org/2000/svg" id="Show" d="m64 104c-41.873 0-62.633-36.504-63.496-38.057-.672-1.209-.672-2.678 0-3.887.863-1.552 21.623-38.056 63.496-38.056s62.633 36.504 63.496 38.057c.672 1.209.672 2.678 0 3.887-.863 1.552-21.623 38.056-63.496 38.056zm-55.293-40.006c4.758 7.211 23.439 32.006 55.293 32.006 31.955 0 50.553-24.775 55.293-31.994-4.758-7.211-23.439-32.006-55.293-32.006-31.955 0-50.553 24.775-55.293 31.994zm55.293 24.006c-13.234 0-24-10.766-24-24s10.766-24 24-24 24 10.766 24 24-10.766 24-24 24zm0-40c-8.822 0-16 7.178-16 16s7.178 16 16 16 16-7.178 16-16-7.178-16-16-16z" fill="#000000" data-original="#000000" class="hovered-path"></path></g></svg>
                            </div>
                        </div>
                        <div class="devAccount-alert">
                        </div>
                        <button type="submit" name="btnregister" id="devRegis-btn" class="button">Đăng ký</button>
                        <p class="text-center have-regis">Bạn đã có tài khoản? <a href="/login" class="login-link">Đăng nhập</a></p>
                        <?php wp_nonce_field( 'ajax-regis-nonce', 'securityregis' ); ?>
                        <input type="hidden" name="url_ajax" value="<?= admin_url('admin-ajax.php');?>">
                        
                    </form>
                </div>
              
            </div>
        </div>
    </div>
<script src="<?= home_url(); ?>/wp-content/themes/biolink/assets/plugins/jquery.min.js"></script>
<script src="<?= home_url(); ?>/wp-content/themes/biolink/assets/js/main.js"></script>
<?php //wp_footer(); ?>
</body>
</html>
