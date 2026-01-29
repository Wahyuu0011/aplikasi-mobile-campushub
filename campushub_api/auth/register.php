<?php
error_reporting(0);
ini_set('display_errors', 0);
ob_clean();
header('Content-Type: application/json');

include '../config/db.php';

$name     = $_POST['name'] ?? '';
$email    = $_POST['email'] ?? '';
$password = $_POST['password'] ?? '';

if ($name == '' || $email == '' || $password == '') {
  echo json_encode([
    'status' => false,
    'message' => 'Semua field wajib diisi'
  ]);
  exit;
}

// cek email sudah ada
$cek = mysqli_query($conn, "SELECT id FROM users WHERE email='$email'");
if (mysqli_num_rows($cek) > 0) {
  echo json_encode([
    'status' => false,
    'message' => 'Email sudah terdaftar'
  ]);
  exit;
}

// hash password
$hash = password_hash($password, PASSWORD_DEFAULT);

$query = "INSERT INTO users (name,email,password)
          VALUES ('$name','$email','$hash')";

if (mysqli_query($conn, $query)) {
  echo json_encode([
    'status' => true,
    'message' => 'User berhasil ditambahkan'
  ]);
} else {
  echo json_encode([
    'status' => false,
    'message' => 'Gagal menambahkan user'
  ]);
}
