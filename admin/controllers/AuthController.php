<?php
class AuthController
{
    private $db;
    private $auth;

    public function __construct()
    {
        $this->db = new PDO("mysql:host=localhost;dbname=duan1", "root", "");
        $this->db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $this->auth = new Auth();
    }

    public function showLoginForm()
    {
        if (isset($_SESSION['admin_id']) && $this->auth->isAdmin()) {
            header('Location: ./');
            exit;
        }
        require_once './views/login.php';
    }

    

    public function logout()
    {
        $this->auth->logout();
    }
}