<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" 
prefix="c" %>
<!DOCTYPE html>

<html lang="it">
<head>
<title>Modifica Informazioni pagamento</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="#">
<title>Pagina Account Profilo</title>
<!-- Bootstrap core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/font-awesome.min.css" rel="stylesheet">
<link href="css/animsition.min.css" rel="stylesheet">
<link href="css/animate.css" rel="stylesheet">
<!-- Custom styles for this template -->
<link href="css/style.css" rel="stylesheet">
<link rel="stylesheet" href="css/je-67b0186d66.min.css">
	
<link rel="stylesheet" href="https://d3fpaxu9zxkgws.cloudfront.net/assets/dist/css/je-67b0186d66.min.css">
</head>
<!--Push backend validation errors-->

<body itemscope="" itemtype="http://schema.org/WebPage">
<div style="display: none;" id="lightningjs-usabilla_live">
  <div>
    <iframe frameborder="0" id="lightningjs-frame-usabilla_live"></iframe>
  </div>
</div>
<!-- Google Tag Manager --> 
<script>
//<![CDATA[
(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],j=d.createElement(s),dl=l!='dataLayer'?'&amp;l='+l:'';j.async=true;j.src='//www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);})(window,document,'script','dataLayer','GTM-TMPX9FN');
//]]>
</script> 
<!-- End Google Tag Manager -->

<div class="skipTo"> <a class="is-visuallyHidden focusable u-text-marker" href="#skipToMain">Vai al contenuto principale</a> </div>
<header class="header"> </header>
		
        <!-- .navbar -->
<nav class="navbar navbar-dark">
  <div class="container">
    <button class="navbar-toggler hidden-lg-up" type="button" data-toggle="collapse" data-target="#mainNavbarCollapse">&#9776;</button>
    <a class="navbar-brand" href="index.jsp"> <img alt="" src="https://d3fpaxu9zxkgws.cloudfront.net/assets/dist/img/logos/je-logo-v2.svg" width="152" height="50"> </a>
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
	
<div class="u-divider u-horizontalRule">
    <div class="l-container l-vPad--small">
        <ul class="breadcrumb unstyled">
    <li class="breadcrumb-item breadcrumb-item--home" itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb">
        <a href="/" itemprop="url" title="Vai alla pagina iniziale di JUST EAT">
            <span itemprop="title">Pagina iniziale</span>
        </a>
    </li>
        <li class="breadcrumb-item" itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb" data-test-breadcrumb="Account">
                <a href="/account/info/" itemprop="url" title="Account">
                    <span itemprop="title">Account</span>
                </a>
        </li>
        <li class="breadcrumb-item" itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb" data-test-breadcrumb="Modifica Password">
                <span itemprop="title">Modifica Carta di Credito</span>
        </li>
</ul>

    </div>
</div>
<div data-cookiebanner="" class="infoBar infoBar--dark infoBar--hideByDefault">
  <div class="l-container infoBar-row"> <a class="btn infoBar-btn" data-cookiebanner-btn="" data-test="cookieBannerBtn">Chiudi</a>
    <p class="u-showAboveMid u-hideTextOverflow--narrow"><span style="font-weight: bold;">JUST EAT</span> utilizza cookie di profilazione, propri e di terzi, per inviarti pubblicitÃ  online in funzione delle tue preferenze manifestate nella navigazione e consentirti una miglior esperienza di navigazione. Se accedi ad un qualunque elemento del sito sottostante acconsenti allâuso di tali cookie. Per avere maggiori informazioni su come noi, o i terzi, usiamo i cookie, sapere come negare il consenso a tutti o solo alcuni cookie, e come impostare il proprio browser si prega di leggere la nostra <a href="/cookies-policy">cookie policy</a></p>
    <p class="u-showBelowMid u-hideTextOverflow--narrow">JUST EAT utilizza diversi cookie: accedendo al sito, ne acconsenti l'uso.</p>
    <p class="u-showBelowMid">Qui puoi trovare i dettagli della nostra <a href="/cookies-policy">cookie policy</a></p>
  </div>
