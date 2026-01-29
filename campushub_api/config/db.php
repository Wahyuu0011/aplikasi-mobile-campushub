<?php
$conn = mysqli_connect("localhost", "root", "", "campushub_db");

if (!$conn) {
  die(json_encode([
    'status' => false,
    'message' => mysqli_connect_error()
  ]));
}
