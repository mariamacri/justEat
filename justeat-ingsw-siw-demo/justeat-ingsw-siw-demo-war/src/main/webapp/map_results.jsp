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

<body class="home">
      <div class="site-wrapper animsition" data-animsition-in="fade-in" data-animsition-out="fade-out">
        <!--header starts-->
        <!--header starts-->
        <header class="top-header navbar-fixed-top">
<!-- .navbar -->
<nav class="navbar navbar-dark">
  <div class="container">
    <button class="navbar-toggler hidden-lg-up" type="button" data-toggle="collapse" data-target="#mainNavbarCollapse">&#9776;</button>
    <a class="navbar-brand" href="index.html"> <img alt="" src="https://d3fpaxu9zxkgws.cloudfront.net/assets/dist/img/logos/je-logo-v2.svg" width="152" height="70"> </a>
    <div class="collapse navbar-toggleable-md  float-lg-right" id="mainNavbarCollapse">
      <ul class="nav navbar-nav">
        <li class="nav-item"> <a class="nav-link active" href="index.html">Home <span class="sr-only">(current)</span></a> </li>
        <li class="nav-item dropdown"> <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Cibo</a>
          <div class="dropdown-menu"> <a class="dropdown-item" href="food_results.jsp">Risultati Cibo</a> <a class="dropdown-item" href="map_results.jsp">Risultati Mappa</a></div>
        </li>
        <li class="nav-item dropdown"> <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Ristoranti</a>
          <div class="dropdown-menu"> <a class="dropdown-item" href="restaurantInfo.html">Search results</a> <a class="dropdown-item" href="restaurantProfile.jsp">Profilo Ristoranti</a></div>
        </li>
        <!-- Inizio Lista utente -->
        
        <li class="nav-item dropdown"> <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Ciao, Rickym
			<svg width="20" height="22" viewBox="0 0 12 13" xmlns="http://www.w3.org/2000/svg" class="icon-profile">
            <path d="M2.67 11.33V9a.33.33 0 0 1 .66 0v2.67c0 .18-.15.33-.33.33H1.67a1 1 0 0 1-1-1V9.67c0-2.6 1.8-4.34 5.33-4.34 3.53 0 5.33 1.74 5.33 4.34V11a1 1 0 0 1-1 1H9a.33.33 0 0 1-.33-.33V9a.33.33 0 1 1 .66 0v2.33h1c.19 0 .34-.15.34-.33V9.67C10.67 7.44 9.17 6 6 6S1.33 7.44 1.33 9.67V11c0 .18.15.33.34.33h1zm3.33-6c1.09 0 2-1.02 2-2.33C8 1.7 7.09.67 6 .67 4.91.67 4 1.69 4 3c0 1.3.91 2.33 2 2.33zM6 6C4.53 6 3.33 4.66 3.33 3S4.53 0 6 0s2.67 1.34 2.67 3S7.47 6 6 6zm2.67 3.67a.33.33 0 1 1 .66 0v2c0 .09-.03.17-.1.23-.12.12-.37.28-.8.42-.65.22-1.56.35-2.76.35-.92 0-1.65-.14-2.21-.36-.36-.14-.58-.3-.7-.4a.33.33 0 0 1-.1-.24v-2a.33.33 0 1 1 .67 0v1.84a5.33 5.33 0 0 0 2.33.5c1.14-.01 1.98-.13 2.57-.33.2-.07.35-.13.44-.18V9.67z" fill="#266ABD"></path>
          </svg>
			
          </a>>
          <div class="dropdown-menu"> 
			  <a class="dropdown-item" data-test-id="accountInfo" href="/account/info/" id="account-nav-link">Area Utente</a> <a class="dropdown-item" href="login.html">Login</a>
			    <a class="dropdown-item" href="registration.html">Registrazione</a>
			  <a class="dropdown-item" data-test-id="orders" href="file:///C|/Users/ricky/git/justEat/justeat-ingsw-siw-demo/justeat-ingsw-siw-demo-war/src/main/webapp/userOrders.html" id="orders-nav-link">Ordini</a>
			  <a class="dropdown-item" data-test-id="addressBook" href="/account/addressbook/" id="address-nav-link">Indirizzi di consegna</a>
			  <a class="dropdown-item" href="restaurantRegistration.html">Inserisci Nuovo Ristorante</a>
            <a class="dropdown-item" href="checkout.jsp">Checkout</a>
			  <a class="dropdown-item" data-gtm="header|click - navigation|logout" data-js-id="logout" data-test-id="logout" href="/account/logout/?returnurl=%2Faccount%2Finfo%2F">Esci</a>
			</div>
        </li>
        
        <!-- Fine lista Utente -->
        
      </ul>
    </div>
  </div>
