<?php
// database.php

class Database {
    // Properti untuk menyimpan konfigurasi database
    private $host     = "localhost";
    private $username = "root";
    private $password = "";
    private $database = "db_latihan_pbo_ti1c_bangkitadipermana";
    public $conn;

    // Constructor: Otomatis berjalan saat objek Database dibuat
    public function __construct() {
        // Membuat koneksi ke MySQL menggunakan objek mysqli
        $this->conn = new mysqli($this->host, $this->username, $this->password, $this->database);

        // Memeriksa apakah koneksi mengalami error
        if ($this->conn->connect_error) {
            die("Koneksi database gagal: " . $this->conn->connect_error);
        }

        // Menampilkan pesan sukses jika berhasil terhubung
        echo "Pesan: Berhasil terhubung ke database '" . $this->database . "' secara otomatis via Constructor!<br>";
    }

    // Method untuk mengambil objek koneksi (bisa digunakan di file lain)
    public function getConnection() {
        return $this->conn;
    }
}
$db = new Database();
?>