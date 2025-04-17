<?php
// Database connection details
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "accounttest";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Function to validate account by username
function validateAccount($usernameInput) {
    global $conn;

    $stmt = $conn->prepare("SELECT * FROM taikhoan WHERE username = ?");
    $stmt->bind_param("s", $usernameInput);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        return true; // Username exists
    } else {
        return false; // Username does not exist
    }
}

// Example usage
$usernameToCheck = "exampleUser";
if (validateAccount($usernameToCheck)) {
    echo "Username exists in the database.";
} else {
    echo "Username does not exist in the database.";
}

// Close connection
$conn->close();
?>