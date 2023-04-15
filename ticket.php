<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Festava Live - Ticket HTML Form</title>

    <!-- CSS FILES -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Outfit:wght@100;200;400;700&display=swap" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-icons.css" rel="stylesheet">
    <link href="css/templatemo-festava-live.css" rel="stylesheet">
</head>

<body>

    <main>
        <?php include 'header.php'; ?>
        <section class="ticket-section section-padding">
            <div class="section-overlay"></div>

            <div class="container">
                <div class="row">

                    <div class="col-lg-6 col-10 mx-auto">
                        <form class="custom-form ticket-form mb-5 mb-lg-0" action="insert.php" method="post"
                            role="form">
                            <h2 class="text-center mb-4">Get started here</h2>

                            <div class="ticket-form-body">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-12">
                                        <input type="text" name="ticket-form-name" id="ticket-form-name"
                                            class="form-control" placeholder="Full name" required>
                                    </div>

                                    <div class="col-lg-6 col-md-6 col-12">
                                        <input type="email" name="ticket-form-email" id="ticket-form-email"
                                            pattern="[^ @]*@[^ @]*" class="form-control" placeholder="Email address"
                                            required>
                                    </div>
                                </div>

                                <input type="tel" class="form-control" name="ticket-form-phone"
                                    placeholder="Ph 21 234 567" pattern="[0-9]{2}[0-9]{3}[0-9]{3}|[0-9]{4}[0-9]{4}"
                                    required="">


                                <h6>Choose Ticket Type</h6>

                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-12">
                                        <div class="form-check form-control">
                                            <input class="form-check-input" type="radio" name="TicketForm"
                                                id="flexRadioDefault1">
                                            <label class="form-check-label" for="flexRadioDefault1">
                                                Samara 25 TND
                                            </label>
                                        </div>
                                    </div>

                                    <div class="col-lg-6 col-md-6 col-12">
                                        <div class="form-check form-check-radio form-control">
                                            <input class="form-check-input" type="radio" name="TicketForm"
                                                id="flexRadioDefault2">
                                            <label class="form-check-label" for="flexRadioDefault2">
                                                Redstar 25 TND
                                            </label>
                                        </div>
                                    </div>
                                </div>

                                <input type="number" name="ticket-form-number" id="ticket-form-number"
                                    class="form-control" placeholder="Number of Tickets" required>

                                <textarea name="ticket-form-message" rows="3" class="form-control"
                                    id="ticket-form-message" placeholder="Additional Request"></textarea>

                                <div class="col-lg-4 col-md-10 col-8 mx-auto">
                                    <button type="submit" class="form-control">Buy Ticket</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
        </section>
    </main>


    <?php include 'footer.php'; ?>
    <!--

T e m p l a t e M o

-->
    <!-- JAVASCRIPT FILES -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.sticky.js"></script>
    <script src="js/custom.js"></script>

</body>

</html>