<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <meta name="description" content="">
    <meta name="author" content="">

    <title>AGS-Africa Game Show</title>

    <!-- CSS FILES -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Outfit:wght@100;200;400;700&display=swap" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-icons.css" rel="stylesheet">
    <link href="css/templatemo-festava-live.css" rel="stylesheet">
    <link rel="stylesheet" href="css/pip.css">

    <!--

TemplateMo 583 Festava Live

https://templatemo.com/tm-583-festava-live

-->

</head>

<body>
    <main>
        <?php include 'header.php'; ?>

        <section class="ticket-section section-padding">
            <div class="section-overlay"></div>

            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-10 mx-auto">
                        <form class="custom-form ticket-form mb-5 mb-lg-0" action="email.php" method="POST" role="form">
                            <h2 class="text-center mb-4">Get started here</h2>

                            <div class="ticket-form-body">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-12">
                                        <input type="text" name="name" class="form-control" placeholder="Full name"
                                            required>
                                    </div>

                                    <div class="col-lg-6 col-md-6 col-12">
                                        <input type="email" name="email" pattern="[^ @]*@[^ @]*" class="form-control"
                                            placeholder="Email address" required>
                                    </div>
                                </div>

                                <input type="tel" class="form-control" name="tel" placeholder="+216 xxx xxx xx">

                                <h6>Event</h6>
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-12">
                                        <div class="form-check form-control">
                                            <input class="form-check-input" type="radio" name="event" value="valo">
                                            <label class="form-check-label">
                                                Valorant Tournament
                                            </label>
                                        </div>
                                    </div>

                                    <div class="col-lg-6 col-md-6 col-12">
                                        <div class="form-check form-check-radio form-control">
                                            <input class="form-check-input" type="radio" name="event" value="fifa">
                                            <label class="form-check-label">
                                                FIFA Tournament
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-12">
                                        <div class="form-check form-control">
                                            <input class="form-check-input" type="radio" name="event" value="ffire">
                                            <label class="form-check-label">
                                                Free Fire Tournament
                                            </label>
                                        </div>
                                    </div>

                                    <div class="col-lg-6 col-md-6 col-12">
                                        <div class="form-check form-check-radio form-control">
                                            <input class="form-check-input" type="radio" name="event" value="hack">
                                            <label class="form-check-label">
                                                Hackathon
                                            </label>
                                        </div>
                                    </div>
                                </div>

                                <h6>Team Information</h6>
                                <input type="text" name="team_name" class="form-control" placeholder="Team Name"
                                    required>

                                <!-- <h6>Optional</h6>
                                <textarea name="message" rows="3" class="form-control"
                                 placeholder="Additional Request"></textarea> -->

                                <div class="col-lg-4 col-md-10 col-8 mx-auto">
                                    <button href=index.php class="form-control">Register
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
        </section>
    </main>


    <footer class="site-footer">
        <div class="site-footer-top">
            <div class="container">
                <div class="row">

                    <div class="col-lg-6 col-12">
                        <h2 class="text-white mb-lg-0">Live</h2>
                    </div>

                    <div class="col-lg-6 col-12 d-flex justify-content-lg-end align-items-center">
                        <ul class="social-icon d-flex justify-content-lg-end">
                            <li class="social-icon-item">
                                <a href="#" class="social-icon-link">
                                    <span class="bi-twitter"></span>
                                </a>
                            </li>

                            <li class="social-icon-item">
                                <a href="#" class="social-icon-link">
                                    <span class="bi-apple"></span>
                                </a>
                            </li>

                            <li class="social-icon-item">
                                <a href="#" class="social-icon-link">
                                    <span class="bi-instagram"></span>
                                </a>
                            </li>

                            <li class="social-icon-item">
                                <a href="#" class="social-icon-link">
                                    <span class="bi-youtube"></span>
                                </a>
                            </li>

                            <li class="social-icon-item">
                                <a href="#" class="social-icon-link">
                                    <span class="bi-pinterest"></span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <div class="container">
            <div class="row">

                <div class="col-lg-6 col-12 mb-4 pb-2">
                    <h5 class="site-footer-title mb-3">Links</h5>

                    <ul class="site-footer-links">
                        <li class="site-footer-link-item">
                            <a href="#" class="site-footer-link">Home</a>
                        </li>

                        <li class="site-footer-link-item">
                            <a href="#" class="site-footer-link">About</a>
                        </li>

                        <li class="site-footer-link-item">
                            <a href="#" class="site-footer-link">Artists</a>
                        </li>

                        <li class="site-footer-link-item">
                            <a href="#" class="site-footer-link">Schedule</a>
                        </li>

                        <li class="site-footer-link-item">
                            <a href="#" class="site-footer-link">Pricing</a>
                        </li>

                        <li class="site-footer-link-item">
                            <a href="#" class="site-footer-link">Contact</a>
                        </li>
                    </ul>
                </div>

                <div class="col-lg-3 col-md-6 col-12 mb-4 mb-lg-0">
                    <h5 class="site-footer-title mb-3">Have a question?</h5>

                    <p class="text-white d-flex mb-1">
                        <a href="tel: 090-080-0760" class="site-footer-link">
                            090-080-0760
                        </a>
                    </p>

                    <p class="text-white d-flex">
                        <a href="mailto:hello@company.com" class="site-footer-link">
                            hello@company.com
                        </a>
                    </p>
                </div>

                <div class="col-lg-3 col-md-6 col-11 mb-4 mb-lg-0 mb-md-0">
                    <h5 class="site-footer-title mb-3">Location</h5>

                    <p class="text-white d-flex mt-3 mb-2">
                        Silang Junction South, Tagaytay, Cavite, Philippines</p>

                    <a class="link-fx-1 color-contrast-higher mt-3" href="#">
                        <span>Our Maps</span>
                        <svg class="icon" viewBox="0 0 32 32" aria-hidden="true">
                            <g fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round">
                                <circle cx="16" cy="16" r="15.5"></circle>
                                <line x1="10" y1="18" x2="16" y2="12"></line>
                                <line x1="16" y1="12" x2="22" y2="18"></line>
                            </g>
                        </svg>
                    </a>
                </div>
            </div>
        </div>
        <div class="spnsr-cont">
            <a href="https://appgallery.huawei.com/" target="_blank"><img src="aimages/sponsors/pp1.png"></a>
            <a href="https://www.tunisieautoroutes.tn/" target="_blank"><img src="images/sponsors/auto.png"></a>
            <a href="https://www.mosaiquefm.net/" target="_blank"><img src="images/sponsors/m.png"></a>
            <a href="https://www.tunisietelecom.tn/" target="_blank"> <img src="images/sponsors/tt.png"></a>
        </div>
        <?php //include 'footer.php'; ?>



        <!-- JAVASCRIPT FILES -->
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.sticky.js"></script>
        <script src="js/custom.js"></script>

</body>

</html>