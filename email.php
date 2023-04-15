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
    $events = [
        "hack" => "Hackathon",
        "ffir" => "Free Fire Tournament",
        "fifa" => "FIFA Tournament",
        "valo" => "Valorant Tournament"
    ];

    $team_exists = mysqli_fetch_array(mysqli_query($db, "SELECT COUNT(*) FROM teams WHERE id = '$team_id'"))[0];
    $participant_exists = mysqli_fetch_array(mysqli_query($db, "SELECT COUNT(*) FROM participants WHERE email = '$email'"))[0];
    $team_insert = "INSERT INTO teams VALUES ('$team_id', '$team_name', '$events[$event]')";
    $participant_insert = "INSERT INTO participants (`name`, `email`, `phone`, `team_id`) VALUES ('$name', '$email', '$tel', '$team_id')";
    echo $team_exists . "<br>";
    if ($participant_exists != "0") {
        echo "Participant already exists";
    } else {
        if ($team_exists == "0") {
            mysqli_query($db, $team_insert);
            mysqli_query($db, $participant_insert);
        } else {
            mysqli_query($db, $participant_insert);
        }
    }
    try {
        //Server settings
        $mail->SMTPDebug = SMTP::DEBUG_SERVER;
        $mail->isSMTP();
        $mail->Host = 'smtp.gmail.com';
        $mail->SMTPAuth = true;
        $mail->Username = 'mohamedzakariaouertani@gmail.com';
        $mail->Password = 'aynarvnauwsruzme';
        $mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS;
        $mail->Port = 465;

        //Recipients
        $mail->setFrom('mohamedzakariaouertani@gmail.com', 'Mailer');
        $mail->addAddress($email, $name);
        $mail->isHTML(true); //Set email format to HTML
        $mail->Subject = 'AGS Registration finished successfully';
        $mail->Body = '
            <h1>Thank you for registering in the African Game Show!</h1>
            <p>Your team ID is: ' . $team_id . '</p>
            <p>You can find your team on our website: <a href="https://www.ags.com/teams/?id=' . $team_id . '">https://www.ags.com/teams/?id=' . $team_id . '</a></p>
        ';
        $mail->AltBody = ':\'(';

        $mail->send();
        echo 'Message has been sent';
    } catch (Exception $e) {
        echo "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
    }

    ?>
</body>

</html>