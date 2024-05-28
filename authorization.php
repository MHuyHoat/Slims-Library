<?php
header('Content-Type','application/json');
require_once __DIR__ . "/lib/JWTHandle.php";
define('secret_key', 'evk9FRbVs9gf');
define('host', $_SERVER['HTTP_HOST']);

if (isset($_REQUEST['userName']) && isset($_REQUEST['hash'])) {
  $userName = $_REQUEST['userName'];
  $hash = $_REQUEST['hash'];
  if (md5($userName . secret_key) == $hash) {
    $JWTHandle = new JWTHandler(secret_key, 60 * 5, 'HS256');
    $tokenLogin = $JWTHandle->generateJWT(['userName' => $userName]);
    if (empty($_REQUEST['page'])) {
      header("Location:http://" . host . "/index.php?p=login&&token=$tokenLogin");
    } else {
      header("Location:http://" . host . "/index.php?p=member&&token=$tokenLogin");
    }
  }else {
    http_response_code(403);
    echo json_encode(['error'=>"Incorrect hash"]); 
  }
} else {
  echo json_encode(['error'=>"Username and hash must required"]); 
}
