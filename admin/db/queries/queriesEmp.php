<?php
include_once "../db/connect.php";

class QueriesEmp
{
    private \mysqli $conn;

    public function __construct()
    {
        $db = new connectDB();
        $this->conn = $db->getMysqliConnection();
        if (!$this->conn) {
            die("Kết nối thất bại.");
        }
    }

    public function getAllEmployees()
    {
        $sql = "SELECT * FROM nhanvien";
        $result = $this->conn->query($sql);
        if ($result === false) {
            error_log("Query failed: " . $this->conn->error);
            return null;
        }
        return $result;
    }
}
