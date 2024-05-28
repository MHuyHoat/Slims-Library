<?php

/**
 * @Created by          : Waris Agung Widodo (ido.alit@gmail.com)
 * @Date                : 10/09/20 21.31
 * @File name           : MemberController.php
 */

require_once 'Controller.php';
require_once __DIR__ . '/../helpers/Image.php';

class MemberController extends Controller
{

    use Image;

    protected $sysconf;

    /**
     * @var mysqli
     */
    protected $db;
    protected $request;

    function __construct($sysconf, $obj_db, $request)
    {
        $this->sysconf = $sysconf;
        $this->db = $obj_db;
        $this->request = $request;
    }
    public function getAll()
    {
        try {
            $sqlStr = "SELECT * FROM member";
            $query = $this->db->query($sqlStr);
            $result = $query->fetch_all(MYSQLI_ASSOC);
            http_response_code(200);
            return parent::withJson($result);
        } catch (\Throwable $th) {
            http_response_code(500);
            parent::withJson([
                'message' => 'error',
                'detail' => $th->getMessage(),
                'sql' => $sqlStr

            ]);
        }
    }
    public function store()
    {
        try {
            //code...
            // {
            //     "member_id": "123456",
            //     "member_name": "John Doe v2 ",
            //     "gender": 1,// 1 là nam && 0 là nữ
            //     "member_type_id": 1,// NhÓm member:  1 là mặc định Standard , 2 sinh viên, 3 teacher ( Phải tạo Nhóm bạn đọc mới  có , mặc định không có ) 
            //     "member_email": "john.doe@example.com",
            //     "member_mail_address":"john22017862.doe@example.com",
            //     "member_address": "123 Main Street",
            //     "postal_code": "10001",//mã bưu chính
            //     "inst_name": "Đại học",// cơ quan , tổ chức , của sinh viên 
            //     "is_new": 1,
            //     "pin": "1234",
            //     "member_phone": "+1234567890",
            //     "member_fax": "",
            //     "member_since_date": "2024-04-27",
            //     "register_date": "2024-04-27",
            //     "expire_date": "2024-04-27", // ngày hết hạn
            //     "birth_date": "1990-01-01",
            //     "member_notes": "Some notes about the member",
            //     "mpasswd": "1"  // Hashed password (not shown for security)
            //   }


            $member_id = $this->request['member_id'];
            $member_name = $this->request['member_name'];
            $gender = $this->request['gender'] ?? 0; // patched by Indra Sutriadi
            $member_type_id = $this->request['member_type_id'];
            $member_email = $this->request['member_email'];
            $member_mail_address = $this->request['member_mail_address'] ?? $member_email;
            $member_address = $this->request['member_address'];
            $postal_code = $this->request['postal_code'] ?? 'NULL';
            $inst_name = $this->request['inst_name'] ?? 'NULL';
            $is_new = $this->request['is_new'] ?? 0;
            $member_image = 'NULL';
            $pin = $this->request['pin'] ?? 'NULL';
            $member_phone = $this->request['member_phone'] ?? 'NULL';
            $member_fax = $this->request['member_fax'] ?? 'NULL';
            $member_since_date = $this->request['member_since_data'] ?? date('y-m-d');
            $register_date = $this->request['register_date'] ?? date('y-m-d');
            $expire_date =  $this->request['expire_date'] ?? date('y-m-d');;
            $birth_date = $this->request['birth_date'] ?? 'NULL';
            $member_notes = $this->request['member_note'] ?? '';

            // Password column

            $mpasswd = password_hash($this->request['mpasswd'], PASSWORD_BCRYPT);
            $curr_datetime = date('Y-m-d H:i:s');
            $sql_check = "SELECT * FROM member WHERE member_id='$member_id'";
            $queryCheck = $this->db->query($sql_check);
            $existedModel = $queryCheck->fetch_all(MYSQLI_ASSOC);
            if (!empty($existedModel)) {
                $sql_str = "UPDATE member
                SET
                member_id = ?,
                 member_name = ?,
                    gender = ?,
                    member_type_id = ?,
                    member_email = ?,
                    member_address = ?,
                    postal_code = ?,
                    inst_name = ?,
                    is_new = ?,
                    member_image = ?,
                    pin = ?,
                    member_phone = ?,
                    member_fax = ?,
                    member_since_date = ?,
                    register_date = ?,
                    expire_date = ?,
                    birth_date = ?,
                    member_notes = ?,
                     input_date =?,
                    last_update = ?,
                    mpasswd = ?,
                    member_mail_address = ?
                WHERE member_id = '$member_id'  -- Assuming member_id is the unique identifier
                ";
            } else {
                // sql insert string
                $sql_str = "INSERT IGNORE INTO member (member_id, member_name, gender, member_type_id, member_email, member_address,
                 postal_code, inst_name, is_new, member_image, pin, member_phone, member_fax, member_since_date, register_date, expire_date, birth_date, member_notes, input_date, last_update, mpasswd , member_mail_address) VALUES (?,?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            }

            $stmt = $this->db->prepare($sql_str);

            $types = "ssssssssssssssssssssss"; // 21 "s" for 21 string values (corrected)


            // ... rest of your code

            $stmt->bind_param(
                $types,
                $member_id,
                $member_name,
                $gender,
                $member_type_id,
                $member_email,
                $member_address,
                $postal_code,
                $inst_name,
                $is_new,
                $member_image,
                $pin,
                $member_phone,
                $member_fax,
                $member_since_date,
                $register_date,
                $expire_date,
                $birth_date,
                $member_notes,
                $curr_datetime,
                $curr_datetime,
                $mpasswd,
                $member_mail_address
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
                'message' => 'error',
                'detail' => $th->getMessage(),
                'sql' => $sql_str

            ]);
        }
    }
    public function storeMany()
    {
        $listData = $this->request;
        $countSuccess = 0;
        $countFailed = 0;
        $listCountFailed = [];
        $listDetailFailed = [];
        foreach ($listData as $k => $v) {
            try {
                $member_id = $v['member_id'];
                $member_name = $v['member_name'];
                $gender = $v['gender'] ?? 0; // patched by Indra Sutriadi
                $member_type_id = $v['member_type_id'];
                $member_email = $v['member_email'];
                $member_mail_address = $v['member_mail_address'] ?? $member_email;
                $member_address = $v['member_address'];
                $postal_code = $v['postal_code'] ?? 'NULL';
                $inst_name = $v['inst_name'] ?? 'NULL';
                $is_new = $v['is_new'] ?? 0;
                $member_image = 'NULL';
                $pin = $v['pin'] ?? 'NULL';
                $member_phone = $v['member_phone'] ?? 'NULL';
                $member_fax = $v['member_fax'] ?? 'NULL';
                $member_since_date = $v['member_since_data'] ?? date('y-m-d');
                $register_date = $v['register_date'] ?? date('y-m-d');
                $expire_date =  $v['expire_date'] ?? date('y-m-d');;
                $birth_date = $v['birth_date'] ?? 'NULL';
                $member_notes = $v['member_note'] ?? '';

                // Password column

                $mpasswd = password_hash($v['mpasswd'], PASSWORD_BCRYPT);
                $curr_datetime = date('Y-m-d H:i:s');
                $sql_check = "SELECT * FROM member WHERE member_id='$member_id'";
                $queryCheck = $this->db->query($sql_check);
                $existedModel = $queryCheck->fetch_all(MYSQLI_ASSOC);
                if (!empty($existedModel)) {
                    $sql_str = "UPDATE member
                SET
                member_id = ?,
                 member_name = ?,
                    gender = ?,
                    member_type_id = ?,
                    member_email = ?,
                    member_address = ?,
                    postal_code = ?,
                    inst_name = ?,
                    is_new = ?,
                    member_image = ?,
                    pin = ?,
                    member_phone = ?,
                    member_fax = ?,
                    member_since_date = ?,
                    register_date = ?,
                    expire_date = ?,
                    birth_date = ?,
                    member_notes = ?,
                     input_date =?,
                    last_update = ?,
                    mpasswd = ?,
                    member_mail_address = ?
                WHERE member_id = '$member_id'  -- Assuming member_id is the unique identifier
                ";
                } else {
                    // sql insert string
                    $sql_str = "INSERT IGNORE INTO member (member_id, member_name, gender, member_type_id, member_email, member_address,
                 postal_code, inst_name, is_new, member_image, pin, member_phone, member_fax, member_since_date, register_date, expire_date, birth_date, member_notes, input_date, last_update, mpasswd , member_mail_address) VALUES (?,?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
                }

                $stmt = $this->db->prepare($sql_str);

                $types = "ssssssssssssssssssssss"; // 21 "s" for 21 string values (corrected)


                // ... rest of your code

                $stmt->bind_param(
                    $types,
                    $member_id,
                    $member_name,
                    $gender,
                    $member_type_id,
                    $member_email,
                    $member_address,
                    $postal_code,
                    $inst_name,
                    $is_new,
                    $member_image,
                    $pin,
                    $member_phone,
                    $member_fax,
                    $member_since_date,
                    $register_date,
                    $expire_date,
                    $birth_date,
                    $member_notes,
                    $curr_datetime,
                    $curr_datetime,
                    $mpasswd,
                    $member_mail_address
                );

                $result = $stmt->execute();
                if ($result)       $countSuccess++;
                else $countFailed++;
            } catch (\Throwable $th) {
                //throw $th;
                $listCountFailed += $v;
                $error = array([
                    'member_id' => $v['member_id'],
                    'error' => $th->getMessage()
                ]);
                array_push($listDetailFailed, $error);

                $countFailed++;
            }
        }
        return parent::withJson([
            'count' => count($listData),
            'countSuccess' => $countSuccess,
            'countFailed' => $countFailed,
            'listCountFailed' => $listCountFailed,
            'listDetailFailed' => $listDetailFailed
        ]);
    }
    public function truncate()
    {
        try {
            $sqlStr = "TRUNCATE TABLE member";
            $stmt = $this->db->prepare($sqlStr);
            $result = $stmt->execute();
            if ($result) {
                http_response_code(200);
                return parent::withJson([
                    'message' => "success"
                ]);
            }
        } catch (\Throwable $th) {
            http_response_code(500);
            parent::withJson([
                'message' => 'error',
                'detail' => $th->getMessage(),
                'sql' => $sqlStr

            ]);
        }
    }
   public function getTopMember()
    {
      
        try {
         
            //code...
            $limit = 3;
            $year = date('Y');
            $sql = "SELECT m.member_name, mm.member_type_name, m.member_image, COUNT(*) AS total, GROUP_CONCAT(i.biblio_id SEPARATOR ';') AS biblio_id
          FROM loan AS l
          LEFT JOIN member AS m ON l.member_id=m.member_id
          LEFT JOIN mst_member_type AS mm ON m.member_type_id=mm.member_type_id
          LEFT JOIN item As i ON l.item_code=i.item_code
          WHERE
            l.loan_date LIKE '$year%' AND
            m.member_name IS NOT NULL
          GROUP BY m.member_id
          ORDER BY total DESC
          LIMIT $limit";

            $query = $this->db->query($sql);
            $return = array();
            if ($query) {
                while ($data = $query->fetch_assoc()) {
                    $title = array_unique(explode(';', $data['biblio_id']));
                    $return[] = array(
                        'name' => $data['member_name'],
                        'type' => $data['member_type_name'],
                        'image' =>  $this->getImagePath($data['member_image'], 'persons'),
                        'total' => $data['total'],
                        'total_title' => count($title),
                        'order' => $data['total'] + count($title)
                    );
                }
            }

            usort($return, function ($a, $b) {
                return $b['order'] <=> $a['order'];
            });

            return parent::withJson($return);
        } catch (\Throwable $th) {
            // http_response_code(500);
            return  parent::withJson([
                'error' => "error",
            ]);
        }
    }
}
