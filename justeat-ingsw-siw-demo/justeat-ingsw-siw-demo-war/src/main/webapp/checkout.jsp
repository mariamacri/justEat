<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="#">
    <title>Starter Template for Bootstrap</title>
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/animsition.min.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="css/style.css" rel="stylesheet"> <script type="text/javascript" src="http://gc.kis.v2.scr.kaspersky-labs.com/C33BB16D-A6ED-BE42-AEC0-323877E5D848/main.js" charset="UTF-8"></script></head>
<body>
     <div class="site-wrapper animsition" data-animsition-in="fade-in" data-animsition-out="fade-out">
    <div class="site-wrapper">
        <!--header starts-->
        <header id="header" class="header-scroll top-header headrom">
            <!-- .navbar -->
          <nav class="navbar navbar-dark">
                <div class="container">
                    <button class="navbar-toggler hidden-lg-up" type="button" data-toggle="collapse" data-target="#mainNavbarCollapse">&#9776;</button>
                    <a class="navbar-brand" href="index.html"> <img class="img-rounded" src="img/food-picky-logo.png" alt=""> </a>
                    <div class="collapse navbar-toggleable-md  float-lg-right" id="mainNavbarCollapse">
                        <ul class="nav navbar-nav">
                            <li class="nav-item"> <a class="nav-link active" href="index.html">Home <span class="sr-only">(current)</span></a> </li>
                            <li class="nav-item dropdown"> <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Cibo</a>
                                <div class="dropdown-menu"> <a class="dropdown-item" href="food_results.html">Risultati Cibo</a> <a class="dropdown-item" href="map_results.html">Risultati Mappa</a></div>
                            </li>
                            <li class="nav-item dropdown"> <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Ristoranti</a>
                                <div class="dropdown-menu"> <a class="dropdown-item" href="restaurants.html">Search results</a> <a class="dropdown-item" href="restaurantProfile.html">Profilo Ristoranti</a></div>
                            </li>
                            <li class="nav-item dropdown"> <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Pagine</a>
                                <div class="dropdown-menu"> <a class="dropdown-item" href="pricing.html">Pricing</a> <a class="dropdown-item" href="contact.html">Contact</a> <a class="dropdown-item" href="restaurantRegistration.html">Inserisci Nuovo Ristorante</a> <a class="dropdown-item" href="registration.html">Registrazione</a>
                              <div class="dropdown-divider"></div> <a class="dropdown-item" href="checkout.html">Checkout</a> </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
            <!-- /.navbar -->
        </header>
        <div class="page-wrapper">
            <div class="top-links">
                <div class="container">
                    <ul class="row links">
                        <li class="col-xs-12 col-sm-3 link-item active"><span>1</span><a href="index.html">Inserisci il tuo Indirizzo</a></li>
                        <li class="col-xs-12 col-sm-3 link-item active"><span>2</span><a href="restaurants.html">Scegli il Ristorante</a></li>
                        <li class="col-xs-12 col-sm-3 link-item active"><span>3</span><a href="profile.html">Scegli il tuo cibo preferito</a></li>
                        <li class="col-xs-12 col-sm-3 link-item"><span>4</span><a href="checkout.html">Ordina e paga Online</a></li>
                    </ul>
                </div>
            </div>
            <div class="container m-t-30">
                <div class="widget clearfix">
                    <!-- /widget heading -->
                    <div class="widget-heading">
                        <h3 class="widget-title text-dark">
                                      Riassunto del carrello
                                    </h3>
                        <div class="clearfix"></div>
                    </div>
                    <div class="widget-body">
                        <form method="post" action="#">
                            <div class="row">
                                <div class="col-sm-6 margin-b-30">
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div class="form-group">
                                                <label>Nome*</label>
                                                <input type="text" class="form-control" placeholder="John"> </div>
                                            <!--/form-group-->
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="form-group">
                                                <label>Cognome*</label>
                                                <input type="text" class="form-control" placeholder="Rossi"> </div>
                                            <!--/form-group-->
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div class="form-group">
                                                <label>Paese*</label>
                                                <select class="form-control">
                                                    <option>Italia</option>
                                                    <option>Francia</option>
                                                    <option>Spagna</option>
                                                    <option>Germania</option>
                                                    <option>Uk</option>
                                                    <option>Olanda</option>
                                                    <option>Grecia</option>
                                                </select>
                                            </div>
                                            <!--/form-group-->
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="form-group">
                                                <label>Nome Attività</label>
                                                <input type="text" class="form-control" placeholder="Dolci freschi"> </div>
                                            <!--/form-group-->
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <div class="form-group">
                                                <label>Indirizzo Completo*</label>
                                                <input type="text" class="form-control" placeholder="Via dei Mandarini"> </div>
                                            <!--/form-group-->
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div class="form-group">
                                                <label>Città*</label>
                                                <input type="text" class="form-control" placeholder="Milano"> </div>
                                            <!--/form-group-->
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="form-group">
                                                <label>Codice Postale*</label>
                                                <input type="text" class="form-control" placeholder="87000"> </div>
                                            <!--/form-group-->
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div class="form-group">
                                                <label>Indirizzo Email*</label>
                                                <input type="text" class="form-control" placeholder="rossi@gmail.com"> </div>
                                            <!--/form-group-->
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="form-group">
                                                <label>Telefono*</label>
                                                <input type="text" class="form-control" placeholder="3411112221"> </div>
                                            <!--/form-group-->
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="cart-totals margin-b-20">
                                        <div class="cart-totals-title">
                                          <h4>Sommario Carrello</h4>
                                        </div>
                                        <div class="cart-totals-fields">
                                            <table class="table">
                                                <tbody>
                                                    <tr>
                                                        <td>Subtotale</td>
                                                        <td>€29.00</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Costi di consegna</td>
                                                        <td>€2.00</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="text-color"><strong>Totale</strong></td>
                                                        <td class="text-color"><strong>€31.00</strong></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <!--cart summary-->
                                    <div class="payment-option">
                                        <ul class=" list-unstyled">
                                            <li>
                                                <label class="custom-control custom-radio  m-b-20">
                                                    <input id="radioStacked1" name="radio-stacked" type="radio" class="custom-control-input"> <span class="custom-control-indicator"></span> <span class="custom-control-description">Pagamento alla consegna</span>
                                                   <!-- <br> <span>Please send your cheque to Store Name, Store Street, Store Town, Store State / County, Store Postcode.</span> </label>-->
                                            </li>
                                            <li>
                                                <label class="custom-control custom-radio  m-b-10">
                                                    <input name="radio-stacked" type="radio" class="custom-control-input"> <span class="custom-control-indicator"></span> <span class="custom-control-description">Paypal <img src="img/paypal.jpg" alt="" width="90"></span> </label>
                                            </li>
                                        </ul>
                                        <p class="text-xs-center"> <a href="#" class="btn btn-outline-success btn-block">Paga Ora</a> </p>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <section class="app-section"> </section>
            <!-- start: FOOTER -->
            <footer class="footer">
                <div class="container">
                    <!-- top footer statrs -->
                    <div class="row top-footer">
                        <div class="col-xs-12 col-sm-3 footer-logo-block color-gray">
                            <a href="#"> <img src="img/food-picky-logo.png" alt="Footer logo"> </a> <span>Consegna dell'ordine &amp; Ritira </span> </div>
                        <div class="col-xs-12 col-sm-2 about color-gray">
                            <h5>Informazioni</h5>
                            <ul>
                                <li><a href="#">Su di noi</a> </li>
                                <li><a href="#">Storia</a> </li>
                                <li><a href="#">Il nostro Team</a> </li>         
                            </ul>
                        </div>
                        <div class="col-xs-12 col-sm-2 how-it-works-links color-gray">
                            <h5>Come Funziona</h5>
                            <ul>
                                <li><a href="#">Inserisci la tua posizione</a> </li>
                                <li><a href="#">Scegli il Ristorante</a> </li>
                                <li><a href="#">Scegli il cibo</a> </li>
                                <li><a href="#">Paga con carta di credito</a> </li>
                                <li><a href="#">Aspetta la consegna</a> </li>
                            </ul>
                        </div>
                        <div class="col-xs-12 col-sm-2 pages color-gray">
                          <h5>Pagine</h5>
                          <ul>
                            <li><a href="#">Pagina dei risultarti</a> </li>
                                <li><a href="#">Pagina di accesso utente</a> </li>
                                <li><a href="#">Fai un ordine</a> </li>
                                <li><a href="#">Aggiungi al carrello</a> </li>
                            </ul>
                        </div>
                        <div class="col-xs-12 col-sm-3 popular-locations color-gray">
                            <h5>Popular locations</h5>
                            <ul>
                                <li><a href="#">Roma</a> </li>
                                <li><a href="#">Milano</a> </li>
                                <li><a href="#">Reggio Calabria</a> </li>
                                <li><a href="#">Cosenza</a> </li>
                                <li><a href="#">Torino</a> </li>
                                <li><a href="#">Palermo</a> </li>
                                <li><a href="#">Messina</a> </li>
                                <li><a href="#">Napoli</a> </li>
                                <li><a href="#">Bari</a> </li>
                                <li><a href="#">Firenze</a> </li>
                            </ul>
                        </div>
                    </div>
                    <!-- top footer ends -->
                    <!-- bottom footer statrs -->
                    <div class="row bottom-footer">
                        <div class="container">
                            <div class="row">
                                <div class="col-xs-12 col-sm-3 payment-options color-gray">
                                    <h5>Opzioni di pagamento</h5>
                                    <ul>
                                        <li>
                                            <a href="#"> <img src="img/paypal.png" alt="Paypal"> </a>
                                        </li>
                                        <li>
                                            <a href="#"> <img src="img/mastercard.png" alt="Mastercard"> </a>
                                        </li>
                                        <li>
                                            <a href="#"> <img src="img/maestro.png" alt="Maestro"> </a>
                                        </li>
                                        <li>
                                            <a href="#"> <img src="img/stripe.png" alt="Stripe"> </a>
                                        </li>
                                        <li>
                                            <a href="#"> <img src="img/bitcoin.png" alt="Bitcoin"> </a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="col-xs-12 col-sm-4 address color-gray">
                                    <h5>Indirizzo</h5>
                                    <p>Via ponte Pietro Bucci Rende, CS</p>
                                    <h5>Phone: <a href="tel:+080000012222">0984000000</a></h5> </div>
                                <div class="col-xs-12 col-sm-5 additional-info color-gray">
                                    <h5>Informazioni aggiuntive</h5>
                                    <p>Unisciti alle migliaia di altri ristoranti che traggono vantaggio dall'avere i loro menu su TakeOff</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- bottom footer ends -->
                </div>
            </footer>
            <!-- end:Footer -->
        </div>
        <!-- end:page wrapper -->
         </div>
    </div>
    <!--/end:Site wrapper -->
     <!-- Bootstrap core JavaScript
    ================================================== -->
    <script src="js/jquery.min.js"></script>
    <script src="js/tether.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/animsition.min.js"></script>
    <script src="js/bootstrap-slider.min.js"></script>
    <script src="js/jquery.isotope.min.js"></script>
    <script src="js/headroom.js"></script>
    <script src="js/foodpicky.min.js"></script>
</body>

</html>