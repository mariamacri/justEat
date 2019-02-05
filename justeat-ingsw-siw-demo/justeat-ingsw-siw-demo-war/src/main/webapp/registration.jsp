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
    <a class="navbar-brand" href="index.jsp"> <img alt="" src="https://d3fpaxu9zxkgws.cloudfront.net/assets/dist/img/logos/je-logo-v2.svg" width="152" height="30"> </a>
    <div class="collapse navbar-toggleable-md  float-lg-right" id="mainNavbarCollapse">
      <ul class="nav navbar-nav">
		     <!-- LISTA Home -->
        <li class="nav-item"> <a class="nav-link active" href="index.jsp">Home <span class="sr-only">(current)</span></a> </li>
		     <
	        <!-- Lista Ristoranti -->        <!-- Inizio Lista utente -->
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
			  <a class="dropdown-item" data-gtm="header|click - navigation|logout" data-js-id="logout" data-test-id="logout" name="logout" href="doLogin?logout=true">Esci</a>
			</div>
				
        </li>
				</c:if>	
		
		<!-- LISTA DA NON LOGGATO-->
		<c:if test="${utente.getEmail_Utente() == null}">
		 <li class="nav-item dropdown">
<a class="nav-link dropdown-toggle" data-toggle="dropdown" href="doLogin" role="button" aria-haspopup="true" aria-expanded="false">Login</a>
				
				
				    <div class="dropdown-menu"> 
						<a class="dropdown-item" href="/justeat-ingsw-siw-demo-war/login.jsp">Login</a>
			    <a class="dropdown-item" href="/justeat-ingsw-siw-demo-war/registration.jsp">Registrazione</a>

			  <a class="dropdown-item" href="/justeat-ingsw-siw-demo-war/restaurantRegistration.jsp">Registra il tuo Ristorante!</a>
			</div>
        </li>
			
				</c:if>	
			
          <div class="dropdown-menu" > 
			  <a class="dropdown-item" data-test-id="accountInfo" href="/account/info/" id="account-nav-link" >Area Utente</a> <a class="dropdown-item" href="/justeat-ingsw-siw-demo-war/login.jsp">Login</a>
			    <a class="dropdown-item" href="registration.jsp">Registrazione</a>
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
         <div class="page-wrapper">
            <div class="breadcrumb">
               <div class="container">
                  <ul>
                     <li><a href="#" class="active">Home</a></li>
                     <li><a href="#">Registrazione Utente</a></li>
                    
                  </ul>
               </div>
            </div>
            <section class="contact-page inner-page">
               <div class="container">
                  <div class="row">
                     <!-- REGISTER -->
                     <div class="col-md-8">
                        <div class="widget">
                           <div class="widget-body">
                              <form action="registraUtente" method="post">
                                 <div class="row">
                                    <div class="form-group col-sm-6">
                                       <label for="exampleInputEmail1">Nome*</label>
                                       <input class="form-control" type="text" placeholder="Mario" name="nome" id="example-text-input"> 
                                    </div>
                                    <div class="form-group col-sm-6">
                                       <label for="exampleInputEmail1">Cognome*</label>
                                       <input name="cognome" class="form-control" type="text" placeholder="Rossi" id="example-text-input-2"> 
                                    </div>
                                    <div class="form-group col-sm-6">
                                       <label for="exampleInputEmail1">Indirizzo Email*</label>
                                       <input name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Inserisci Email">
                                    </div>
                                    <div class="form-group col-sm-6">
                                       <label for="exampleInputEmail1">Numero di Telefono*</label>
                                       <input class="form-control" name="numero" type="tel" placeholder="348455555" id="example-tel-input-3"> 
                                    </div>
                                    <div class="form-group col-sm-6">
                                       <label for="exampleInputPassword1">Password</label>
                                       <input name="password" type="password" class="form-control" id="exampleInputPassword1" placeholder="Password"> 
                                    </div>
                                    <div class="form-group col-sm-6">
                                       <label for="exampleInputPassword1">Ripeti password</label>
                                       <input type="password" class="form-control" id="exampleInputPassword2" placeholder="Password"> 
                                    </div>
