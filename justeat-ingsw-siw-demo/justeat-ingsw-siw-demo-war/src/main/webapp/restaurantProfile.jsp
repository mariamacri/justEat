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
<body>
     <div class="site-wrapper animsition" data-animsition-in="fade-in" data-animsition-out="fade-out">
         <!--header starts-->
         <header id="header" class="header-scroll top-header headrom">
			 
                       <!-- .navbar -->
<nav class="navbar navbar-dark">
  <div class="container">
    <button class="navbar-toggler hidden-lg-up" type="button" data-toggle="collapse" data-target="#mainNavbarCollapse">&#9776;</button>
    <a class="navbar-brand" href="index.html"> <img alt="" src="https://d3fpaxu9zxkgws.cloudfront.net/assets/dist/img/logos/je-logo-v2.svg" width="152" height="70"> </a>
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
			  <a class="dropdown-item" data-test-id="accountInfo" href="file:///C|/Users/ricky/git/justEat/justeat-ingsw-siw-demo/justeat-ingsw-siw-demo-war/src/main/webapp/userPanel.jsp" id="account-nav-link">Area Utente</a>
					
					
			  <a class="dropdown-item" data-test-id="orders" href="file:///C|/Users/ricky/git/justEat/justeat-ingsw-siw-demo/justeat-ingsw-siw-demo-war/src/main/webapp/userOrders.jsp" id="orders-nav-link">Ordini</a>
            <a class="dropdown-item" href="checkout.jsp">Checkout</a>
			  <a class="dropdown-item" data-gtm="header|click - navigation|logout" data-js-id="logout" data-test-id="logout" name="logout" href="doLogin?logout=true">Esci</a>
			</div>
				
        </li>
				</c:if>	
		
		<!-- LISTA DA NON LOGGATO-->
		<c:if test="${utente.getEmail_Utente() == null}">
		 <li class="nav-item dropdown">
