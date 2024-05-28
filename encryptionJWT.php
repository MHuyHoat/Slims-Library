<?php
header('Content-Type:application/json');
require_once 'vendor/autoload.php';
use Firebase\JWT\JWT;
define('secret_key','evk9FRbVs9gf');
 
function generate_jwt_token($userName
// ,$password
,$role,$secret_key){
    $issued_at=time();
    $expiration_time= $issued_at+60*60;
    $payload=array(
       'iat'=>$issued_at,
       'exp'=>$expiration_time,
       'userName'=>$userName,
    //    'passwd'=>$password,
       'role'=>$role
    );
    return JWT::encode($payload,$secret_key,'HS256');
}
if(isset($_REQUEST['userName'])  
// && isset($_REQUEST['password'] ) 
&& isset($_REQUEST['role'])) {
    http_response_code(200);

    echo json_encode([
        'message'=>'success',
         'token'=>generate_jwt_token($_REQUEST['userName']
        //  ,$_REQUEST['password']
         , $_REQUEST['role'],secret_key)
    ]);
}else {
    http_response_code(500);
   echo json_encode([
    'message'=>'error',
     'error'=>"UserName, Password, Role must required"
   ]);
}

?>