</div>
<div class="row">
                     <div class="col-sm-4">
										<p> <button type="submit" class="btn theme-btn">Registrati</button> </p>
                                    </div>
                                 </div>
                              </form>
                           </div>
                           <!-- end: Widget -->
                        </div>
                        <!-- /REGISTER -->
                     </div>
                     <!-- WHY? -->
                     <div class="col-md-4">
                        <h4>La Registrazione è facile, veloce e gratis</h4>
                        <p>Una volta registrato potrai:</p>
                        <hr>
                        <img src="img/Local.png" alt="" class="img-fluid">
                        <p></p>
                        <div class="panel">
                           <div class="panel-heading">
                              <h4 class="panel-title"><a data-parent="#accordion" data-toggle="collapse" class="panel-toggle collapsed" href="#faq1" aria-expanded="false"><i class="ti-info-alt" aria-hidden="true"></i>Posso registrare il mio ristorante insieme al mio account per fare ordini?</a></h4>
                           </div>
                           <div class="panel-collapse collapse" id="faq1" aria-expanded="false" role="article" style="height: 0px;">
                              <div class="panel-body">No, avrai bisogno di due registrazioni diverse.</div>
                           </div>
                        </div>
                        <!-- end:panel -->
                        <!-- end:Panel -->
                       <h4 class="m-t-20">Contatta il supporto tecnico</h4>
                        <p> Se hai bisogno di aiuto o hai domande chiedi pure </p>
                        <p> <a href="contact.html" class="btn theme-btn m-t-15">Contattaci</a> </p>
                     </div>
                     <!-- /WHY? -->
                  </div>
               </div>
            </section>
            <section class="app-section"> </section>
           
<!-- start: FOOTER -->
<footer class="footer">
  <div class="container"> 
    <!-- top footer statrs -->
    <div class="row top-footer">
      <div class="col-xs-12 col-sm-3 footer-logo-block color-gray"> <a class="col-xs-10" href="index.jsp"> <img src="https://d3fpaxu9zxkgws.cloudfront.net/assets/dist/img/logos/je-logo-v2.svg" alt="Footer logo"> </a> <span>Consegna dell'ordine &amp; Ritira </span> </div>
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
          <li><a href="index.jsp">Inserisci la tua città</a> </li>
          <li><a href="index.jsp">Scegli il Ristorante</a> </li>
          <li><a href="index.jsp">Scegli il cibo</a> </li>
          <li><a href="index.jsp">Paga con carta di credito</a> </li>
          <li><a href="index.jsp">Aspetta la consegna</a> </li>
        </ul>
      </div>
      <div class="col-xs-12 col-sm-2 pages color-gray">
        <h5>Pagine</h5>
        <ul>
          <li><a href="login.jsp">Pagina di accesso utente</a> </li>
          <li><a href="index.jsp">Fai un ordine</a> </li>
          <li><a href="index.jsp">Aggiungi al carrello</a> </li>
        </ul>
      </div>
      <div class="col-xs-12 col-sm-3 popular-locations color-gray">
        <h5>Città Popolari</h5>
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
              <li> <a href="#"> <img src="img/paypal.png" alt="Paypal"> </a> </li>
              <li> <a href="#"> <img src="img/mastercard.png" alt="Mastercard"> </a> </li>
              <li> <a href="#"> <img src="img/maestro.png" alt="Maestro"> </a> </li>
              <li> <a href="#"> <img src="img/stripe.png" alt="Stripe"> </a> </li>
              <li> <a href="#"> <img src="img/bitcoin.png" alt="Bitcoin"> </a> </li>
            </ul>
          </div>
          <div class="col-xs-12 col-sm-4 address color-gray">
            <h5>Indirizzo</h5>
            <p>Via ponte Pietro Bucci Rende, CS</p>
            <h5>Phone: <a href="tel:+080000012222">0984000000</a></h5>
          </div>
          <div class="col-xs-12 col-sm-5 additional-info color-gray">
            <h5>Informazioni aggiuntive</h5>
            <p>Se sei un ristorante unisciti alle migliaia di altri ristoranti che traggono vantaggio dall'avere i loro menu su JustEat.</p>
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