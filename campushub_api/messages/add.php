<?php
error_reporting(0);
ini_set('display_errors', 0);
ob_clean();
header('Content-Type: application/json');

include '../config/db.php';

$user_id = $_POST['user_id'] ?? null;
$message = $_POST['message'] ?? null;

if (!$user_id || !$message) {
  echo json_encode([
    'status' => false,
    'message' => 'Data tidak lengkap'
  ]);
  exit;
}

$query = "INSERT INTO messages (user_id, message) VALUES ('$user_id', '$message')";
$insert = mysqli_query($conn, $query);

if ($insert) {
  echo json_encode([
    'status' => true,
    'message' => 'Pesan berhasil dikirim'
  ]);
} else {
  echo json_encode([
    'status' => false,
    'message' => 'Gagal mengirim pesan'
  ]);
}