<a class="nav-link dropdown-toggle" data-toggle="dropdown" href="doLogin" role="button" aria-haspopup="true" aria-expanded="false">Login</a>
				
				
				    <div class="dropdown-menu"> 
						<a class="dropdown-item" href="login.html">Login</a>
			    <a class="dropdown-item" href="registration.html">Registrazione</a>

			  <a class="dropdown-item" href="restaurantRegistration.jsp">Registra il tuo Ristorante!</a>
            <a class="dropdown-item" href="checkout.jsp">Checkout</a>
			</div>
        </li>
			
				</c:if>	
			
          <div class="dropdown-menu"> 
			  <a class="dropdown-item" data-test-id="accountInfo" href="/account/info/" id="account-nav-link">Area Utente</a> <a class="dropdown-item" href="login.html">Login</a>
			    <a class="dropdown-item" href="registration.html">Registrazione</a>
			  <a class="dropdown-item" data-test-id="orders" href="file:///C|/Users/ricky/git/justEat/justeat-ingsw-siw-demo/justeat-ingsw-siw-demo-war/src/main/webapp/userOrders.html" id="orders-nav-link">Ordini</a>
			  <a class="dropdown-item" data-test-id="addressBook" href="/account/addressbook/" id="address-nav-link">Indirizzi di consegna</a>
			  <a class="dropdown-item" href="restaurantRegistration.jsp">Inserisci Nuovo Ristorante</a>
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
         <div class="page-wrapper">
            <!-- top Links -->
            <div class="top-links">
               <div class="container">
                  <ul class="row links">
                    <li class="col-xs-12 col-sm-3 link-item"><span>1</span><a href="index.html">Inserisci il tuo Indirizzo</a></li>
                    <li class="col-xs-12 col-sm-3 link-item"><span>2</span><a href="restaurants.html">Scegli il Ristorante</a></li>
                    <li class="col-xs-12 col-sm-3 link-item active"><span>3</span><a href="profile.html">Scegli il tuo cibo preferito</a></li>
                    <li class="col-xs-12 col-sm-3 link-item"><span>4</span><a href="checkout.html">Ordina e paga Online</a></li>
                  </ul>
               </div>
            </div>
            <!-- end:Top links -->
            <!-- start: Inner page hero -->
            <section class="inner-page-hero bg-image" data-image-src="img/profile-banner.jpg">
               <div class="profile">
                  <div class="container">
                     <div class="row">
                        <div class="col-xs-12 col-sm-12  col-md-4 col-lg-4 profile-img">
                           <div class="image-wrap">
                              <figure><img src="img/profile-image.jpg" alt="Profile Image"></figure>
                           </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8 profile-desc">
                           <div class="pull-left right-text white-txt">
                              <h6><a href="#">Maenaam Thai Restaurant</a></h6>
                              <a class="btn btn-small btn-green">Open</a>
                              <p>Burgers, American, Sandwiches, Fast Food, BBQ</p>
                              <ul class="nav nav-inline">
                                 <li class="nav-item"> <a class="nav-link active" href="#"><i class="fa fa-check"></i> Min $ 10,00</a> </li>
                                 <li class="nav-item"> <a class="nav-link" href="#"><i class="fa fa-motorcycle"></i> 30 min</a> </li>
                                 <li class="nav-item ratings">
                                    <a class="nav-link" href="#"> <span>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star-o"></i>
                                    </span> </a>
                                 </li>
                              </ul>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </section>
            <!-- end:Inner page hero -->
            <div class="breadcrumb">
               <div class="container">
                  <ul>
                     <li><a href="#" class="active">Home</a></li>
                     <li><a href="#">Search results</a></li>
                     <li>Profile</li>
                  </ul>
               </div>
            </div>
            <div class="container m-t-30">
               <div class="row">
                  <div class="col-xs-12 col-sm-4 col-md-4 col-lg-3">
                     <div class="sidebar clearfix m-b-20">
                        <div class="main-block">
                           <div class="sidebar-title white-txt">
                              <h6>Choose Cusine</h6>
                              <i class="fa fa-cutlery pull-right"></i> 
                           </div>
                           <ul>
                              <li><a href="#1" class="scroll active">Pizza</a></li>
                              <li><a href="#2" class="scroll">Barbecuing and Grilling</a></li>
                              <li><a href="#3" class="scroll">Appetizers</a></li>
                              <li><a href="#4" class="scroll">Soup and salads</a></li>
                              <li><a href="#5" class="scroll">Pasta</a></li>
                              <li><a href="#6" class="scroll">Seafood</a></li>
                              <li><a href="#7" class="scroll">Beverages</a></li>
                           </ul>
                           <div class="clearfix"></div>
                        </div>
                        <!-- end:Sidebar nav -->
                        <div class="widget-delivery">
                           <form>
                              <div class="col-xs-6 col-sm-12 col-md-6 col-lg-6">
                                 <label class="custom-control custom-radio">
                                 <input id="radio1" name="radio" type="radio" class="custom-control-input" checked=""> <span class="custom-control-indicator"></span> <span class="custom-control-description">Delivery</span> </label>
                              </div>
                              <div class="col-xs-6 col-sm-12 col-md-6 col-lg-6">
                                 <label class="custom-control custom-radio">
                                 <input id="radio2" name="radio" type="radio" class="custom-control-input"> <span class="custom-control-indicator"></span> <span class="custom-control-description">Takeout</span> </label>
                              </div>
                           </form>
                        </div>
                     </div>
                     <!-- end:Left Sidebar -->
                     <div class="widget clearfix">
                        <!-- /widget heading -->
                        <div class="widget-heading">
                           <h3 class="widget-title text-dark">
                              Popular tags
                           </h3>
                           <div class="clearfix"></div>
                        </div>
                        <div class="widget-body">
                           <ul class="tags">
                              <li> <a href="#" class="tag">
                                 Coupons
                                 </a> 
                              </li>
                              <li> <a href="#" class="tag">
                                 Discounts
                                 </a> 
                              </li>
                              <li> <a href="#" class="tag">
                                 Deals
                                 </a> 
                              </li>
                              <li> <a href="#" class="tag">
                                 Amazon 
                                 </a> 
                              </li>
                              <li> <a href="#" class="tag">
                                 Ebay
                                 </a> 
                              </li>
                              <li> <a href="#" class="tag">
                                 Fashion
                                 </a> 
                              </li>
                              <li> <a href="#" class="tag">
                                 Shoes
                                 </a> 
                              </li>
                              <li> <a href="#" class="tag">
                                 Kids
                                 </a> 
                              </li>
                              <li> <a href="#" class="tag">
                                 Travel
                                 </a> 
                              </li>
                              <li> <a href="#" class="tag">
                                 Hosting
                                 </a> 
                              </li>
                           </ul>
                        </div>
                     </div>
                  </div>
                  <div class="col-xs-12 col-sm-8 col-md-8 col-lg-6">
