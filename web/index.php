<?php

$servername = "mysql";
$username = "myuser";
$password = "mypassword";
$dbname = "mydb";

// Создаем соединение
$conn = new mysqli($servername, $username, $password, $dbname);

// Проверяем соединение
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
echo "Connected successfully";

// Выполняем запрос
$sql = "SELECT * FROM mytable";
$result = $conn->query($sql);

// Выводим результат
if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        echo "acccccc: " . $row["a"]. " - b: " . $row["b"]. "<br>";
    }
} else {
    echo "0 results";
}

// Закрываем соединение
$conn->close();
?>    