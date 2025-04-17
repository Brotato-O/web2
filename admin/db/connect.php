<?php
class connectDB
{
    private $server = "localhost";
    private $user = "root";
    private $pass = "";
    private $dbname = "quanlybanhang";
    public $mysqli_conn;

    public function getMysqliConnection()
    {
        $this->mysqli_conn = new mysqli($this->server, $this->user, $this->pass, $this->dbname);

        if ($this->mysqli_conn->connect_error) {
            die("Lỗi kết nối: " . $this->mysqli_conn->connect_error);
        }
        return $this->mysqli_conn;
    }
}
