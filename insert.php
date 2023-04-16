<?php
// Replace with your database credentials
$host = "localhost";
$username = "id20612153_root";
$password = ">a_8}iA>~}H23lYE";
$dbname = "id20612153_ags";

// Establish a database connection
$conn = new mysqli($host, $username, $password, $dbname);

// Check for errors
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Retrieve form data
$name = $_POST["ticket-form-name"];
$email = $_POST["ticket-form-email"];
$phone = $_POST["ticket-form-phone"];
$ticket_type = $_POST["TicketForm"];
$number_of_tickets = $_POST["ticket-form-number"];
$message = $_POST["ticket-form-message"];

// Check if the email or phone number already exists in the database
$email_check_query = "SELECT * FROM ticket_orders WHERE email='$email'";
$phone_check_query = "SELECT * FROM ticket_orders WHERE phone='$phone'";

$email_result = $conn->query($email_check_query);
$phone_result = $conn->query($phone_check_query);

if ($email_result->num_rows > 0) {
    echo "<script>alert('Email already exists!')</script>";
    exit();
}

if ($phone_result->num_rows > 0) {
    echo "<script>alert('Phone number already exists!')</script>";
    exit();
}

// Prepare a SQL statement to insert the data into the database
$sql = "INSERT INTO ticket_orders (name, email, phone, ticket_type, num_tickets, message, created_at) VALUES ('$name', '$email', '$phone', '$ticket_type', '$number_of_tickets', '$message', NOW())";

// Execute the SQL statement
if ($conn->query($sql) === TRUE) {
    // echo "Ticket purchased successfully!";
    echo "<script>alert('Ticket purchased successfully!');window.location.href='tgs2023.html';</script>";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

// Close the database connection
$conn->close();


?>










