<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);
header('Content-Type: application/json');

include '../config/db.php';

$email    = $_POST['email'] ?? '';
$password = $_POST['password'] ?? '';

if ($email == '' || $password == '') {
  echo json_encode([
    'status' => false,
    'message' => 'Email dan password wajib diisi'
  ]);
  exit;
}

// ambil user berdasarkan email
$query = mysqli_query($conn, "SELECT * FROM users WHERE email='$email' LIMIT 1");

if (mysqli_num_rows($query) == 0) {
  echo json_encode([
    'status' => false,
    'message' => 'Email tidak terdaftar'
  ]);
  exit;
}

$user = mysqli_fetch_assoc($query);

// verifikasi password
if (!password_verify($password, $user['password'])) {
  echo json_encode([
    'status' => false,
    'message' => 'Password salah'
  ]);
  exit;
}

// login berhasil
echo json_encode([
  'status' => true,
  'message' => 'Login berhasil',
  'data' => [
    'id' => $user['id'],
    'name' => $user['name'],
    'email' => $user['email'],
  ]
]);