<!-- end:Widget menu -->
					  <!-- inizio for -->
                     <div class="menu-widget" id="2">
                        <div class="widget-heading">
                           <h3 class="widget-title text-dark">
                              POPULAR ORDERS Delicious hot food! <a class="btn btn-link pull-right" data-toggle="collapse" href="#popular2" aria-expanded="true">
                              <i class="fa fa-angle-right pull-right"></i>
                              <i class="fa fa-angle-down pull-right"></i>
                              </a>
                           </h3>
                           <div class="clearfix"></div>
                        </div>
                       <div class="collapse in" id="popular2">
						    <!-- inizio for -->
              <c:forEach items="${pietanze}" var="pasto">
<div class="food-item">
                              <div class="row">
                                 <div class="col-xs-12 col-sm-12 col-lg-8">
                                    <div class="rest-logo pull-left">
                                       <a class="restaurant-logo pull-left" href="#"><img src="img/$[pasto.getImage()}" alt="Food logo"></a>
                                    </div>
                                    <!-- end:Logo -->
                                    <div class="rest-descr">
                                       <h6><a href="#">${pasto.getNome()}</a></h6>
                                       <p> Burgers, American, Sandwiches, Fast Food, BBQ</p>
                                    </div>
                                    <!-- end:Description -->
                                 </div>
                                 <!-- end:col -->
                                 <div class="col-xs-12 col-sm-12 col-lg-4 pull-right item-cart-info"> <span class="price pull-left">$ 19.99</span> <a href="#" class="btn btn-small btn btn-secondary pull-right" data-toggle="modal" data-target="#order-modal">&#43;</a> </div>
                              </div>
                              <!-- end:row -->
                           </div>
</c:forEach>
 <!-- Fine for -->
						   <!-- end:Food item -->
                         
                         <!-- end:Food item -->
                         
                         <!-- end:Food item -->
                           
                          <!-- end:Food item -->
                        </div>
                        <!-- end:Collapse -->
                    </div>
					   <!-- FINE FOR -->
                     <!-- end:Widget menu -->
                     <div class="row m-t-30">
                        <div class="col-sm-12">