</nav>
<!-- /.navbar -->
        </header>
        <!-- PAGE CONTETNT -->
        <section class="gl-page-content-section">
            <div class="container-fluid">
                <div class="row">
                    <!-- SEARCH MAP -->
                    <div class="map-wrapper map-split">
                        <div id="map"></div>
                    </div>
                    <!-- SEARCH MAP END -->
                    <!-- SEARCH -->
                    <div id="map-result-section" class="map-result-wrapper">
                        <div class="widget clearfix">
                            <!-- /widget heading -->
                            <div class="widget-heading">
                                <h3 class="widget-title text-dark">
                                        Filtro Ricerca
                                    </h3>
                                <div class="clearfix"></div>
                            </div>
                            <div class="widget-body">
                                <form class="row">
                                    <div class="col-xs-12 col-md-6 col-lg-3">
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="exampleInputKeyword" placeholder="Keyword"> </div>
                                    </div>
                                    <div class="col-xs-12 col-md-6 col-lg-3">
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="exampleInputText2" placeholder="Località"> </div>
                                    </div>
                                    <div class="col-xs-12 col-md-6 col-lg-3">
                                        <div class="form-group">
                                            <select class="form-control" id="exampleSelect1">
                                                <option>Categoria</option>
                                                <option>Fast food</option>
                                                <option>Pizza</option>
                                                <option>Pasta</option>
                                                <option>Pesce</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-md-6 col-lg-3"> <a href="food_results.html" class="btn theme-btn  btn-block">Invia</a> </div>
                                </form>
                            </div>
                        </div>
                        <!-- end:Pricing widget -->
                        <div class="widget clearfix">
                            <!-- /widget heading -->
                            <div class="widget-heading">
                              <h3 class="widget-title text-dark"> Range prezzo</h3>
                              <div class="clearfix"></div>
                            </div>
                            <div class="widget-body">
                                <div class="range-slider m-b-10"> Filtra per prezzo massimo:48€ <br>
                              <input id="ex2" type="text" data-slider-min="1" data-slider-max="100" data-slider-step="1" data-slider-value="35" /> </div>
                            </div>
                        </div>
                        <!-- end:Pricing widget -->
                        <div class="search-result-wrapper">
                            <div class="row">
                                <!-- Each popular food item starts -->
                                <div class="col-xs-12 col-sm-6 col-md-6 food-item">
                                    <div class="food-item-wrap">
                                        <div class="figure-wrap bg-image" data-image-src="img/food1.jpg">
                                            <div class="distance"><i class="fa fa-pin"></i>1240m</div>
                                            <div class="rating pull-left"> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star-o"></i> </div>
                                            <div class="review pull-right"><a href="#">198 reviews</a> </div>
                                        </div>
                                        <div class="content">
                                            <h5><a href="#">The South"s Best Fried Chicken</a></h5>
                                            <div class="product-name">Fried Chicken with cheese</div>
                                            <div class="price-btn-block"> <span class="price">$ 15,99</span> <a href="#" class="btn theme-btn-dash pull-right">Order Now</a> </div>
                                        </div>
                                        <div class="restaurant-block">
                                            <div class="left">
                                                <a class="pull-left" href="#"> <img src="img/logo1.png" alt="Restaurant logo"> </a>
                                                <div class="pull-left right-text"> <a href="#">Chicken Restaurant</a> <span>68 5th Avenue New York</span> </div>
                                            </div>
                                            <div class="right-like-part pull-right"> <i class="fa fa-heart-o"></i> <span>48</span> </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- Each popular food item ends -->
                                <!-- Each popular food item starts -->
                                <div class="col-xs-12 col-sm-6 col-md-6 food-item">
                                    <div class="food-item-wrap">
                                        <div class="figure-wrap bg-image" data-image-src="img/food2.jpg">
                                            <div class="distance"><i class="fa fa-pin"></i>1240m</div>
                                            <div class="rating pull-left"> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star-o"></i> </div>
                                            <div class="review pull-right"><a href="#">198 reviews</a> </div>
                                        </div>
                                        <div class="content">
                                            <h5><a href="#">The South"s Best Fried Chicken</a></h5>
                                            <div class="product-name">Fried Chicken with cheese</div>
                                            <div class="price-btn-block"> <span class="price">$ 18,49</span> <a href="#" class="btn theme-btn-dash pull-right">Order Now</a> </div>
                                        </div>
                                        <div class="restaurant-block">
                                            <div class="left">
                                                <a class="pull-left" href="#"> <img src="img/logo2.png" alt="Restaurant logo"> </a>
                                                <div class="pull-left right-text"> <a href="#">Chicken Restaurant</a> <span>68 5th Avenue New York</span> </div>
                                            </div>
                                            <div class="right-like-part pull-right"> <i class="fa fa-heart-o"></i> <span>48</span> </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- Each popular food item starts -->
                                <!-- Each popular food item starts -->
                                <div class="col-xs-12 col-sm-6 col-md-6 food-item">
                                    <div class="food-item-wrap">
                                        <div class="figure-wrap bg-image" data-image-src="img/food1.jpg">
                                            <div class="distance"><i class="fa fa-pin"></i>1240m</div>
                                            <div class="rating pull-left"> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star-o"></i> </div>
                                            <div class="review pull-right"><a href="#">198 reviews</a> </div>
                                        </div>
                                        <div class="content">
                                            <h5><a href="#">The South"s Best Fried Chicken</a></h5>
                                            <div class="product-name">Fried Chicken with cheese</div>
                                            <div class="price-btn-block"> <span class="price">$ 15,99</span> <a href="#" class="btn theme-btn-dash pull-right">Order Now</a> </div>
                                        </div>
                                        <div class="restaurant-block">
                                            <div class="left">
                                                <a class="pull-left" href="#"> <img src="img/logo1.png" alt="Restaurant logo"> </a>
                                                <div class="pull-left right-text"> <a href="#">Chicken Restaurant</a> <span>68 5th Avenue New York</span> </div>
                                            </div>
                                            <div class="right-like-part pull-right"> <i class="fa fa-heart-o"></i> <span>48</span> </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- Each popular food item ends -->
                                <!--  popular food item starts -->
                                <div class="col-xs-12 col-sm-6 col-md-6 food-item">
                                    <div class="food-item-wrap">
                                        <div class="figure-wrap bg-image" data-image-src="img/food2.jpg">
                                            <div class="distance"><i class="fa fa-pin"></i>1240m</div>
                                            <div class="rating pull-left"> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star-o"></i> </div>
                                            <div class="review pull-right"><a href="#">198 reviews</a> </div>
                                        </div>
                                        <div class="content">
                                            <h5><a href="#">The South"s Best Fried Chicken</a></h5>
                                            <div class="product-name">Fried Chicken with cheese</div>
                                            <div class="price-btn-block"> <span class="price">$ 18,49</span> <a href="#" class="btn theme-btn-dash pull-right">Order Now</a> </div>
                                        </div>
                                        <div class="restaurant-block">
                                            <div class="left">
                                                <a class="pull-left" href="#"> <img src="img/logo2.png" alt="Restaurant logo"> </a>
                                                <div class="pull-left right-text"> <a href="#">Chicken Restaurant</a> <span>68 5th Avenue New York</span> </div>
                                            </div>
                                            <div class="right-like-part pull-right"> <i class="fa fa-heart-o"></i> <span>48</span> </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- Each popular food item ends -->
                                <!--  popular food item starts -->
                                <div class="col-xs-12 col-sm-6 col-md-6 food-item">
                                    <div class="food-item-wrap">
                                        <div class="figure-wrap bg-image" data-image-src="img/food2.jpg">
                                            <div class="distance"><i class="fa fa-pin"></i>1240m</div>
                                            <div class="rating pull-left"> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star-o"></i> </div>
                                            <div class="review pull-right"><a href="#">198 reviews</a> </div>
                                        </div>
                                        <div class="content">
                                            <h5><a href="#">The South"s Best Fried Chicken</a></h5>
                                            <div class="product-name">Fried Chicken with cheese</div>
                                            <div class="price-btn-block"> <span class="price">$ 18,49</span> <a href="#" class="btn theme-btn-dash pull-right">Order Now</a> </div>
                                        </div>
                                        <div class="restaurant-block">
                                            <div class="left">
                                                <a class="pull-left" href="#"> <img src="img/logo2.png" alt="Restaurant logo"> </a>
                                                <div class="pull-left right-text"> <a href="#">Chicken Restaurant</a> <span>68 5th Avenue New York</span> </div>
                                            </div>
                                            <div class="right-like-part pull-right"> <i class="fa fa-heart-o"></i> <span>48</span> </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- Each popular food item ends -->
                                <!--  popular food item starts -->
                                <div class="col-xs-12 col-sm-6 col-md-6 food-item">
                                    <div class="food-item-wrap">
                                        <div class="figure-wrap bg-image" data-image-src="img/food2.jpg">
                                            <div class="distance"><i class="fa fa-pin"></i>1240m</div>
                                            <div class="rating pull-left"> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star-o"></i> </div>
                                            <div class="review pull-right"><a href="#">198 reviews</a> </div>
                                        </div>
                                        <div class="content">
                                            <h5><a href="#">The South"s Best Fried Chicken</a></h5>
                                            <div class="product-name">Fried Chicken with cheese</div>
                                            <div class="price-btn-block"> <span class="price">$ 18,49</span> <a href="#" class="btn theme-btn-dash pull-right">Order Now</a> </div>
                                        </div>
                                        <div class="restaurant-block">
                                            <div class="left">
                                                <a class="pull-left" href="#"> <img src="img/logo2.png" alt="Restaurant logo"> </a>
                                                <div class="pull-left right-text"> <a href="#">Chicken Restaurant</a> <span>68 5th Avenue New York</span> </div>
                                            </div>
                                            <div class="right-like-part pull-right"> <i class="fa fa-heart-o"></i> <span>48</span> </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- Each popular food item ends -->
                                <!--  popular food item starts -->
                                <div class="col-xs-12 col-sm-6 col-md-6 food-item">
                                    <div class="food-item-wrap">
                                        <div class="figure-wrap bg-image" data-image-src="img/food2.jpg">
                                            <div class="distance"><i class="fa fa-pin"></i>1240m</div>
                                            <div class="rating pull-left"> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star-o"></i> </div>
                                            <div class="review pull-right"><a href="#">198 reviews</a> </div>
                                        </div>
                                        <div class="content">
                                            <h5><a href="#">The South"s Best Fried Chicken</a></h5>
                                            <div class="product-name">Fried Chicken with cheese</div>
                                            <div class="price-btn-block"> <span class="price">$ 18,49</span> <a href="#" class="btn theme-btn-dash pull-right">Order Now</a> </div>
                                        </div>
                                        <div class="restaurant-block">
                                            <div class="left">
                                                <a class="pull-left" href="#"> <img src="img/logo2.png" alt="Restaurant logo"> </a>
                                                <div class="pull-left right-text"> <a href="#">Chicken Restaurant</a> <span>68 5th Avenue New York</span> </div>
                                            </div>
                                            <div class="right-like-part pull-right"> <i class="fa fa-heart-o"></i> <span>48</span> </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- Each popular food item ends -->
                                <!--  popular food item starts -->
                                <div class="col-xs-12 col-sm-6 col-md-6 food-item">
                                    <div class="food-item-wrap">
                                        <div class="figure-wrap bg-image" data-image-src="img/food2.jpg">
                                            <div class="distance"><i class="fa fa-pin"></i>1240m</div>
                                            <div class="rating pull-left"> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star-o"></i> </div>
                                            <div class="review pull-right"><a href="#">198 reviews</a> </div>
                                        </div>
                                        <div class="content">
                                            <h5><a href="#">The South"s Best Fried Chicken</a></h5>
                                            <div class="product-name">Fried Chicken with cheese</div>
                                            <div class="price-btn-block"> <span class="price">$ 18,49</span> <a href="#" class="btn theme-btn-dash pull-right">Order Now</a> </div>
                                        </div>
                                        <div class="restaurant-block">
                                            <div class="left">
                                                <a class="pull-left" href="#"> <img src="img/logo2.png" alt="Restaurant logo"> </a>
                                                <div class="pull-left right-text"> <a href="#">Chicken Restaurant</a> <span>68 5th Avenue New York</span> </div>
                                            </div>
                                            <div class="right-like-part pull-right"> <i class="fa fa-heart-o"></i> <span>48</span> </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- Each popular food item ends -->
                                <div class="col-xs-12">
                                    <nav aria-label="...">
                                        <ul class="pagination">
                                            <li class="page-item disabled">
                                                <a class="page-link" href="#" tabindex="-1" aria-label="Previous"> <span aria-hidden="true">&laquo;</span> <span class="sr-only">Previous</span> </a>
                                            </li>
                                            <li class="page-item active"> <a class="page-link" href="#">1 <span class="sr-only">(current)</span></a> </li>
                                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                                            <li class="page-item"><a class="page-link" href="#">4</a></li>
                                            <li class="page-item"><a class="page-link" href="#">5</a></li>
                                            <li class="page-item">
                                                <a class="page-link" href="#" aria-label="Next"> <span aria-hidden="true">&raquo;</span> <span class="sr-only">Next</span> </a>
                                            </li>
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- SEARCH END-->
                </div>
            </div>
        </section>
        <!-- PAGE CONTETNT END -->
    </div>
    <!-- end:page wrapper -->
    <!-- Bootstrap core JavaScript
