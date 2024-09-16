<?php
$dsn = 'mysql:host=mysql;dbname=myDB';
$username = 'username';
$password = 'password';

try {
    $pdo = new PDO($dsn, $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    echo 'Connection failed: ' . $e->getMessage();
    exit();
}

// Perform query
$stmt = $pdo->query('SELECT * FROM myTable');

// Fetch results
while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
    echo $row["id"] . " " . $row["name"] . "<br>";
}

// Close connection
$pdo = null;
?>