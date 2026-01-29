<?php
error_reporting(0);
ini_set('display_errors', 0);
ob_clean();
header('Content-Type: application/json');

include '../config/db.php';

$query = "
SELECT 
  user_id,
  MAX(created_at) AS last_time,
  SUBSTRING_INDEX(
    GROUP_CONCAT(message ORDER BY created_at DESC),
    ',', 1
  ) AS last_message
FROM messages
GROUP BY user_id
ORDER BY last_time DESC
";

$result = mysqli_query($conn, $query);
$data = [];

while ($row = mysqli_fetch_assoc($result)) {
  $data[] = $row;
}

echo json_encode([
  'status' => true,
  'data' => $data
]);