<!--//panel-->
                           
                           <!--//panel-->
                           
                           <!--//panel-->
                           <div class="panel">
                              <div class="panel-heading">
                                 <h4 class="panel-title"><a data-parent="#accordion" data-toggle="collapse" class="panel-toggle" href="#faq4"><i class="ti-info-alt"></i>Can I ipsum dolor sit amet nascetur ridiculus?</a></h4>
                              </div>
                              <div class="panel-collapse collapse" id="faq4">
                                 <div class="panel-body">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam rutrum ut erat a ultricies. Phasellus non auctor nisi, id aliquet lectus. Vestibulum libero eros, aliquet at tempus ut, scelerisque sit amet nunc. Vivamus id porta neque, in pulvinar ipsum. Vestibulum sit amet quam sem. Pellentesque accumsan consequat venenatis. Pellentesque sit amet justo dictum, interdum odio non, dictum nisi. Fusce sit amet turpis eget nibh elementum sagittis. Nunc consequat lacinia purus, in consequat neque consequat id.</div>
                              </div>
                          </div>
                           <!--//panel-->
                       </div>
                     </div>
                     <!--/row -->
                  </div>
                 <!-- end:Bar -->
                  <div class="col-xs-12 col-md-12 col-lg-3">
                     <div class="sidebar-wrap">
                        <div class="widget widget-cart">
                           <div class="widget-heading">
                              <h3 class="widget-title text-dark">
                                Il tuo carrello
                              </h3>
                              <div class="clearfix"></div>
                           </div>
                           <div class="order-row bg-white">
                              <div class="widget-body">
								  <!-- INIZIA FOR LISTA QUI -->
								  <c:forEach items="${ordine.getPietanze()}" var="pietanza">
                                 <div class="title-row">${pietanza.getNome()}<a href="#"><i class="fa fa-trash pull-right"></i></a></div>
								  </c:forEach>
								  <!-- FINE FOR LISTA-->
                                 <div class="form-group row no-gutter">
                                    <div class="col-xs-8"> </div>
                                    <div class="col-xs-4">
                                       <h6>Prezzo: ${pietanza.getPrezzo()}</h6> 
                                    </div>
                                 </div>
                              </div>
                           </div>
                           <div class="order-row"> </div>
                           <!-- end:Order row -->
                           <div class="widget-delivery clearfix">
                              <form>
