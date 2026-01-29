<?php
error_reporting(0);
ini_set('display_errors', 0);
ob_clean();
header('Content-Type: application/json');

include '../config/db.php';

echo password_hash('12345', PASSWORD_DEFAULT);