================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/jquery.min.js"></script>
    <script src="js/tether.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/animsition.min.js"></script>
    <script src="js/bootstrap-slider.min.js"></script>
    <script src="js/jquery.isotope.min.js"></script>
    <script src="js/headroom.js"></script>
    <script src="js/foodpicky.js"></script>
    <script src="js/markerclusterer.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js"></script>
    <script src="js/jquery.googlemap.js"></script>
    <script src="js/data.json"></script>
    
    <script type="text/javascript">
        function InfoBox(opts) {
            google.maps.OverlayView.call(this);
            this.latlng_ = opts.latlng;
            this.map_ = opts.map;
            this.content = opts.content;
            this.offsetVertical_ = -400;
            this.offsetHorizontal_ = -130;
            this.height_ = 375;
            this.width_ = 260;
            this.div_ = $('.wwone__map-infobox');
            //var me = this;
            //this.boundsChangedListener_ =  google.maps.event.addListener(this.map_, "bounds_changed", function() {
            //return me.panMap.apply(me);
            //});
            // Once the properties of this OverlayView are initialized, set its map so
            // that we can display it. This will trigger calls to panes_changed and
            // draw.
            this.setMap(this.map_);
        }
        /* InfoBox extends GOverlay class from the Google Maps API
         */
        InfoBox.prototype = new google.maps.OverlayView();
        /* Creates the DIV representing this InfoBox
         */
        InfoBox.prototype.remove = function () {
            var panes = this.getPanes();
            if (typeof panes !== 'undefined') {
                $(panes.floatPane).contents().css({
                    'display': 'none'
                });
                if (this.div_) {
                    this.div_.css({
                        'display': 'none'
                    });
                }
            }
        }
        InfoBox.prototype.show = function () {
            this.div_.css({
                'display': 'block'
            });
        };
        /* Redraw the Bar based on the current projection and zoom level
         */
        InfoBox.prototype.draw = function () {
            var timer;
            // Creates the element if it doesn't exist already.
            if (this.initialised !== true) {
                this.createElement();
            }
            if (!this.div_) {
                return;
            }
            // Calculate the DIV coordinates of two opposite corners of our bounds to
            // get the size and position of our Bar
            var pixPosition = this.getProjection().fromLatLngToDivPixel(this.latlng_);
            if (!pixPosition) {
                return;
            }
            // Set height to content and reset the offset of box
            //var newHeight = this.div_.height();
            // this.offsetVertical_ = 0 - ( this.div_.outerHeight() + 60 );
            var getHeight = $.proxy(function () {
                var tempHeight = this.div_.outerHeight();
                if (tempHeight > 0) {
                    this.offsetVertical_ = 0 - (tempHeight + 60);
                }
                this.div_.css({
                    'height': 'auto'
                    , 'left': (pixPosition.x + this.offsetHorizontal_) + 'px'
                    , 'top': (pixPosition.y + this.offsetVertical_) + 'px'
                });
            }, this);
            if (this.div_.find('.wwone__map-infobox__thumb').length > 0 && typeof this.div_.find('.wwone__map-infobox__thumb').attr('ng-src') !== 'undefined') {
                //Has image lets wait for it to load (with a timeout just in case)
                $timeout.cancel(timer);
                timer = $timeout(function () {
                    getHeight();
                }, 1000);
                this.div_.find('.wwone__map-infobox__thumb').bind('load', $.proxy(function () {
                    $timeout.cancel(timer);
                    getHeight();
                }, this));
            }
            else {
                //No Image just get height
                getHeight();
            }
        };
        /* Creates the DIV representing this InfoBox in the floatPane. If the panes
         * object, retrieved by calling getPanes, is null, remove the element from the
         * DOM. If the div exists, but its parent is not the floatPane, move the div
         * to the new pane.
         * Called from within draw. Alternatively, this can be called specifically on
         * a panes_changed event.
         */
        InfoBox.prototype.createElement = function () {
            var panes = this.getPanes();
            // This does not handle changing panes.  You can set the map to be null and
            // then reset the map to move the div.
            this.div_ = $('<div id="wwone__map-infobox" class="wwone__map-infobox" />').css({
                'position': 'absolute'
                , 'height': 'auto'
                , 'display': 'none'
            });
            //contentDiv
            var contentDiv = $('<div id="info-box-content" />');
            // closeLink
            var closeLink = $('<a class="wwone__map-infobox__close"><span>X</span></a>');
            this.div_.append(closeLink).append(contentDiv);
            $(panes.floatPane).append(this.div_);
            google.maps.event.addDomListener(closeLink[0], 'click', $.proxy(function (evt) {
                evt.cancelBubble = true;
                if (evt.stopPropagation) {
                    evt.stopPropagation();
                }
                this.remove(); //could be just hide
                return false;
            }, this));
            this.initialised = true;
        };
        /* Pan the map to fit the InfoBox.
         */
        InfoBox.prototype.panMap = function () {
            // if we go beyond map, pan map
            var map = this.map_;
            var bounds = map.getBounds();
            if (!bounds) {
                return;
            }
            // The position of the infowindow
            var position = this.latlng_;
            // The dimension of the infowindow
            var iwWidth = this.width_;
            var iwHeight = this.height_;
            // The offset position of the infowindow
            var iwOffsetX = this.offsetHorizontal_;
            var iwOffsetY = this.offsetVertical_;
            // Padding on the infowindow
            var padX = 40;
            var padY = 40;
            // The degrees per pixel
            var mapDiv = map.getDiv();
            var mapWidth = mapDiv.offsetWidth;
            var mapHeight = mapDiv.offsetHeight;
            var boundsSpan = bounds.toSpan();
            var longSpan = boundsSpan.lng();
            var latSpan = boundsSpan.lat();
            var degPixelX = longSpan / mapWidth;
            var degPixelY = latSpan / mapHeight;
            // The bounds of the map
            var mapWestLng = bounds.getSouthWest().lng();
            var mapEastLng = bounds.getNorthEast().lng();
            var mapNorthLat = bounds.getNorthEast().lat();
            var mapSouthLat = bounds.getSouthWest().lat();
            // The bounds of the infowindow
            var iwWestLng = position.lng() + (iwOffsetX - padX) * degPixelX;
            var iwEastLng = position.lng() + (iwOffsetX + iwWidth + padX) * degPixelX;
            var iwNorthLat = position.lat() - (iwOffsetY - padY) * degPixelY;
            var iwSouthLat = position.lat() - (iwOffsetY + iwHeight + padY) * degPixelY;
            // calculate center shift
            var shiftLng = (iwWestLng < mapWestLng ? mapWestLng - iwWestLng : 0) + (iwEastLng > mapEastLng ? mapEastLng - iwEastLng : 0);
            var shiftLat = (iwNorthLat > mapNorthLat ? mapNorthLat - iwNorthLat : 0) + (iwSouthLat < mapSouthLat ? mapSouthLat - iwSouthLat : 0);
            // The center of the map
            var center = map.getCenter();
            // The new map center
            var centerX = center.lng() - shiftLng;
            var centerY = center.lat() - shiftLat;
            // center the map to the new shifted center
            //map.setCenter(new google.maps.LatLng(centerY, centerX));
            //Pan looks nicer??
            map.panTo(new google.maps.LatLng(centerY, centerX));
            // Remove the listener after panning is complete.
            google.maps.event.removeListener(this.boundsChangedListener_);
            this.boundsChangedListener_ = null;
        };
        InfoBox.prototype.open = function (content, marker) {
            this.latlng_ = marker.getPosition();
            this.setContent(content);
            this.draw();
            this.show();
            this.panMap();
        };
        InfoBox.prototype.setContent = function (content) {
            this.div_.find('#info-box-content').empty().append(content);
        };
        InfoBox.prototype.getContent = function () {
            return this.div_;
        };
        var infoBox;
        var openMarkerWindow = function () {
            //Build info box
            var localTemplate = '<img class="wwone__map-infobox__thumb" src="{{photo_file_url}}" /><div class="wwone__map-infobox__badge">{{rating}}</div><div class="wwone__map-infobox__inner"><div class="wwone__map-infobox__inner__location">{{photo_id}}</div><div class="wwone__map-infobox__inner__heading">{{photo_title}}</div><div class="wwone__map-infobox__inner__info"><div class="wwone__map-infobox__inner__info__type"><strong>Type:</strong>{{type}}</div><div class="wwone__map-infobox__inner__info__location"><strong>Working:</strong> {{open-close}}</div><div class="wwone__map-infobox__inner__info__date"><strong>Delivery:</strong> {{delivery}}</div></div><a class="wwone__map-infobox__inner__btn btn" href="{{owner_url}}" target="_blank">Find out more</a></div>';
            console.log(this);
            for (var itm in this.data) {
                console.log(itm);
                localTemplate = localTemplate.replace('{{' + itm + '}}', this.data[itm]);
            }
            //OPen
            infoBox.open(localTemplate, this);
            infoWindowShown = true;
        };

        function initialize() {
            var bounds = new google.maps.LatLngBounds();
            var center = new google.maps.LatLng(48.90759, 2.56209);
            var map = new google.maps.Map(document.getElementById('map'), {
                zoom: 8
                , center: center
                , mapTypeControl: true
                , mapTypeId: google.maps.MapTypeId.ROADMAP
                , streetViewControl: false
                , styles: [{
                    "featureType": "administrative"
                    , "elementType": "labels.text.fill"
                    , "stylers": [{
                        "color": "#444444"
                }]
            }, {
                    "featureType": "landscape"
                    , "elementType": "all"
                    , "stylers": [{
                        "color": "#f7f4ee"
                }]
            }, {
                    "featureType": "poi"
                    , "elementType": "all"
                    , "stylers": [{
                        "visibility": "off"
                }]
            }, {
                    "featureType": "road"
                    , "elementType": "all"
                    , "stylers": [{
                        "saturation": -50
                }, {
                        "lightness": 25
                }]
            }, {
                    "featureType": "road"
                    , "elementType": "labels.text"
                    , "stylers": [{
                        "weight": "0.52"
                }, {
                        "color": "#262323"
                }, {
                        "visibility": "on"
                }, {
                        "gamma": "4.53"
                }]
            }, {
                    "featureType": "road"
                    , "elementType": "labels.text.fill"
                    , "stylers": [{
                        "saturation": "99"
                }]
            }, {
                    "featureType": "road.highway"
                    , "elementType": "all"
                    , "stylers": [{
                        "visibility": "simplified"
                }]
            }, {
                    "featureType": "road.arterial"
                    , "elementType": "labels.icon"
                    , "stylers": [{
                        "visibility": "off"
                }]
            }, {
                    "featureType": "transit"
                    , "elementType": "all"
                    , "stylers": [{
                        "visibility": "off"
                }]
            }, {
                    "featureType": "water"
                    , "elementType": "all"
                    , "stylers": [{
                        "color": "#3f89e4"
                }, {
                        "visibility": "on"
                }]
            }]
            });
            infoBox = new InfoBox({
                latlng: center
                , map: map
                , content: ''
            });
            var markers = [];
            for (var i = 0; i < 100; i++) {
                var dataPhoto = data.photos[i];
                var latLng = new google.maps.LatLng(dataPhoto.latitude, dataPhoto.longitude);
                var marker = new google.maps.Marker({
                    position: latLng
                    , map: map
                    , icon: 'img/Maps-Pin-Place-icon.png'
                    , data: dataPhoto
                });
                //extend the bounds to include each marker's position
                bounds.extend(marker.position);
                markers.push(marker);
                marker.addListener('click', openMarkerWindow);
            }
            var clusterImgPath = 'img/cluster.png';
            var mcOptions = {
                styles: [{
                    textColor: '#cf043c'
                    , textSize: 16
                    , url: clusterImgPath + '-1.png'
                    , height: 47
                    , width: 47
            }, {
                    textColor: '#cf043c'
                    , textSize: 16
                    , url: clusterImgPath + '-2.png'
                    , height: 58
                    , width: 58
            }, {
                    textColor: '#cf043c'
                    , textSize: 16
                    , url: clusterImgPath + '-3.png'
                    , height: 70
                    , width: 70
            }]
            }
            var markerCluster = new MarkerClusterer(map, markers, mcOptions);
            map.fitBounds(bounds);
        }
        google.maps.event.addDomListener(window, 'load', initialize);
    </script>
</body>

</html>