</div>
<div class="l-container l-pageContent">
  <div class="g g--gutter g--stack">
    <!-- Pannello Account Laterale -->
    <aside class="sidebar g-col g-span3--mid u-showAboveMid">
      <nav>
        <ul class="controlList unstyled">
         <li class="controlList-item is-active"> <a href="userPanel.jsp" id="account-nav-link">Account</a> </li>
			<c:if test="${ristorante==false}">
          <li class="controlList-item "> <a href="ordiniutente?email=${utente.getEmail_Utente()}" id="orders-nav-link">Ordini</a> </li>
				 </c:if>
			<c:if test="${ristorante==true}">
          <li class="controlList-item "> <a href="ordiniRicevuti?email=${utente.getEmail_Utente()}" id="orders-nav-link">Ordini</a> </li>
				 </c:if>
			
			<c:if test="${ristorante==true}">
				<li class="controlList-item"> <a href="lastOrders.jsp" id="orders-nav-link">Nuovi Ordini</a> </li>
          <li class="controlList-item"> <a href="ottieniRistorante?email=${utente.getEmail_Utente()}" id="credit-nav-link">Il mio Ristorante</a> </li>
        <li class="controlList-item "> <a id="payment-nav-link" href="pietanze?email=${utente.getEmail_Utente()}" >Menù Ristorante</a> </li></li>
        </c:if>
		  </ul>
      </nav>
    </aside>
	
    <main class="g-col g-span9--mid g-span7--wide">
      <ol id="orderList" class="listing unstyled u-divider--top">
		  
		  <!-- Template lista ordini da generare con un for -->
		  <main class="g-col g-span9--mid g-span4--midWide g-offset1--midWide g-holdWidth--midWide">
<form action="modificacarta" class="form" data-track-validation="{&quot;event&quot;:&quot;trackEvent&quot;,&quot;eventCategory&quot;:&quot;engagement&quot;,&quot;eventAction&quot;:&quot;form_account_change_password&quot;}" id="change-password-form" method="post" novalidate="novalidate">                    <fieldset class="form-fieldset">
  <h1 class="form-title beta title--alternate">Cambia carta</h1>
  <input name="__RequestVerificationToken" type="hidden" value="bIbz1CsvOE0LiuK4dgu_IlkcGHYe-R8eqzGhcSHmuIC96nz-x3i8G1jkr44-f6FXQyIqpL5y9MnBMph9d7KqCLyYgP4LRNGN8xANmaukEqTIOgbIIeXR7zqdb23Q5WADyfKVQA2">
                        
<div role="alert" aria-atomic="true" class="validation-summary-valid alert alert--danger" data-valmsg-summary="true" data-test-id="validationErrorSummary">
    <ul>
    </ul>
</div>







                        <div class="form-controlGroup">
                            <label class="form-label">Numero Carta Vecchio</label>
                            <div class="form-controlGroup-inputWrapper">
                                <input class="form-input"  data-val="true" name="creditcardold" type="number">
                            </div>
                        </div>
                        <div class="form-controlGroup">
                            <label class="form-label" for="NewPassword">Nuovo Numero Carta</label>
                           <div class="form-controlGroup-inputWrapper">
                                <input class="form-input"  data-val="true" name="creditcardnew" type="number">
                            </div>
                        </div>
                        <div class="form-controlGroup">
                            <label class="form-label" for="ConfirmPassword">Scadenza</label>
                            <div class="form-controlGroup-inputWrapper">
                                <input class="form-input" name="scadenzacarta" type="date">
                            </div>
                        </div>
                        <button type="submit" value="${utente.getEmail_Utente()}" name="email" class="btn btn--primary btn--block" id="save-changes-button"><span class="is-loading-hidden">Salva</span></button>
                    </fieldset>
</form>        </main>
		  
		  <!-- Fine template -->
		  
      </ol>
    </main>
  </div>
</div>


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