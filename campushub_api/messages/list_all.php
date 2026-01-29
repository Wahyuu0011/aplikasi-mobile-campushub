<?php
error_reporting(0);
ini_set('display_errors', 0);
ob_clean();
header('Content-Type: application/json');

include '../config/db.php';

$query = "SELECT * FROM messages ORDER BY created_at DESC";
$result = mysqli_query($conn, $query);

$data = [];
while ($row = mysqli_fetch_assoc($result)) {
  $data[] = $row;
}

echo json_encode([
  'status' => true,
  'data' => $data
]);