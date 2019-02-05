<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" 
prefix="c" %>

<!DOCTYPE html>
<html lang="it">
<head>
<meta charset="utf-8">
<title>Login</title>
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
    <link href="css/style.css" rel="stylesheet"> <script type="text/javascript" src="http://gc.kis.v2.scr.kaspersky-labs.com/C33BB16D-A6ED-BE42-AEC0-323877E5D848/main.js" charset="UTF-8"></script>
	<link rel="stylesheet" href="https://d3fpaxu9zxkgws.cloudfront.net/assets/dist/css/je-67b0186d66.min.css">
	</head>
<body>	
	
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
		
        
        <!-- Fine lista Utente -->
        
      </ul>
    </div>
  </div>
</nav>

<!-- /.navbar -->
	
<div class="u-horizontalRule">
    <main class="l-container l-pageContent l-singleCol singleBox">
		<!-- inizio form login -->
<form class="form" action="inviaCredenziali" method="post">            <fieldset class="form-fieldset">
                <h1 class="beta form-title">Accedi</h1>
                
<div role="alert" aria-atomic="true" class="validation-summary-valid alert alert--danger" data-valmsg-summary="true" data-test-id="validationErrorSummary">
    <ul>
    </ul>
</div>
<!-- NOME UTENTE -->
                <div class="form-controlGroup">
                    <label class="form-label js-showIfPlaceholderNotSupported is-visuallyHidden" for="email">Inserisci il tuo indirizzo email</label>
                    <div class="form-controlGroup-inputWrapper">
                        <input class="form-input" data-test-id="email" data-val="true" data-val-email="Inserisci il tuo indirizzo email valido" data-val-length="Inserisci il tuo indirizzo email valido" data-val-length-max="50" data-val-required="Inserisci il tuo indirizzo email" id="email" name="Email" placeholder="Inserisci il tuo indirizzo email" type="email" value="">
                        <span class="field-validation-valid has-error" data-valmsg-for="email" data-valmsg-replace="true"></span>
                    </div>
                </div>
	
	<!-- PASSWORD -->
                <div class="form-controlGroup">
                    <label class="form-label js-showIfPlaceholderNotSupported is-visuallyHidden" for="Password">Inserisci la tua password</label>
                    <div class="form-controlGroup-inputWrapper">
                        <input autocomplete="off" class="form-input" data-test-id="password" data-val="true" data-val-required="Inserisci una password" id="password" name="Password" placeholder="Inserisci la tua password" type="password">
                        <span class="field-validation-valid has-error" data-valmsg-for="Password" data-valmsg-replace="true"></span>
                    </div>
                </div>
	<!-- PASS DIMENTICATA -->
                <p class="form-subtext"><a data-test-id="forgottenPassword" href="/account/reset-password/?returnUrl=%2F">Hai dimenticato la password?</a></p>
	<!-- Ricorda login -->
                <div class="form-controlGroup">
                    <div class="control">
                        <input checked="checked" data-test-id="remember" data-val="true" data-val-required="The Ricordami su questo computer field is required." id="RememberMe" name="RememberMe" type="checkbox" value="true"><input name="RememberMe" type="hidden" value="false">
                        <label for="RememberMe">Ricordami su questo computer</label>
                        <p>Non selezionare se è un computer condiviso</p>
                    </div>
                </div>
<!-- Bottone Accedi-->
                <button type="submit" data-test-id="login" class="btn btn--primary btn--block submit" autocomplete="off"><span class="is-loading-hidden">Accedi</span></button>
            </fieldset>
</form>
		<!-- CHIUSURA FORM LOGIN -->
		
        <div class="l-singleCol l-center-block">
            <p>
                Prima volta su Just Eat?
                <a href="registration.jsp" id="registerBtn">Crea un account</a>
            </p>
        </div>

        <div class="l-singleCol l-center-block u-separatedSpace--top">
            <p class="registerTerms">Creando un account accetti <a href="/termsandconditions" target="_blank">Termini e le condizioni d'uso</a>. Sei un Titolare di un Ristorante?<a href="/privacypolicy" target="_blank">Privacy</a> e sui <a href="/cookies-policy" target="_blank">Cookie</a>.</p>
        </div>
    </main>
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
</body>
</html>
