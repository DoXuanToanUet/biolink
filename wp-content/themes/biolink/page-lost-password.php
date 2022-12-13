<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
    <meta charset="<?php bloginfo( 'charset' ); ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <?php //wp_head(); ?>
    <title><?php is_front_page() ? bloginfo('description') : wp_title(''); ?></title>
</head>
<link rel="stylesheet" href="<?= home_url(); ?>/wp-content/themes/biolink/assets/css/custom.css">
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
    <div class="bio-content ">
        <div class="container">
            <div class="devlogin" id="forgotpwd">
                <div class="devAccount-form-wrapper">
                    <div class="login-title"><?php _e('Quên mật khẩu'); ?></div>
                    <form id="hk-forgotpwd" action="<?php echo get_home_url() . '/quen-mat-khau'; ?>">
                        <?php wp_nonce_field( 'form_forgot_password' ); ?>
                        <div class="devAccount-item">
                            <input type="text" value="" name="email" id="email" placeholder="Email" required/>
                        </div>
                        <div class="devAccount-alert">
                        </div>
                        <button type="submit" name="btnregister" id="devLostPass-btn" class="button">Gửi</button>
                        <input type="hidden" name="url_ajax" value="<?= admin_url('admin-ajax.php');?>">
                        <div class="loader"></div>
                        <p id="hk-success">
                        </p>
                        <p class="text-center have-regis"> <a href="<?php echo home_url(); ?>" class="login-link">Quay lại trang chủ</a></p>
                        <p class="text-center have-regis"> <a href="<?php echo home_url().'/register'; ?>" class="login-link">Đăng ký</a></p>
                        <p class="text-center have-regis"> <a href="<?php echo home_url().'/login'; ?>" class="login-link">Đăng nhập</a></p>
                        
                    </form>
                </div>
              
            </div>
        </div>
    </div>
<script src="<?= home_url(); ?>/wp-content/themes/biolink/assets/plugins/jquery.min.js"></script>
<script>
    (function($){  
	$(document).ready(function(){
		var ajaxUrl = '<?php echo admin_url('admin-ajax.php'); ?>';
		$('#hk-forgotpwd').submit(function(e) {
			e.preventDefault();
			var data = {};
			var ArrayForm = $(this).serializeArray();
			$.each(ArrayForm, function() {
				data[this.name] = this.value;
			});

			$.ajax({
				type: "POST",
				url: ajaxUrl,
				data: {
					'action': 'ForgotPassword',
					'userData': data
				},
				dataType: "json",
				beforeSend: function() {
                    $('#forgotpwd .loader').show();
                },
				success: function (response) {
                    console.log(response);
                    $('#forgotpwd .loader').hide();
                    $('#hk-success').removeClass();
					// $('#hk-message').html(response);
					if (response.data.status == 'success') {
						$("#hk-forgotpwd")[0].reset();
						// $('#hk-message').hide();
                        $('#hk-success').html(response.data.mess);
                        $('#hk-success').addClass(response.data.class);
					}else if( response.data.status == 'error' ){
                        $("#hk-forgotpwd")[0].reset();
                        $('#hk-success').html(response.data.mess.email);
                        $('#hk-success').addClass(response.data.class);
                    }
				}
			});
		});
	});
})(jQuery);
</script>
<?php //wp_footer(); ?>
</body>
</html>
