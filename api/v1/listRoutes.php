
<?php
/*----------  Require dependencies  ----------*/
use SLiMS\{Opac,Plugins};

// key to authenticate
define('INDEX_AUTH', '1');

// required file
require '../../sysconfig.inc.php';
require '../../lib/router.inc.php';
require __DIR__ . '/controllers/HomeController.php' ;
require __DIR__ . '/controllers/BiblioController.php';
require __DIR__ . '/controllers/MemberController.php';
require __DIR__ . '/controllers/SubjectController.php';
require __DIR__ . '/controllers/ItemController.php';
require __DIR__ . '/controllers/LoanController.php';
require __DIR__ . '/controllers/UserController.php';

$listRoutes = [
    [
        'method' => 'get',
        'route' => ['HomeController','index'], // Tạo một thể hiện mới của class HomeController
        'path' => '/'
    ],
    [
        'method' => 'post',
        'route' => ['MemberController','store'], 
        'path' => '/member/create'
    ],
    [
        'method' => 'get',
        'route' => ['MemberController','getAll'], 
        'path' => '/member/get-all'
    ],
    [
        'method' => 'get',
        'route' => ['MemberController','getTopMember'], 
        'path' => '/member/get-top'
    ],
    [
        'method' => 'get',
        'route' => ['MemberController','truncate'], 
        'path' => '/member/truncate'
    ],
    [
        'method' => 'post',
        'route' => ['MemberController','storeMany'], 
        'path' => '/member/create-many'
    ],
    [
        'method' => 'get',
        'route' => ['SubjectController','getPopular'], 
        'path' => '/subject/get-Popular'
    ],

    [
        'method' => 'get',
        'route' => ['ItemController','getAll'], 
        'path' => '/item/get-all'
    ],
    [
        'method' => 'get',
        'route' => ['UserController','getAll'], 
        'path' => '/user/get-all'
    ],
    [
        'method' => 'post',
        'route' => ['UserController','store'], 
        'path' => '/user/create'
    ],
    
    
];