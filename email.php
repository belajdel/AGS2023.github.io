<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <?php
    use PHPMailer\PHPMailer\PHPMailer;
    use PHPMailer\PHPMailer\SMTP;
    use PHPMailer\PHPMailer\Exception;

    require 'vendor/autoload.php';

    $name = $_POST['name'];
    $email = $_POST['email'];
    $tel = $_POST['tel'];
    $event = $_POST['event'];
    $team_name = $_POST['team_name'];
    $team_id = "AGS-" . $event . "-" . substr($team_name, 0, 4);
    echo $team_id . "<br>";
    //Create an instance; passing `true` enables exceptions
    $mail = new PHPMailer(true);

    $db = mysqli_connect("localhost", "root", "", "ags");

    try {
        //Server settings
        $mail->SMTPDebug = SMTP::DEBUG_SERVER; //Enable verbose debug output
        $mail->isSMTP(); //Send using SMTP
        $mail->Host = 'smtp.gmail.com'; //Set the SMTP server to send through
        $mail->SMTPAuth = true; //Enable SMTP authentication
        $mail->Username = 'mohamedzakariaouertani@gmail.com'; //SMTP username
        $mail->Password = 'aynarvnauwsruzme'; //SMTP password
        $mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS; //Enable implicit TLS encryption
        $mail->Port = 465; //TCP port to connect to; use 587 if you have set `SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS`
    
        //Recipients
        $mail->setFrom('mohamedzakariaouertani@gmail.com', 'Mailer');
        $mail->addAddress($email, $name); //Add a recipient
        // $mail->addAddress('ellen@example.com'); //Name is optional
    
        //Attachments
        // $mail->addAttachment('/var/tmp/file.tar.gz'); //Add attachments
        $mail->isHTML(true); //Set email format to HTML
        $mail->Subject = '9ayadt';
        $mail->Body = 'This is the HTML message body <b>5F</b>';
        $mail->AltBody = ':\'(';

        // $mail->send();
        echo 'Message has been sent';
    } catch (Exception $e) {
        echo "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
    }

    ?>
</body>

</html>