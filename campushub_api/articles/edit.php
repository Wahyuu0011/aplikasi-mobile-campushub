<?php
error_reporting(0);
ini_set('display_errors', 0);
ob_clean();
header('Content-Type: application/json');

include '../config/db.php';

$id = $_POST['id'] ?? '';
$title = $_POST['title'] ?? '';
$content = $_POST['content'] ?? '';
$image = $_POST['image'] ?? '';

if ($id == '' || $title == '' || $content == '') {
  echo json_encode([
    'status' => false,
    'message' => 'Data tidak lengkap'
  ]);
  exit;
}

$query = "UPDATE articles
          SET title='$title', content='$content', image='$image'
          WHERE id='$id'";

if (mysqli_query($conn, $query)) {
  echo json_encode([
    'status' => true,
    'message' => 'Artikel berhasil diupdate'
  ]);
} else {
  echo json_encode([
    'status' => false,
    'message' => 'Gagal update artikel'
  ]);
}
