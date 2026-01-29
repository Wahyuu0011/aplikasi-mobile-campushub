<?php
error_reporting(0);
ini_set('display_errors', 0);
ob_clean();
header('Content-Type: application/json');

include '../config/db.php';

$title = $_POST['title'] ?? '';
$content = $_POST['content'] ?? '';
$image = $_POST['image'] ?? '';

if ($title == '' || $content == '') {
  echo json_encode([
    'status' => false,
    'message' => 'Data tidak lengkap'
  ]);
  exit;
}

$query = "INSERT INTO articles (title, content, image)
          VALUES ('$title','$content','$image')";

if (mysqli_query($conn, $query)) {
  echo json_encode([
    'status' => true,
    'message' => 'Artikel berhasil ditambahkan'
  ]);
} else {
  echo json_encode([
    'status' => false,
    'message' => 'Gagal menambahkan artikel'
  ]);
}
