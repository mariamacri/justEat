<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" 
prefix="c" %>

<!DOCTYPE html>

<html lang="it">

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
    <a class="navbar-brand" href="index.jsp"> <img alt="" src="https://d3fpaxu9zxkgws.cloudfront.net/assets/dist/img/logos/je-logo-v2.svg" width="152" height="70"> </a>
    <div class="collapse navbar-toggleable-md  float-lg-right" id="mainNavbarCollapse">
      <ul class="nav navbar-nav">
		     <!-- LISTA Home -->
        <li class="nav-item"> <a class="nav-link active" href="index.jsp">Home <span class="sr-only">(current)</span></a> </li>
		     <!-- LISTA Cibo -->
        <li class="nav-item dropdown"> <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Cibo</a>
          <div class="dropdown-menu"> <a class="dropdown-item" href="food_results.jsp">Risultati Cibo</a> <a class="dropdown-item" href="map_results.jsp">Risultati Mappa</a></div>
        </li>
		  
		     <!-- Lista Ristoranti -->
        <li class="nav-item dropdown"> <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Ristoranti</a>
          <div class="dropdown-menu"> <a class="dropdown-item" href="restaurantInfo.jsp">Search results</a> <a class="dropdown-item" href="restaurantProfile.jsp">Profilo Ristoranti</a></div>
        </li>
        <!-- Inizio Lista utente -->
		<!--  <h1>${utente.getEmail_Utente() }</h1>-->
		  
				 <!-- LISTA DA LOGGATO -->
			<c:if test="${utente.getEmail_Utente() != null}">  
			           
        <li class="nav-item dropdown"> 
				
			<a class="nav-link dropdown-toggle" data-toggle="dropdown" href="doLogin?logout=true" role="button" aria-haspopup="true" aria-expanded="false">Ciao, ${utente.getNome_Utente()}
			<svg width="20" height="22" viewBox="0 0 12 13" xmlns="http://www.w3.org/2000/svg" class="icon-profile">
            <path d="M2.67 11.33V9a.33.33 0 0 1 .66 0v2.67c0 .18-.15.33-.33.33H1.67a1 1 0 0 1-1-1V9.67c0-2.6 1.8-4.34 5.33-4.34 3.53 0 5.33 1.74 5.33 4.34V11a1 1 0 0 1-1 1H9a.33.33 0 0 1-.33-.33V9a.33.33 0 1 1 .66 0v2.33h1c.19 0 .34-.15.34-.33V9.67C10.67 7.44 9.17 6 6 6S1.33 7.44 1.33 9.67V110 .18.15.33.34.33h1zm3.33-6c1.09 0 2-1.02 2-2.33C8 1.7 7.09.67 6 .67 4.91.67 4 1.69 4 3c0 1.3.91 2.33 2 2.33zM6 6C4.53 6 3.33 4.66 3.33 3S4.53 0 6 0s2.67 1.34 2.67 3S7.47 6 6 6zm2.67 3.67a.33.33 0 1 1 .66 0v2c0 .09-.03.17-.1.23-.12.12-.37.28-.8.42-.65.22-1.56.35-2.76.35-.92 0-1.65-.14-2.21-.36-.36-.14-.58-.3-.7-.4a.33.33 0 0 1-.1-.24v-2a.33.33 0 1 1 .67 0v1.84a5.33 5.33 0 0 0 2.33.5c1.14-.01 1.98-.13 2.57-.33.2-.07.35-.13.44-.18V9.67z" fill="#266ABD"></path>  </a>
          </svg>
				
				
			    <div class="dropdown-menu"> 
			  <a class="dropdown-item" data-test-id="accountInfo" href="what?email=${utente.getEmail_Utente()}" id="account-nav-link">Area Utente</a>
					<a class="dropdown-item" href="/justeat-ingsw-siw-demo-war/restaurantRegistration.jsp">Registra il tuo Ristorante!</a>
            <a class="dropdown-item" href="/justeat-ingsw-siw-demo-war/checkout.jsp">Checkout</a>
			  <a class="dropdown-item" data-gtm="header|click - navigation|logout" data-js-id="logout" data-test-id="logout" name="logout" href="doLogin?logout=true">Esci</a>
			</div>
				
        </li>
				</c:if>	
		
		<!-- LISTA DA NON LOGGATO-->
		<c:if test="${utente.getEmail_Utente() == null}">
		 <li class="nav-item dropdown">
<a class="nav-link dropdown-toggle" data-toggle="dropdown" href="doLogin" role="button" aria-haspopup="true" aria-expanded="false">Login</a>
				
				
				    <div class="dropdown-menu"> 
						<a class="dropdown-item" href="/justeat-ingsw-siw-demo-war/login.html">Login</a>
			    <a class="dropdown-item" href="/justeat-ingsw-siw-demo-war/registration.html">Registrazione</a>

			  <a class="dropdown-item" href="/justeat-ingsw-siw-demo-war/restaurantRegistration.jsp">Registra il tuo Ristorante!</a>
            <a class="dropdown-item" href="/justeat-ingsw-siw-demo-war/checkout.jsp">Checkout</a>
			</div>
        </li>
			
				</c:if>	
			
          <div class="dropdown-menu" > 
			  <a class="dropdown-item" data-test-id="accountInfo" href="/account/info/" id="account-nav-link" >Area Utente</a> <a class="dropdown-item" href="/justeat-ingsw-siw-demo-war/login.html">Login</a>
			    <a class="dropdown-item" href="registration.html">Registrazione</a>
			  <a class="dropdown-item" data-test-id="orders" href="/justeat-ingsw-siw-demo-war/userOrders.html" id="orders-nav-link">Ordini</a>
			  <a class="dropdown-item" href="/justeat-ingsw-siw-demo-war/restaurantRegistration.jsp">Inserisci Nuovo Ristorante</a>
            <a class="dropdown-item" href="/justeat-ingsw-siw-demo-war/checkout.jsp">Checkout</a>
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
                                            <input type="text" class="form-control" id="exampleInputText2" placeholder="LocalitÃ "> </div>
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
                                <div class="range-slider m-b-10"> Filtra per prezzo massimo:48â¬ <br>
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
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCLqPULHQ1p9KU-10gdMR3Hd-Y9kmaVxTM&callback=initMap"></script>
    <script src="js/jquery.googlemap.js"></script>
    <script src="js/data.json"></script>
    

</body>

</html>