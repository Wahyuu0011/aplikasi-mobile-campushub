<?php
error_reporting(0);
ini_set('display_errors', 0);
ob_clean();
header('Content-Type: application/json');

include '../config/db.php';

$user_id = $_POST['user_id'];
$message = $_POST['message'];

$query = "INSERT INTO messages (user_id, message, sender)
          VALUES ('$user_id', '$message', 'admin')";

if (mysqli_query($conn, $query)) {
  echo json_encode([
    'status' => true,
    'message' => 'Admin berhasil membalas'
  ]);
} else {
  echo json_encode([
    'status' => false,
    'message' => 'Gagal membalas'
  ]);
}