</form>
                           </div>
                           <div class="widget-body">
                              <div class="price-wrap text-xs-center">
                                 <p>Totale</p>
                                 <h3 class="value"><strong>€ ${ordine.getPrezzo_Totale_odrine()}</strong></h3>
                                 <p>Ordine Minimo: </p>
                                 <button onclick="location.href='checkout.html'" type="button" class="btn theme-btn btn-lg">Paga Ordine</button>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <!-- end:Right Sidebar -->
               </div>
               <!-- end:row -->
            </div>
            <!-- end:Container -->
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
      <!--/end:Site wrapper -->
      <!-- Modal -->
      <div class="modal fade" id="order-modal" tabindex="-1" role="dialog" aria-hidden="true">
         <div class="modal-dialog" role="document">
            <div class="modal-content">
               <button type="button" class="close" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">&times;</span> </button>
               <div class="modal-body cart-addon">
                  <div class="food-item white">
                     <div class="row">
                        <div class="col-xs-12 col-sm-6 col-lg-6">
                           <div class="item-img pull-left">
                              <a class="restaurant-logo pull-left" href="#"><img src="img/pepsi.png" alt="Food logo"></a>
                           </div>
                           <!-- end:Logo -->
                           <div class="rest-descr">
                              <h6><a href="#">Sandwich de Alegranza Grande MenÃ¼ (28 - 30 cm.)</a></h6>
                           </div>
                           <!-- end:Description -->
                        </div>
                        <!-- end:col -->
                        <div class="col-xs-6 col-sm-2 col-lg-2 text-xs-center"> <span class="price pull-left">$ 2.99</span></div>
                        <div class="col-xs-6 col-sm-4 col-lg-4">
                           <div class="row no-gutter">
                              <div class="col-xs-7">
                                 <select class="form-control b-r-0" id="exampleSelect2">
                                    <option>Size SM</option>
                                    <option>Size LG</option>
                                    <option>Size XL</option>
                                 </select>
                              </div>
                              <div class="col-xs-5">
                                 <input class="form-control" type="number" value="0" id="quant-input-2"> 
                              </div>
                           </div>
                        </div>
                     </div>
                     <!-- end:row -->
                  </div>
                  <!-- end:Food item -->
                  <div class="food-item">
                     <div class="row">
                        <div class="col-xs-12 col-sm-6 col-lg-6">
                           <div class="item-img pull-left">
                              <a class="restaurant-logo pull-left" href="#"><img src="img/cola.jpg" alt="Food logo"></a>
                           </div>
                           <!-- end:Logo -->
                           <div class="rest-descr">
                              <h6><a href="#">Sandwich de Alegranza Grande MenÃ¼ (28 - 30 cm.)</a></h6>
                           </div>
                           <!-- end:Description -->
                        </div>
                        <!-- end:col -->
                        <div class="col-xs-6 col-sm-2 col-lg-2 text-xs-center"> <span class="price pull-left">$ 2.49</span></div>
                        <div class="col-xs-6 col-sm-4 col-lg-4">
                           <div class="row no-gutter">
                              <div class="col-xs-7">
                                 <select class="form-control b-r-0" id="exampleSelect3">
                                    <option>Size SM</option>
                                    <option>Size LG</option>
                                    <option>Size XL</option>
                                 </select>
                              </div>
                              <div class="col-xs-5">
                                 <input class="form-control" type="number" value="0" id="quant-input-3"> 
                              </div>
                           </div>
                        </div>
                     </div>
                     <!-- end:row -->
                  </div>
                  <!-- end:Food item -->
                  <div class="food-item">
                     <div class="row">
                        <div class="col-xs-12 col-sm-6 col-lg-6">
                           <div class="item-img pull-left">
                              <a class="restaurant-logo pull-left" href="#"><img src="img/fanta.jpg" alt="Food logo"></a>
                           </div>
                           <!-- end:Logo -->
                           <div class="rest-descr">
                              <h6><a href="#">Sandwich de Alegranza Grande MenÃ¼ (28 - 30 cm.)</a></h6>
                           </div>
                           <!-- end:Description -->
                        </div>
                        <!-- end:col -->
                        <div class="col-xs-6 col-sm-2 col-lg-2 text-xs-center"> <span class="price pull-left">$ 1.99</span></div>
                        <div class="col-xs-6 col-sm-4 col-lg-4">
                           <div class="row no-gutter">
                              <div class="col-xs-7">
                                 <select class="form-control b-r-0" id="exampleSelect5">
                                    <option>Size SM</option>
                                    <option>Size LG</option>
                                    <option>Size XL</option>
                                 </select>
                              </div>
                              <div class="col-xs-5">
                                 <input class="form-control" type="number" value="0" id="quant-input-4"> 
                              </div>
                           </div>
                        </div>
                     </div>
                     <!-- end:row -->
                  </div>
                  <!-- end:Food item -->
                  <div class="food-item">
                     <div class="row">
                        <div class="col-xs-12 col-sm-6 col-lg-6">
                           <div class="item-img pull-left">
                              <a class="restaurant-logo pull-left" href="#"><img src="img/beer.jpg" alt="Food logo"></a>
                           </div>
                           <!-- end:Logo -->
                           <div class="rest-descr">
                              <h6><a href="#">Sandwich de Alegranza Grande MenÃ¼ (28 - 30 cm.)</a></h6>
                           </div>
                           <!-- end:Description -->
                        </div>
                        <!-- end:col -->
                        <div class="col-xs-6 col-sm-2 col-lg-2 text-xs-center"> <span class="price pull-left">$ 3.15</span></div>
                        <div class="col-xs-6 col-sm-4 col-lg-4">
                           <div class="row no-gutter">
                              <div class="col-xs-7">
                                 <select class="form-control b-r-0" id="exampleSelect6">
                                    <option>Size SM</option>
                                    <option>Size LG</option>
                                    <option>Size XL</option>
                                 </select>
                              </div>
                              <div class="col-xs-5">
                                 <input class="form-control" type="number" value="0" id="quant-input-5"> 
                              </div>
                           </div>
                        </div>
                     </div>
                     <!-- end:row -->
                  </div>
                  <!-- end:Food item -->
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                  <button type="button" class="btn theme-btn">Add to cart</button>
               </div>
            </div>
         </div>
      </div>
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