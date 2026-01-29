<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

header('Content-Type: application/json');
include '../config/db.php';

$query = "SELECT * FROM articles ORDER BY created_at DESC";
$result = mysqli_query($conn, $query);

if (!$result) {
  echo json_encode([
    'status' => false,
    'error' => mysqli_error($conn)
  ]);
  exit;
}

$data = [];
while ($row = mysqli_fetch_assoc($result)) {
  $data[] = $row;
}

echo json_encode([
  'status' => true,
  'data' => $data
]);
