<?php

require_once 'Controller.php';
class UserController extends Controller
{
    protected $db;
    protected $sysconf;
    protected $request;
    protected $table = 'user';
    public function __construct($sysconf, $obj_db, $request)
    {
        $this->sysconf = $sysconf;
        $this->db = $obj_db;
        $this->request = $request;
    }
    public function getAll()
    {
        try {
            //code...
            $sql = "SELECT * FROM `" . $this->table . "`";
            $query = $this->db->query($sql);

            $returnData = $query->fetch_all(MYSQLI_ASSOC);
            http_response_code(200);
            parent::withJson($returnData);
        } catch (\Throwable $th) {
            //throw $th;
            http_response_code(500);
            dd($th->getMessage());
        }
    }
    public function store()
    {
        try {
           // exampleData
        //    {
        //     "username": "john",
        //     "realname": "John Doe",
        //     "password": "1",  
        //     "2fa": null,
        //     "email": "john.doe@example.com",
        //     "user_type": "user", 
        //     "user_image": "https://example.com/profile_picture.jpg",
        //     "social_media": null,  
        //     "last_login": "2024-04-27 16:20:00",  
        //     "last_login_ip": "192.168.1.10",  
        //     "groups": null,
        //     "admin_template": null,
        //     "forgot": null,
        //     "input_date": "2024-04-27 16:20:00",
        //     "last_update": "2024-04-27 16:20:00"
        //   }

            $username = $this->request['username'];
            $realname = $this->request['realname'];
            $passwd = password_hash($this->request['password'], PASSWORD_BCRYPT);
            $twoFA = $this->request['2fa'];
            $email = $this->request['email'];
            $userType = $this->request['userType'];
            $userImage = $this->request['userImage'];
            $socialMedia = $this->request['socialMedia'] ?? null;
            $lastLogin =  date('y-m-d H:i:s');
            $lastLoginIP = "127.0.0.1";
            $groups = null;
            $adminTemplate = null;
            $forgot = null;
            $inputDate = date('y-m-d H:i:s');
            $lastUpdate = date('y-m-d H:i:s');


            $sql = "INSERT INTO $this->table (
                username,
                realname,
                passwd,
                `2fa`,
                email,
                user_type,
                user_image,
                social_media,
                last_login,
                last_login_ip,
                groups,
                admin_template,
                forgot,
                input_date,
                last_update
            )
            VALUES (
                ?,
                ?,
                ?,
                ?,
                ?,
                ?,
                ?,
                ?,
                ?,
                ?,
                ?,
                ?,
                ?,
                ?,
                ?
            )";

            $stmt = $this->db->prepare($sql);

            $stmt->bind_param(
                "sssssssssssssss" ,
                $username,
                $realname,
                $passwd,
                $twoFA,
                $email,
                $userType,
                $userImage,
                $socialMedia,
                $lastLogin,
                $lastLoginIP,
                $groups,
                $adminTemplate,
                $forgot,
                $inputDate,
                $lastUpdate
            );
        

            $result = $stmt->execute();
            if ($result) {
                http_response_code(200);
                parent::withJson([
                    'status' => 'success',
                    'model' => $this->request
                ]);
            }
           
        } catch (\Throwable $th) {
            //throw $th;
            http_response_code(500);
            parent::withJson([
                'status' => 'error',
                 'detail'=> $th->getMessage(),
            ]);;
        }
    }
}
