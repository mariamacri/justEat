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
        <header id="header" class="header-scroll top-header headrom">	
        <!-- .navbar -->    
         <%@ include file="include/navbar.jsp" %>
      
         <!-- .navbar end -->
        </header>
<!--header end-->

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