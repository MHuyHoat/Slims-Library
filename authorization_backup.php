<?php

   require_once __DIR__.'/vendor/autoload.php';

   use Firebase\JWT\JWT;
   use Firebase\JWT\Key;
   define('secret_key','evk9FRbVs9gf');
   define('host',$_SERVER['HTTP_HOST']);
   function validate_jwt_token($jwt,$secretKey){
    try {
        //code...
       return JWT::decode($jwt,new Key($secretKey,'HS256'));
    } catch (\Throwable $th) {
        //throw $th;
        return false;
    }
   }
   try {
    $token= $_GET['token'];
    $jwt_decode= validate_jwt_token($token,secret_key);
    if($jwt_decode->exp >= time() && time()>= $jwt_decode->iat){
        $userName=$jwt_decode->userName;  
        $passwd=$jwt_decode->passwd;
       

    }else {
        http_response_code(500);
    }
   } catch (\Throwable $th) {
    //throw $th;
    echo ($th->getMessage());
   }

?>