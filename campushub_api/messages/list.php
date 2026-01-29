<?php
error_reporting(0);
ini_set('display_errors', 0);
ob_clean();
header('Content-Type: application/json');

include '../config/db.php';

$user_id = $_GET['user_id'] ?? null;

if (!$user_id) {
  echo json_encode([
    'status' => false,
    'message' => 'user_id wajib dikirim'
  ]);
  exit;
}

$query = "SELECT * FROM messages WHERE user_id = '$user_id' ORDER BY created_at ASC";
$result = mysqli_query($conn, $query);

$data = [];
while ($row = mysqli_fetch_assoc($result)) {
  $data[] = $row;
}

echo json_encode([
  'status' => true,
  'data' => $data
]);
