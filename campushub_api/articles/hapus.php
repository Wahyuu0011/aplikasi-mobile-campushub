<?php
error_reporting(0);
ini_set('display_errors', 0);
ob_clean();
header('Content-Type: application/json');

include '../config/db.php';

$id = $_POST['id'] ?? '';

if ($id == '') {
  echo json_encode([
    'status' => false,
    'message' => 'ID wajib dikirim'
  ]);
  exit;
}

$query = "DELETE FROM articles WHERE id='$id'";

if (mysqli_query($conn, $query)) {
  echo json_encode([
    'status' => true,
    'message' => 'Artikel berhasil dihapus'
  ]);
} else {
  echo json_encode([
    'status' => false,
    'message' => 'Gagal menghapus artikel'
  ]);
}
