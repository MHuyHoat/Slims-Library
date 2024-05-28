<?php

require_once __DIR__."/../vendor/autoload.php";

use Firebase\JWT\JWT;
use Firebase\JWT\Key;

class JWTHandler {
    
    private $secretKey;
    private $time; //seconde;
    private $algorithm;

    public function __construct($secretKey, $time=60*60,$algorithm='HS256') {
        $this->secretKey = $secretKey;
        $this->time=$time;
        $this->algorithm=$algorithm;
    }

    public function generateJWT($data) {
        $issuedAt = time();
        $expire = $issuedAt + ($this->time); // Thời gian hết hạn tính bằng giây

        $payload = array(
            "iat" => $issuedAt, // Thời gian tạo token
           "exp" => $expire, // Thời gian hết hạn token
           "data" => $data // Dữ liệu muốn lưu trong token
           
        );

        // Tạo token
        $jwt = JWT::encode($payload, $this->secretKey,$this->algorithm);
        return $jwt;
    }

    public function decodeJWT($jwt) {
        try {
            
            $decoded = JWT::decode((string)$jwt, new Key((string)$this->secretKey,(string) $this->algorithm));
       
          
            return $decoded;
        } catch (Exception $e) {
            return $jwt."\n". $this->secretKey. "\n ". $this->algorithm; // Trả về null nếu giải mã thất bại
        }
    }
}
?>