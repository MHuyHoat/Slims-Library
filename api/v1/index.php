<?php



try {
    $header = getallheaders();
    if ((isset($header['SLiMS-Http-Cache']) || isset($header['slims-http-cache']))) {
        if ($sysconf['http']['cache']['lifetime'] > 0) header('Cache-Control: max-age=' . $sysconf['http']['cache']['lifetime']);
    }

    require_once 'listRoutes.php';

    $requestURI = $_SERVER['REQUEST_URI'];
    $basePath = 'api/v1/index.php/';
    $URI = str_replace($basePath, '', $requestURI);


    $flag = 0;
    foreach ($listRoutes as $k => $r) {
        if ($r['path'] == $URI && strtolower($_SERVER['REQUEST_METHOD']) == strtolower($r['method'])) {
            try {
                //code...
                $class_name = $r['route'][0];
                $method_name = $r['route'][1];
                $request = json_decode(file_get_contents('php://input'), true) ?? [];
                $class_instance = new $class_name($sysconf, $dbs, $request);
                call_user_func([$class_instance, $method_name]);
                $flag = 1;
            } catch (\Throwable $th) {
                //throw $th;
                echo $th;
            }
        }
    }

    if ($flag === 0) {

        http_response_code(404);
        echo ('Không tìm thấy api có route : ' . $URI);
    }
    //code...
} catch (\Throwable $th) {
    echo $th;
    //throw $th;
}






?>
