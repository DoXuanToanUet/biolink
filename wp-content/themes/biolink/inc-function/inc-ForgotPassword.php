<?php 
add_action('wp_ajax_nopriv_ForgotPassword', 'hk_handle_forgot_password');

function hk_handle_forgot_password() {
	$userData = [];

	if ( isset($_POST['userData']) && is_array($_POST['userData']) ) {
		$userData = $_POST['userData'];
	}

	if ( isset($userData['_wpnonce']) && wp_verify_nonce( $userData['_wpnonce'], 'form_forgot_password' ) ) {
		$arr_form = [];
		$arr_error = [];

		if ( isset( $userData['email'] ) && $userData['email'] ) {
			$arr_form['email'] = sanitize_text_field( $userData['email'] );

			if ( ! email_exists( $arr_form['email'] ) ) {
				$arr_error['email'] = 'Địa chỉ email chưa tồn tại trong hệ thống. Vui lòng kiểm tra lại';
			}
		} else {
			$arr_error['email'] = 'Bạn chưa nhập địa chỉ email';
		}

		if ( count( $arr_error ) ) {
			// echo '<ul>';
			// foreach ( $arr_error as $key => $error ) {
			// 	echo '<li>'.$error.'</li>';
			// }
			// echo '</ul>';
            wp_send_json_error(array(
                "status"=>"error",
                'mess'=>$arr_error,
                'class'=>'error'
            )); 
              
		} else {
			$user = get_user_by( 'email', $arr_form['email'] );
			$user_id = $user->ID;
			$user_obj = new WP_User( $user_id );
			$reset_key = get_password_reset_key( $user_obj );
			$user_login = $user->user_login;
			$site_name = get_bloginfo( 'name' );

			$rp_link = network_site_url("wp-login.php?action=rp&key=$reset_key&login=" . rawurlencode($user_login), 'login');

			$to = $arr_form['email'];
			$subject = '['.$site_name.'] Yêu cầu thay đổi mật khẩu';
			$headers = array( 'Content-Type: text/html; charset=UTF-8' );

			$body = 'Yêu cầu thay đổi mật khẩu. <br/>';
			$body .= 'Nếu bạn đã yêu cầu đặt lại mật khẩu cho <strong>' . $user_login . '</strong>, hãy sử dụng đường dẫn bên dưới để đặt mật khẩu mới.<br/>Nếu không phải bạn thực hiện, vui lòng bỏ qua email này. <br/>';
			$body .= $rp_link;

			wp_mail( $to, $subject, $body, $headers );

            wp_send_json_success(array(
                "status"=>"success",
                'mess'=>'Đã gửi thông tin khôi phục password vào email của bạn. Hãy kiểm tra email!',
                'class'=>'success'
            ));
		}
	}
	die();
}