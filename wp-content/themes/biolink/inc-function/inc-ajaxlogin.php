<?php
add_action('wp_ajax_ajaxlogin', 'devLoginForm');
add_action('wp_ajax_nopriv_ajaxlogin', 'devLoginForm');

function devLoginForm(){
    $err = '';
    $success = '';

    // First check the nonce, if it fails the function will break
    check_ajax_referer( 'ajax-login-nonce', 'securitylogin' );

    // $username = isset($_POST['username']) ? $_POST['username'] : '';
    // $pass = isset($_POST['pass']) ? $_POST['pass'] : '';
   
    $info = array();
    $info['user_login'] = wp_strip_all_tags($_POST['username']);
    $info['user_password'] = wp_strip_all_tags($_POST['pass']);
    $info['remember'] = true;

    $user_signin = wp_signon( $info );


    if ( is_wp_error($user_signin) ){
        $err = 'Email hoặc tên đăng nhập không đúng';
        wp_send_json_error(array(
            "showdata"=>$err,
            'class'=>'error'
        )); 
    } else {
        $success = 'Bạn đã đăng nhập thành công!';
        wp_send_json_success(array(
            "message"=>"success",
            "showdata"=> $success,
            'class'=>'success'
        ));   
}
}
