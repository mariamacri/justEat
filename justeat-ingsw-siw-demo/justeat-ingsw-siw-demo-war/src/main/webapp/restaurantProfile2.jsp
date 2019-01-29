<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" 
prefix="c" %>

<!DOCTYPE html>

<html lang="it">
<head>
<title>Lista Pietanze Ristoranti | JUST EAT</title>
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
<script type="text/javascript" src="http://gc.kis.v2.scr.kaspersky-labs.com/C33BB16D-A6ED-BE42-AEC0-323877E5D848/main.js" charset="UTF-8"></script>
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
	  

<header class="header header--fixed">

  
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


    

    <div data-cookiebanner="" class="infoBar infoBar--dark infoBar--hideByDefault infoBar--fixed">
        <div class="l-container infoBar-row">
            <a class="btn infoBar-btn" data-cookiebanner-btn="" data-test="cookieBannerBtn">Chiudi</a>
            <p class="u-showAboveMid u-hideTextOverflow--narrow"><span style="font-weight: bold;">JUST EAT</span> utilizza cookie di profilazione, propri e di terzi, per inviarti pubblicitÃ  online in funzione delle tue preferenze manifestate nella navigazione e consentirti una miglior esperienza di navigazione. Se accedi ad un qualunque elemento del sito sottostante acconsenti allâuso di tali cookie. Per avere maggiori informazioni su come noi, o i terzi, usiamo i cookie, sapere come negare il consenso a tutti o solo alcuni cookie, e come impostare il proprio browser si prega di leggere la nostra <a href="/cookies-policy">cookie policy</a></p>
            <p class="u-showBelowMid u-hideTextOverflow--narrow">JUST EAT utilizza diversi cookie: accedendo al sito, ne acconsenti l'uso.</p>
            <p class="u-showBelowMid">Qui puoi trovare i dettagli della nostra <a href="/cookies-policy">cookie policy</a></p>
        </div>
    </div>


    






<div id="skipToMain" class="has-pageBanner">

        <section class="c-pageBanner" data-js-pagebanner="">
            <picture>
                <source class="c-pageBanner-img" media="(min-width: 860px)" srcset="https://api.justeat-int.com/images/it-IT/restaurant/216647/banner?width=1440&amp;quality=50">

                <source class="c-pageBanner-img" media="(min-width: 500px)" srcset="https://api.justeat-int.com/images/it-IT/restaurant/216647/banner?width=860&amp;quality=50">

                <img src="https://api.justeat-int.com/images/it-IT/restaurant/216647/banner?width=500&amp;quality=50" class="c-pageBanner-img" data-fallback-wide-src="https://d3fpaxu9zxkgws.cloudfront.net/assets/dist/img/menu/hero-banner/default--wide.it.jpg" data-fallback-mid-src="https://d3fpaxu9zxkgws.cloudfront.net/assets/dist/img/menu/hero-banner/default--mid.it.jpg" data-fallback-narrow-src="https://d3fpaxu9zxkgws.cloudfront.net/assets/dist/img/menu/hero-banner/default--narrow.it.jpg" onerror="this.onerror = null; this.previousElementSibling.previousElementSibling.srcset = this.getAttribute('data-fallback-wide-src'); this.previousElementSibling.srcset = this.getAttribute('data-fallback-mid-src'); this.src = this.getAttribute('data-fallback-narrow-src');">
            </picture>
        </section>

    <input data-val="true" data-val-number="The field Id must be a number." data-val-required="The Id field is required." id="Menu_Id" name="Menu.Id" type="hidden" value="75046">
    <input data-val="true" data-val-number="The field Id must be a number." data-val-required="The Id field is required." id="Restaurant_Id" name="Restaurant.Id" type="hidden" value="216647">
    <input type="hidden" name="username" value="pizzasprintrende" form="MenuSwitcher">

    <div class="menu" data-test-restaurant-id="216647" data-test-ajax-status="success">
        
<div class="menu-header l-container">
    <div class="mediaElement mediaElement--stack">
        <img class="mediaElement-img mediaElement-img--outlined " src="//d2egcvq7li5bpq.cloudfront.net/it/images/restaurants/216647.gif" alt="Pizza Sprint">

        <noscript>
            <img class="mediaElement-img mediaElement-img--outlined "
                src="//d2egcvq7li5bpq.cloudfront.net/it/images/restaurants/216647.gif"
                alt="Pizza Sprint" />
        </noscript>

        <div class="mediaElement-content">
            <ul class="breadcrumb unstyled">
    <li class="breadcrumb-item breadcrumb-item--home" itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb">
        <a href="/" itemprop="url" title="Vai alla pagina iniziale di JUST EAT">
            <span itemprop="title">Pagina iniziale</span>
        </a>
    </li>
        <li class="breadcrumb-item" itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb" data-test-breadcrumb="87036 Quattromiglia">
                <a href="/area/87036-quattromiglia?lat=39.3560153&amp;long=16.2436577" itemprop="url" title="87036 Quattromiglia">
                    <span itemprop="title">87036 Quattromiglia</span>
                </a>
        </li>
        <li class="breadcrumb-item" itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb" data-test-breadcrumb="Pizza Sprint">
                <span itemprop="title">Pizza Sprint</span>
        </li>
</ul>

            <div class="infoTextBlock" data-test-id="restaurantSummary">
                <div class="infoTextBlock-item infoTextBlock-item--primary ">
                    <a href="/restaurants-pizzasprintrende"><h1 class="infoTextBlock-item-title">Pizza Sprint</h1></a>
<div class="rating rating--spaced" data-test-id="rating" itemprop="aggregateRating" itemscope="" itemtype="http://schema.org/AggregateRating">
    <i class="rating-stars rating-stars--50">
        <span class="rating-stars-fill">5,1 valutazioni su 6</span>
    </i>

    <p class="rating-text">
                (<a href="/restaurants-pizzasprintrende/reviews/">200 Recensioni</a>)
    </p>

    <meta itemprop="ratingValue" content="5.1">
    <meta itemprop="itemreviewed" content="pizzasprintrende">
    <meta itemprop="ratingCount" content="200">
    <meta itemprop="bestRating" content="6">
    <meta itemprop="worstRating" content="0">
</div>

                            <p class="infoTextBlock-item-text" data-test-id="cuisines">Pizza, Fritti</p>

                </div>

                <ul class="infoList unstyled">
                            <li class="infoList-item icon icon--delivery">
                                <div id="formattedMinDeliveryCharge" data-test-id="deliveryFee">Costo di consegna: â¬ 2</div>
                                <div id="formattedMinBasketPrice">Minimo â¬ 5 per la consegna</div>
                            </li>

                    <li class="infoList-item icon icon--location">
<p class="restInfoAddress" data-test-id="restaurantAddress">
        Via Goffredo Mameli, 10,<br>
            Rende,
    87036
</p>

                    </li>

                    <li class="infoList-item">
                        <div class="paymentOptions--horizontal">
    <div class="paymentOptions">
            <figure>
                <i class="icon icon-paymentOption--cash"></i>
                <figcaption>Contanti</figcaption>
            </figure>

            <figure>
                <i class="icon icon-paymentOption--card"></i>
                <figcaption>Carta</figcaption>
            </figure>

            <figure>
                <i class="icon icon-paymentOption--paypal"></i>
                <figcaption>PayPal</figcaption>
            </figure>
    </div>

                        </div>
                    </li>
                </ul>

                <input id="Phone" name="Restaurant.Contact.Phone" type="hidden" value="0984402173">

            </div>
        </div>
    </div>
</div>



        

        <div class="l-container menu-content" id="menuContainer">
            <div class="g g--gutter">

                    <div class="g-col g-span3--mid g-span2--wide infoBox infoBox--noSpacing u--noOutline l-pageContent menu-categories">
                        <div data-js-menu-stickyel="" class="" style=""> <!--wrapper for sticky kit to work with flex child -->
                            <div class="infoBox-header infoBox-header--large infoBox-icon infoBox-icon--cuisines">
                                <h3 class="menu-categories-icon infoBox-title title--alternate">Categorie</h3>
                            </div>
                            <div id="categories-card" class="card card--rounded card--small card--tab menu-categories--card" data-test="categories">
                                <div class="controlList categoriesList">
    <ul class="unstyled" data-test="categoriesList">
                <li class="controlList-item categoriesList-item is-active"><a href="#cat0">Pizze</a></li>
                <li class="controlList-item categoriesList-item"><a href="#cat1">Focacce</a></li>
                <li class="controlList-item categoriesList-item"><a href="#cat2">Panini</a></li>
                <li class="controlList-item categoriesList-item"><a href="#cat3">Fresine</a></li>
                <li class="controlList-item categoriesList-item"><a href="#cat4">Fritti</a></li>
                <li class="controlList-item categoriesList-item"><a href="#cat5">Dolci</a></li>
                <li class="controlList-item categoriesList-item"><a href="#cat6">Bevande</a></li>
                <li class="controlList-item categoriesList-item"><a href="#cat7">Birre</a></li>

    </ul>
</div>

                            </div>
                        </div>
                    </div>

                <div id="menu-tabs" class="g-col infoBox infoBox--noSpacing u--noOutline l-pageContent menu-tabs">
                    <div class="container--tabs">
                        <div class="tabs ">
                                <a href="/restaurants-pizzasprintrende/menu/" class="tab infoBox-header tab--selected" data-test-id="tab-menu" data-tab="tab-menu" data-partialhref="/restaurants-pizzasprintrende/menu/card/?serviceType=delivery&amp;currentMenuId=75046&amp;menuType=NoMenuType">
                                    <h3 class="infoBox-title title--alternate">Menu</h3>
                                </a>
                                <a href="/restaurants-pizzasprintrende/reviews/" class="tab infoBox-header" data-test-id="tab-reviews" data-tab="tab-reviews" data-partialhref="/restaurants-pizzasprintrende/reviews/all/">
                                    <h3 class="infoBox-title title--alternate">Recensioni</h3>
                                </a>
                                <a href="/restaurants-pizzasprintrende/" class="tab infoBox-header " data-test-id="tab-info" data-tab="tab-info" data-partialhref="/restaurants-pizzasprintrende/info/?menuType=NoMenuType">
                                    <h3 class="infoBox-title title--alternate">Info</h3>
                                </a>
                        </div>
                        <div class="card card--medium card--rounded">


                                <div data-tabcontent="">
<div id="menu-container--card" class="menuCard" data-test-id="menuCardContainer">
    <div class="u-showAboveMid">
    <div class="input--searchbar searchbar" style="width: 654px;">
        <input data-menusearch-entry="" placeholder="Cerca nel menÃ¹" class="searchbar-entry" type="text">
        <button data-menusearch-btn="" class="searchbar-btn icon-search" disabled=""><span class="is-visuallyHidden">Clear Search Text</span></button>
    </div>
</div>
<div class="searchbar-placeholder is-visuallyHidden u-showAboveMid"></div>
<div class="searchbar-noResults is-visuallyHidden">
    <div class="searchbar-noResults-container">
        <span>Nessun piatto trovato</span>
        <div id="searchbar-clear" class="btn btn--outline">Cancella la ricerca</div>
    </div>
</div>

    <div class="offers">
        <div class="offerContainer">
            <div data-freedelivery="">
</div>

        </div>
        <div class="offerContainer">
                <p class="offer" data-test="discount-offer">
        20% di sconto per ordini superiori a â¬ 20
    </p>

<script>
    dataLayer.push({"trData":{"offerQualifyingAmount":20.0000,"offerValue":"20%"}});

    var trackEvents = [];
    Array.prototype.push.apply(dataLayer, trackEvents);
</script>

        </div>
    </div>
    
            <p class="menuCard-info"><strong>ATTENZIONE: leggi qui prima di ordinare...</strong><br>
<br>
<span style="color:#ce0b10;"><strong>OFFERTE: ogni 5 pizze, una margherita in omaggio. Specifica la scelta nelle note. Offerte non cumulabili con altre offerte in corso. </strong></span><br>
<strong>Il ristorante accetta tutti i tipi di buoni pasto Cartacei.</strong></p>



<div id="container-menu--card" class="menuCard-contents">
    <h2 class="is-visuallyHidden">Menu</h2>
                <section class="menuCard-category accordion accordion--ruled is-open" data-category-id="30655" data-test-id="Pizze">

                    <h3 id="cat0" class="menuCard-category-title gamma accordion-header icon">

                        Pizze


                    </h3>
                    <div class="accordion-content">

                        


<div class="menu-product product has-synonyms u-separated--dash" title="" data-product-id="3486952,3486953">

    <h4 class="product-title">
        Marinara
        
    </h4>

            <div class="product-description">pomodoro, olio e origano</div>


            <div class="product-synonym" title="" data-product-id="3486952" data-product-type="Simple">
                <div class="product-synonym-name">
                     Normale
                </div>
                <div class="product-price u-noWrap">â¬ 3,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3486952" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Marinara -  Normale to Basket</span>
                </button>
            </div>
            <div class="product-synonym" title="" data-product-id="3486953" data-product-type="Simple">
                <div class="product-synonym-name">
                     Maxi
                </div>
                <div class="product-price u-noWrap">â¬ 6,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3486953" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Marinara -  Maxi to Basket</span>
                </button>
            </div>

    </div>
<div class="menu-product product has-synonyms u-separated--dash" title="" data-product-id="3486958,3486959">

    <h4 class="product-title">
        Margherita
        
    </h4>

            <div class="product-description">pomodoro, mozzarella fiordilatte e basilico</div>


            <div class="product-synonym" title="" data-product-id="3486958" data-product-type="Simple">
                <div class="product-synonym-name">
                    Normale
                </div>
                <div class="product-price u-noWrap">â¬ 4,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3486958" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Margherita - Normale to Basket</span>
                </button>
            </div>
            <div class="product-synonym" title="" data-product-id="3486959" data-product-type="Simple">
                <div class="product-synonym-name">
                    Maxi
                </div>
                <div class="product-price u-noWrap">â¬ 8,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3486959" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Margherita - Maxi to Basket</span>
                </button>
            </div>

    </div>
<div class="menu-product product has-synonyms u-separated--dash" title="" data-product-id="3486962,3486963">

    <h4 class="product-title">
        Salame
        
    </h4>

            <div class="product-description">pomodoro, mozzarella fiordilatte, salame e origano</div>


            <div class="product-synonym" title="" data-product-id="3486962" data-product-type="Simple">
                <div class="product-synonym-name">
                    Normale
                </div>
                <div class="product-price u-noWrap">â¬ 5,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3486962" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Salame - Normale to Basket</span>
                </button>
            </div>
            <div class="product-synonym" title="" data-product-id="3486963" data-product-type="Simple">
                <div class="product-synonym-name">
                    Maxi
                </div>
                <div class="product-price u-noWrap">â¬ 10,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3486963" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Salame - Maxi to Basket</span>
                </button>
            </div>

    </div>
<div class="menu-product product has-synonyms u-separated--dash" title="" data-product-id="3486966,3486967">

    <h4 class="product-title">
        Cardinale
        
    </h4>

            <div class="product-description">pomodoro, mozzarella fiordilatte, prosciutto cotto e origano</div>


            <div class="product-synonym" title="" data-product-id="3486966" data-product-type="Simple">
                <div class="product-synonym-name">
                    Normale
                </div>
                <div class="product-price u-noWrap">â¬ 4,50</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3486966" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Cardinale - Normale to Basket</span>
                </button>
            </div>
            <div class="product-synonym" title="" data-product-id="3486967" data-product-type="Simple">
                <div class="product-synonym-name">
                    Maxi
                </div>
                <div class="product-price u-noWrap">â¬ 9,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3486967" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Cardinale - Maxi to Basket</span>
                </button>
            </div>

    </div>
<div class="menu-product product has-synonyms u-separated--dash" title="" data-product-id="3486971,3486972">

    <h4 class="product-title">
        Completa
        
    </h4>

            <div class="product-description">pomodoro, mozzarella fiordilatte, acciughe e origano</div>


            <div class="product-synonym" title="" data-product-id="3486971" data-product-type="Simple">
                <div class="product-synonym-name">
                    Normale
                </div>
                <div class="product-price u-noWrap">â¬ 5,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3486971" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Completa - Normale to Basket</span>
                </button>
            </div>
            <div class="product-synonym" title="" data-product-id="3486972" data-product-type="Simple">
                <div class="product-synonym-name">
                    Maxi
                </div>
                <div class="product-price u-noWrap">â¬ 10,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3486972" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Completa - Maxi to Basket</span>
                </button>
            </div>

    </div>
<div class="menu-product product has-synonyms u-separated--dash" title="" data-product-id="3486975,3486976">

    <h4 class="product-title">
        Cosentina
        
    </h4>

            <div class="product-description">pomodoro, mozzarella fiordilatte, acciughe, olive nere, capperi, pepe e origano</div>


            <div class="product-synonym" title="" data-product-id="3486975" data-product-type="Simple">
                <div class="product-synonym-name">
                    Normale
                </div>
                <div class="product-price u-noWrap">â¬ 6,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3486975" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Cosentina - Normale to Basket</span>

                </button>
            </div>
            <div class="product-synonym" title="" data-product-id="3486976" data-product-type="Simple">
                <div class="product-synonym-name">
                    Maxi
                </div>
                <div class="product-price u-noWrap">â¬ 12,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3486976" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Cosentina - Maxi to Basket</span>
                </button>
            </div>

    </div>
<div class="menu-product product has-synonyms u-separated--dash" title="" data-product-id="3486978,3486979">

    <h4 class="product-title">
        Capricciosa
        
    </h4>

            <div class="product-description">pomodoro, mozzarella fiordilatte, funghi, prosciutto cotto, olive e origano</div>


            <div class="product-synonym" title="" data-product-id="3486978" data-product-type="Simple">
                <div class="product-synonym-name">
                    Normale
                </div>
                <div class="product-price u-noWrap">â¬ 5,50</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3486978" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Capricciosa - Normale to Basket</span>
                </button>
            </div>
            <div class="product-synonym" title="" data-product-id="3486979" data-product-type="Simple">
                <div class="product-synonym-name">
                    Maxi
                </div>
                <div class="product-price u-noWrap">â¬ 11,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3486979" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Capricciosa - Maxi to Basket</span>
                </button>
            </div>

    </div>
<div class="menu-product product has-synonyms u-separated--dash" title="" data-product-id="3486983,3486984">

    <h4 class="product-title">
        4 Stagioni
        
    </h4>

            <div class="product-description">pomodoro, mozzarella fiordilatte, carciofi, funghi, prosciutto cotto, olive e origano</div>


            <div class="product-synonym" title="" data-product-id="3486983" data-product-type="Simple">
                <div class="product-synonym-name">
                    Normale
                </div>
                <div class="product-price u-noWrap">â¬ 6,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3486983" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add 4 Stagioni - Normale to Basket</span>
                </button>
            </div>
            <div class="product-synonym" title="" data-product-id="3486984" data-product-type="Simple">
                <div class="product-synonym-name">
                    Maxi
                </div>
                <div class="product-price u-noWrap">â¬ 12,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3486984" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add 4 Stagioni - Maxi to Basket</span>
                </button>
            </div>

    </div>
<div class="menu-product product has-synonyms u-separated--dash" title="" data-product-id="3487035,3487036">

    <h4 class="product-title">
        4 Formaggi
        
    </h4>


            <div class="product-description">mozzarella fiordilatte, pecorino, emmental e gorgonzola</div>


            <div class="product-synonym" title="" data-product-id="3487035" data-product-type="Simple">
                <div class="product-synonym-name">
                    Normale
                </div>
                <div class="product-price u-noWrap">â¬ 6,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487035" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add 4 Formaggi - Normale to Basket</span>
                </button>
            </div>
            <div class="product-synonym" title="" data-product-id="3487036" data-product-type="Simple">
                <div class="product-synonym-name">
                    Maxi
                </div>
                <div class="product-price u-noWrap">â¬ 13,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487036" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add 4 Formaggi - Maxi to Basket</span>
                </button>
            </div>

    </div>
<div class="menu-product product has-synonyms u-separated--dash" title="" data-product-id="3487044,3487045">

    <h4 class="product-title">
        Primavera
        
    </h4>

            <div class="product-description">pomodoro fresco, mozzarella fiordilatte, prosciutto crudo, rucola e scaglie di grana</div>


            <div class="product-synonym" title="" data-product-id="3487044" data-product-type="Simple">
                <div class="product-synonym-name">
                    Normale
                </div>
                <div class="product-price u-noWrap">â¬ 6,50</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487044" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Primavera - Normale to Basket</span>
                </button>
            </div>
            <div class="product-synonym" title="" data-product-id="3487045" data-product-type="Simple">
                <div class="product-synonym-name">
                    Maxi
                </div>
                <div class="product-price u-noWrap">â¬ 13,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487045" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Primavera - Maxi to Basket</span>
                </button>
            </div>

    </div>
<div class="menu-product product has-synonyms u-separated--dash" title="" data-product-id="3487050,3487051">

    <h4 class="product-title">
        Funghi
        
    </h4>

            <div class="product-description">pomodoro, mozzarella fiordilatte, funghi e origano</div>


            <div class="product-synonym" title="" data-product-id="3487050" data-product-type="Simple">
                <div class="product-synonym-name">
                    Normale
                </div>
                <div class="product-price u-noWrap">â¬ 4,50</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487050" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Funghi - Normale to Basket</span>
                </button>
            </div>
            <div class="product-synonym" title="" data-product-id="3487051" data-product-type="Simple">
                <div class="product-synonym-name">
                    Maxi
                </div>
                <div class="product-price u-noWrap">â¬ 9,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487051" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Funghi - Maxi to Basket</span>
                </button>
            </div>

    </div>
<div class="menu-product product has-synonyms u-separated--dash" title="" data-product-id="3487054,3487055">

    <h4 class="product-title">
        Peperoni
        
    </h4>

            <div class="product-description">pomodoro, mozzarella fiordilatte, peperoni e origano</div>


            <div class="product-synonym" title="" data-product-id="3487054" data-product-type="Simple">
                <div class="product-synonym-name">
                    Normale
                </div>
                <div class="product-price u-noWrap">â¬ 4,50</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487054" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Peperoni - Normale to Basket</span>
                </button>
            </div>
            <div class="product-synonym" title="" data-product-id="3487055" data-product-type="Simple">
                <div class="product-synonym-name">
                    Maxi
                </div>
                <div class="product-price u-noWrap">â¬ 9,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487055" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Peperoni - Maxi to Basket</span>
                </button>
            </div>

    </div>
<div class="menu-product product has-synonyms u-separated--dash" title="" data-product-id="3487061,3487062">

    <h4 class="product-title">
        Patate
        
    </h4>

            <div class="product-description">pomodoro, mozzarella fiordilatte, patate 'mbacchiuse e origano</div>


            <div class="product-synonym" title="" data-product-id="3487061" data-product-type="Simple">
                <div class="product-synonym-name">
                    Normale
                </div>
                <div class="product-price u-noWrap">â¬ 4,50</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487061" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Patate - Normale to Basket</span>
                </button>
            </div>
            <div class="product-synonym" title="" data-product-id="3487062" data-product-type="Simple">
                <div class="product-synonym-name">
                    Maxi
                </div>
                <div class="product-price u-noWrap">â¬ 9,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487062" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Patate - Maxi to Basket</span>
                </button>
            </div>

    </div>
<div class="menu-product product has-synonyms u-separated--dash" title="" data-product-id="3487068,3487069">

    <h4 class="product-title">
        Sfiziosa
        
    </h4>

            <div class="product-description">mozzarella fiordilatte, panna, funghi e prosciutto cotto</div>


            <div class="product-synonym" title="" data-product-id="3487068" data-product-type="Simple">
                <div class="product-synonym-name">
                    Normale
                </div>
                <div class="product-price u-noWrap">â¬ 5,50</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487068" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Sfiziosa - Normale to Basket</span>
                </button>
            </div>
            <div class="product-synonym" title="" data-product-id="3487069" data-product-type="Simple">
                <div class="product-synonym-name">
                    Maxi
                </div>
                <div class="product-price u-noWrap">â¬ 11,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487069" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Sfiziosa - Maxi to Basket</span>
                </button>
            </div>

    </div>
<div class="menu-product product has-synonyms u-separated--dash" title="" data-product-id="3487074,3487075">

    <h4 class="product-title">
        Reginella
        
    </h4>

            <div class="product-description">pomodoro fresco, mozzarella fiordilatte e origano</div>


            <div class="product-synonym" title="" data-product-id="3487074" data-product-type="Simple">
                <div class="product-synonym-name">
                    Normale
                </div>
                <div class="product-price u-noWrap">â¬ 4,50</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487074" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Reginella - Normale to Basket</span>
                </button>
            </div>
            <div class="product-synonym" title="" data-product-id="3487075" data-product-type="Simple">
                <div class="product-synonym-name">
                    Maxi
                </div>
                <div class="product-price u-noWrap">â¬ 9,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487075" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Reginella - Maxi to Basket</span>
                </button>
            </div>

    </div>
<div class="menu-product product has-synonyms u-separated--dash" title="" data-product-id="3487083,3487084">

    <h4 class="product-title">
        Reginella con Bufala
        
    </h4>

            <div class="product-description">pomodoro fresco, mozzarella di bufala e basilico</div>


            <div class="product-synonym" title="" data-product-id="3487083" data-product-type="Simple">
                <div class="product-synonym-name">
                    Normale
                </div>
                <div class="product-price u-noWrap">â¬ 6,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487083" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Reginella con Bufala - Normale to Basket</span>
                </button>
            </div>
            <div class="product-synonym" title="" data-product-id="3487084" data-product-type="Simple">
                <div class="product-synonym-name">
                    Maxi
                </div>
                <div class="product-price u-noWrap">â¬ 12,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487084" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Reginella con Bufala - Maxi to Basket</span>
                </button>
            </div>

    </div>
<div class="menu-product product has-synonyms u-separated--dash" title="" data-product-id="3487085,3487086">

    <h4 class="product-title">
        Wurstel
        
    </h4>

            <div class="product-description">pomodoro, mozzarella fiordilatte, wurstel e origano</div>


            <div class="product-synonym" title="" data-product-id="3487085" data-product-type="Simple">
                <div class="product-synonym-name">
                    Normale
                </div>
                <div class="product-price u-noWrap">â¬ 4,50</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487085" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Wurstel - Normale to Basket</span>
                </button>
            </div>
            <div class="product-synonym" title="" data-product-id="3487086" data-product-type="Simple">
                <div class="product-synonym-name">
                    Maxi
                </div>
                <div class="product-price u-noWrap">â¬ 9,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487086" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Wurstel - Maxi to Basket</span>
                </button>
            </div>

    </div>
<div class="menu-product product has-synonyms u-separated--dash" title="" data-product-id="3487092,3487093">

    <h4 class="product-title">
        Saporita
        
    </h4>

            <div class="product-description">pomodoro fresco, salame, scamorza e origano</div>


            <div class="product-synonym" title="" data-product-id="3487092" data-product-type="Simple">
                <div class="product-synonym-name">
                    Normale
                </div>
                <div class="product-price u-noWrap">â¬ 5,50</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487092" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Saporita - Normale to Basket</span>
                </button>
            </div>
            <div class="product-synonym" title="" data-product-id="3487093" data-product-type="Simple">
                <div class="product-synonym-name">
                    Maxi
                </div>
                <div class="product-price u-noWrap">â¬ 11,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487093" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Saporita - Maxi to Basket</span>
                </button>
            </div>

    </div>
<div class="menu-product product has-synonyms u-separated--dash" title="" data-product-id="3487101,3487102">

    <h4 class="product-title">
        Canadese
        
    </h4>

            <div class="product-description">pomodoro, mozzarella fiordilatte, salame, funghi, peperoni e cipolla</div>


            <div class="product-synonym" title="" data-product-id="3487101" data-product-type="Simple">
                <div class="product-synonym-name">
                    Normale
                </div>
                <div class="product-price u-noWrap">â¬ 6,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487101" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Canadese - Normale to Basket</span>
                </button>
            </div>
            <div class="product-synonym" title="" data-product-id="3487102" data-product-type="Simple">
                <div class="product-synonym-name">
                    Maxi
                </div>
                <div class="product-price u-noWrap">â¬ 12,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487102" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Canadese - Maxi to Basket</span>
                </button>
            </div>

    </div>
<div class="menu-product product has-synonyms u-separated--dash" title="" data-product-id="3487107,3487108">

    <h4 class="product-title">
        Campagnola
        
    </h4>

            <div class="product-description">mozzarella fiordilatte, patate 'mbacchiuse, cipolla, salsiccia fresca e origano</div>


            <div class="product-synonym" title="" data-product-id="3487107" data-product-type="Simple">
                <div class="product-synonym-name">
                    Normale
                </div>
                <div class="product-price u-noWrap">â¬ 5,50</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487107" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Campagnola - Normale to Basket</span>
                </button>
            </div>
            <div class="product-synonym" title="" data-product-id="3487108" data-product-type="Simple">
                <div class="product-synonym-name">
                    Maxi
                </div>
                <div class="product-price u-noWrap">â¬ 11,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487108" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Campagnola - Maxi to Basket</span>
                </button>
            </div>

    </div>
<div class="menu-product product has-synonyms u-separated--dash" title="" data-product-id="3487115,3487116">

    <h4 class="product-title">
        Vegetariana
            <i class="icon icon-product icon-product--vegetarian" title="Vegetariano" data-test="vegetarian-badge"></i>

    </h4>

            <div class="product-description">pomodoro, mozzarella fiordilatte, funghi, carciofi, peperoni, cipolla, pomodoro fresco e rucola</div>


            <div class="product-synonym" title="" data-product-id="3487115" data-product-type="Simple">
                <div class="product-synonym-name">
                    Normale
                </div>
                <div class="product-price u-noWrap">â¬ 6,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487115" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Vegetariana - Normale to Basket</span>
                </button>
            </div>
            <div class="product-synonym" title="" data-product-id="3487116" data-product-type="Simple">
                <div class="product-synonym-name">
                    Maxi
                </div>
                <div class="product-price u-noWrap">â¬ 12,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487116" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Vegetariana - Maxi to Basket</span>
                </button>
            </div>

    </div>
<div class="menu-product product has-synonyms u-separated--dash" title="" data-product-id="3487119,3487120">

    <h4 class="product-title">
        'Nduja
        
    </h4>

            <div class="product-description">pomodoro, mozzarella fiordilatte, salame e 'nduja</div>


            <div class="product-synonym" title="" data-product-id="3487119" data-product-type="Simple">
                <div class="product-synonym-name">
                    Normale
                </div>
                <div class="product-price u-noWrap">â¬ 5,50</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487119" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add 'Nduja - Normale to Basket</span>
                </button>
            </div>
            <div class="product-synonym" title="" data-product-id="3487120" data-product-type="Simple">
                <div class="product-synonym-name">
                    Maxi
                </div>
                <div class="product-price u-noWrap">â¬ 11,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487120" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add 'Nduja - Maxi to Basket</span>
                </button>
            </div>

    </div>
<div class="menu-product product has-synonyms u-separated--dash" title="" data-product-id="3487132,3487133">

    <h4 class="product-title">
        Silana
        
    </h4>

            <div class="product-description">panna ai funghi porcini, mozzarella fiordilatte, pancetta, funghi porcini, scaglie di parmigiano e pepe nero</div>


            <div class="product-synonym" title="" data-product-id="3487132" data-product-type="Simple">
                <div class="product-synonym-name">
                    Normale
                </div>
                <div class="product-price u-noWrap">â¬ 7,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487132" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Silana - Normale to Basket</span>
                </button>
            </div>
            <div class="product-synonym" title="" data-product-id="3487133" data-product-type="Simple">
                <div class="product-synonym-name">
                    Maxi
                </div>
                <div class="product-price u-noWrap">â¬ 14,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487133" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Silana - Maxi to Basket</span>
                </button>
            </div>

    </div>
<div class="menu-product product has-synonyms u-separated--dash" title="" data-product-id="3487137,3487139">

    <h4 class="product-title">
        Zucchine
        
    </h4>

            <div class="product-description">pomodoro, mozzarella fiordilatte, zucchine e origano</div>


            <div class="product-synonym" title="" data-product-id="3487137" data-product-type="Simple">
                <div class="product-synonym-name">
                    Normale
                </div>
                <div class="product-price u-noWrap">â¬ 4,50</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487137" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Zucchine - Normale to Basket</span>
                </button>
            </div>
            <div class="product-synonym" title="" data-product-id="3487139" data-product-type="Simple">
                <div class="product-synonym-name">
                    Maxi
                </div>
                <div class="product-price u-noWrap">â¬ 9,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487139" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Zucchine - Maxi to Basket</span>
                </button>
            </div>

    </div>
<div class="menu-product product has-synonyms u-separated--dash" title="" data-product-id="3487145,3487146">

    <h4 class="product-title">
        Contadina
        
    </h4>

            <div class="product-description">pomodoro, mozzarella fiordilatte, salame, prosciutto cotto, funghi, carciofi, cipolla e origano</div>


            <div class="product-synonym" title="" data-product-id="3487145" data-product-type="Simple">
                <div class="product-synonym-name">
                    Normale
                </div>
                <div class="product-price u-noWrap">â¬ 6,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487145" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Contadina - Normale to Basket</span>
                </button>
            </div>
            <div class="product-synonym" title="" data-product-id="3487146" data-product-type="Simple">
                <div class="product-synonym-name">
                    Maxi
                </div>
                <div class="product-price u-noWrap">â¬ 12,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487146" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Contadina - Maxi to Basket</span>
                </button>
            </div>

    </div>
<div class="menu-product product has-synonyms u-separated--dash" title="" data-product-id="3487158,3487159">

    <h4 class="product-title">
        Ortolana
        
    </h4>

            <div class="product-description">pomodoro, mozzarella fiordilatte, peperoni, melanzane, zucchine e olive</div>


            <div class="product-synonym" title="" data-product-id="3487158" data-product-type="Simple">
                <div class="product-synonym-name">
                    Normale
                </div>
                <div class="product-price u-noWrap">â¬ 5,50</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487158" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Ortolana - Normale to Basket</span>
                </button>
            </div>
            <div class="product-synonym" title="" data-product-id="3487159" data-product-type="Simple">
                <div class="product-synonym-name">
                    Maxi
                </div>
                <div class="product-price u-noWrap">â¬ 11,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487159" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Ortolana - Maxi to Basket</span>
                </button>
            </div>

    </div>
<div class="menu-product product has-synonyms u-separated--dash" title="" data-product-id="3487169,3487170">

    <h4 class="product-title">
        Porcini
        
    </h4>

            <div class="product-description">pomodoro, mozzarella fiordilatte, funghi porcini e origano</div>


            <div class="product-synonym" title="" data-product-id="3487169" data-product-type="Simple">
                <div class="product-synonym-name">
                    Normale
                </div>
                <div class="product-price u-noWrap">â¬ 6,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487169" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Porcini - Normale to Basket</span>
                </button>
            </div>
            <div class="product-synonym" title="" data-product-id="3487170" data-product-type="Simple">
                <div class="product-synonym-name">
                    Maxi
                </div>
                <div class="product-price u-noWrap">â¬ 12,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487170" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Porcini - Maxi to Basket</span>
                </button>
            </div>

    </div>
<div class="menu-product product has-synonyms u-separated--dash" title="" data-product-id="3487182,3487183">

    <h4 class="product-title">
        Special
        
    </h4>

            <div class="product-description">pomodoro, mozzarella fiordilatte, prosciutto crudo, rucola e scaglie di grana</div>


            <div class="product-synonym" title="" data-product-id="3487182" data-product-type="Simple">
                <div class="product-synonym-name">
                    Normale
                </div>
                <div class="product-price u-noWrap">â¬ 6,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487182" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Special - Normale to Basket</span>
                </button>
            </div>
            <div class="product-synonym" title="" data-product-id="3487183" data-product-type="Simple">
                <div class="product-synonym-name">
                    Maxi
                </div>
                <div class="product-price u-noWrap">â¬ 12,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487183" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Special - Maxi to Basket</span>
                </button>
            </div>

    </div>
<div class="menu-product product has-synonyms u-separated--dash" title="" data-product-id="3487191,3487192">

    <h4 class="product-title">
        Sprint
        
    </h4>

            <div class="product-description">mozzarella fiordilatte, salmone, scamorza e speck</div>


            <div class="product-synonym" title="" data-product-id="3487191" data-product-type="Simple">
                <div class="product-synonym-name">
                    Normale
                </div>
                <div class="product-price u-noWrap">â¬ 6,50</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487191" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Sprint - Normale to Basket</span>
                </button>
            </div>
            <div class="product-synonym" title="" data-product-id="3487192" data-product-type="Simple">
                <div class="product-synonym-name">
                    Maxi
                </div>
                <div class="product-price u-noWrap">â¬ 13,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487192" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Sprint - Maxi to Basket</span>
                </button>
            </div>

    </div>
<div class="menu-product product has-synonyms u-separated--dash" title="" data-product-id="3487203,3487204">

    <h4 class="product-title">
        Calabrisella
        
    </h4>

            <div class="product-description">mozzarella fiordilatte, funghi porcini, prosciutto crudo, scaglie di grana e origano</div>


            <div class="product-synonym" title="" data-product-id="3487203" data-product-type="Simple">
                <div class="product-synonym-name">
                    Normale
                </div>
                <div class="product-price u-noWrap">â¬ 7,50</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487203" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Calabrisella - Normale to Basket</span>
                </button>
            </div>
            <div class="product-synonym" title="" data-product-id="3487204" data-product-type="Simple">
                <div class="product-synonym-name">
                    Maxi
                </div>
                <div class="product-price u-noWrap">â¬ 15,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487204" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Calabrisella - Maxi to Basket</span>
                </button>
            </div>

    </div>
<div class="menu-product product has-synonyms u-separated--dash" title="" data-product-id="3487210,3487211">

    <h4 class="product-title">
        Messicana
        
    </h4>

            <div class="product-description">pomodoro, mozzarella fiordilatte, wurstel, patate 'mbacchiuse, maionese e ketchup</div>


            <div class="product-synonym" title="" data-product-id="3487210" data-product-type="Simple">
                <div class="product-synonym-name">
                    Normale
                </div>
                <div class="product-price u-noWrap">â¬ 6,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487210" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Messicana - Normale to Basket</span>
                </button>
            </div>
            <div class="product-synonym" title="" data-product-id="3487211" data-product-type="Simple">
                <div class="product-synonym-name">
                    Maxi
                </div>
                <div class="product-price u-noWrap">â¬ 12,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487211" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Messicana - Maxi to Basket</span>
                </button>
            </div>

    </div>
<div class="menu-product product has-synonyms u-separated--dash" title="" data-product-id="3487229,3487230">

    <h4 class="product-title">
        Curiosa
        
    </h4>

            <div class="product-description">mozzarella fiordilatte, salmone affumicato, zucchine, rucola e scaglie di grana</div>


            <div class="product-synonym" title="" data-product-id="3487229" data-product-type="Simple">
                <div class="product-synonym-name">
                    Normale
                </div>
                <div class="product-price u-noWrap">â¬ 6,50</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487229" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Curiosa - Normale to Basket</span>
                </button>
            </div>
            <div class="product-synonym" title="" data-product-id="3487230" data-product-type="Simple">
                <div class="product-synonym-name">
                    Maxi
                </div>
                <div class="product-price u-noWrap">â¬ 13,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487230" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Curiosa - Maxi to Basket</span>
                </button>
            </div>

    </div>
<div class="menu-product product has-synonyms u-separated--dash" title="" data-product-id="3487237,3487238">

    <h4 class="product-title">
        Raffinata
        
    </h4>

            <div class="product-description">mozzarella fiordilatte, zucchine, salame, mais, prosciutto crudo e scaglie di grana</div>


            <div class="product-synonym" title="" data-product-id="3487237" data-product-type="Simple">
                <div class="product-synonym-name">
                    Normale
                </div>
                <div class="product-price u-noWrap">â¬ 6,50</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487237" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Raffinata - Normale to Basket</span>
                </button>
            </div>
            <div class="product-synonym" title="" data-product-id="3487238" data-product-type="Simple">
                <div class="product-synonym-name">
                    Maxi
                </div>
                <div class="product-price u-noWrap">â¬ 13,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487238" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Raffinata - Maxi to Basket</span>
                </button>
            </div>

    </div>
<div class="menu-product product has-synonyms u-separated--dash" title="" data-product-id="3487240,3487241">

    <h4 class="product-title">
        Marco
        
    </h4>

            <div class="product-description">pomodoro, mozzarella fiordilatte, salame, pomodoro fresco, olive, rucola e scaglie di grana</div>


            <div class="product-synonym" title="" data-product-id="3487240" data-product-type="Simple">
                <div class="product-synonym-name">
                    Normale
                </div>
                <div class="product-price u-noWrap">â¬ 6,50</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487240" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Marco - Normale to Basket</span>
                </button>
            </div>
            <div class="product-synonym" title="" data-product-id="3487241" data-product-type="Simple">
                <div class="product-synonym-name">
                    Maxi
                </div>
                <div class="product-price u-noWrap">â¬ 13,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487241" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Marco - Maxi to Basket</span>
                </button>
            </div>

    </div>
<div class="menu-product product has-synonyms u-separated--dash" title="" data-product-id="3487242,3487243">

    <h4 class="product-title">
        Luigi
        
    </h4>

            <div class="product-description">pomodoro, mozzarella fiordilatte, funghi porcini, salame, rucola, prosciutto crudo e scaglie</div>


            <div class="product-synonym" title="" data-product-id="3487242" data-product-type="Simple">
                <div class="product-synonym-name">
                    Normale
                </div>
                <div class="product-price u-noWrap">â¬ 8,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487242" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Luigi - Normale to Basket</span>
                </button>
            </div>
            <div class="product-synonym" title="" data-product-id="3487243" data-product-type="Simple">
                <div class="product-synonym-name">
                    Maxi
                </div>
                <div class="product-price u-noWrap">â¬ 16,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487243" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Luigi - Maxi to Basket</span>
                </button>
            </div>

    </div>
<div class="menu-product product has-synonyms u-separated--dash" title="" data-product-id="3487248,3487249">

    <h4 class="product-title">
        Diavola
        
    </h4>

            <div class="product-description">pomodoro, mozzarella fiordilatte, salame, pepe, rosa marina e origano</div>


            <div class="product-synonym" title="" data-product-id="3487248" data-product-type="Simple">
                <div class="product-synonym-name">
                    Normale
                </div>
                <div class="product-price u-noWrap">â¬ 5,50</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487248" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Diavola - Normale to Basket</span>
                </button>
            </div>
            <div class="product-synonym" title="" data-product-id="3487249" data-product-type="Simple">
                <div class="product-synonym-name">
                    Maxi
                </div>
                <div class="product-price u-noWrap">â¬ 11,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487249" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Diavola - Maxi to Basket</span>
                </button>
            </div>

    </div>
<div class="menu-product product has-synonyms u-separated--dash" title="" data-product-id="3487253,3487254">

    <h4 class="product-title">
        Bomba
        
    </h4>

            <div class="product-description">pomodoro, mozzarella fiordilatte, gorgonzola, rosa marina e origano</div>


            <div class="product-synonym" title="" data-product-id="3487253" data-product-type="Simple">
                <div class="product-synonym-name">
                    Normale
                </div>
                <div class="product-price u-noWrap">â¬ 5,50</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487253" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Bomba - Normale to Basket</span>
                </button>
            </div>
            <div class="product-synonym" title="" data-product-id="3487254" data-product-type="Simple">
                <div class="product-synonym-name">
                    Maxi
                </div>
                <div class="product-price u-noWrap">â¬ 11,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487254" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Bomba - Maxi to Basket</span>
                </button>
            </div>

    </div>
<div class="menu-product product has-synonyms u-separated--dash" title="" data-product-id="3487261,3487262">

    <h4 class="product-title">
        Tonno e Cipolla
        
    </h4>

            <div class="product-description">pomodoro, mozzarella fiordilatte, tonno, cipolla e origano</div>


            <div class="product-synonym" title="" data-product-id="3487261" data-product-type="Simple">
                <div class="product-synonym-name">
                    Normale
                </div>
                <div class="product-price u-noWrap">â¬ 5,50</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487261" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Tonno e Cipolla - Normale to Basket</span>
                </button>
            </div>
            <div class="product-synonym" title="" data-product-id="3487262" data-product-type="Simple">
                <div class="product-synonym-name">
                    Maxi
                </div>
                <div class="product-price u-noWrap">â¬ 11,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487262" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Tonno e Cipolla - Maxi to Basket</span>
                </button>
            </div>

    </div>
<div class="menu-product product has-synonyms u-separated--dash" title="" data-product-id="3487266,3487267">

    <h4 class="product-title">
        Mediterranea
        
    </h4>

            <div class="product-description">pomodoro, mozzarella fiordilatte, prosciutto cotto, salame, funghi, cipolla e origano</div>


            <div class="product-synonym" title="" data-product-id="3487266" data-product-type="Simple">
                <div class="product-synonym-name">
                    Normale
                </div>
                <div class="product-price u-noWrap">â¬ 6,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487266" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Mediterranea - Normale to Basket</span>
                </button>
            </div>
            <div class="product-synonym" title="" data-product-id="3487267" data-product-type="Simple">
                <div class="product-synonym-name">
                    Maxi
                </div>
                <div class="product-price u-noWrap">â¬ 12,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487267" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Mediterranea - Maxi to Basket</span>
                </button>
            </div>

    </div>
<div class="menu-product product has-synonyms u-separated--dash" title="" data-product-id="3487268,3487269">

    <h4 class="product-title">
        Boscaiola
        
    </h4>

            <div class="product-description">pomodoro, mozzarella fiordilatte, pancetta, tonno, cipolla e origano</div>


            <div class="product-synonym" title="" data-product-id="3487268" data-product-type="Simple">
                <div class="product-synonym-name">
                    Normale
                </div>
                <div class="product-price u-noWrap">â¬ 6,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487268" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Boscaiola - Normale to Basket</span>
                </button>
            </div>
            <div class="product-synonym" title="" data-product-id="3487269" data-product-type="Simple">
                <div class="product-synonym-name">
                    Maxi
                </div>
                <div class="product-price u-noWrap">â¬ 12,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487269" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Boscaiola - Maxi to Basket</span>
                </button>
            </div>

    </div>
<div class="menu-product product has-synonyms u-separated--dash" title="" data-product-id="3487271,3487272">

    <h4 class="product-title">
        Fantasia
        
    </h4>

            <div class="product-description">mozzarella, pancetta, patate 'mbacchiuse e origano</div>


            <div class="product-synonym" title="" data-product-id="3487271" data-product-type="Simple">
                <div class="product-synonym-name">
                    Normale
                </div>
                <div class="product-price u-noWrap">â¬ 5,50</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487271" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Fantasia - Normale to Basket</span>
                </button>
            </div>
            <div class="product-synonym" title="" data-product-id="3487272" data-product-type="Simple">
                <div class="product-synonym-name">
                    Maxi
                </div>
                <div class="product-price u-noWrap">â¬ 11,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487272" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Fantasia - Maxi to Basket</span>
                </button>
            </div>

    </div>
<div class="menu-product product has-synonyms u-separated--dash" title="" data-product-id="3487276,3487277">

    <h4 class="product-title">
        Zuccosa
        
    </h4>

            <div class="product-description">crema di zucca, mozzarella fiordilatte, pancetta e pepe nero</div>


            <div class="product-synonym" title="" data-product-id="3487276" data-product-type="Simple">
                <div class="product-synonym-name">
                    Normale
                </div>
                <div class="product-price u-noWrap">â¬ 5,50</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487276" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Zuccosa - Normale to Basket</span>
                </button>
            </div>
            <div class="product-synonym" title="" data-product-id="3487277" data-product-type="Simple">
                <div class="product-synonym-name">
                    Maxi
                </div>
                <div class="product-price u-noWrap">â¬ 11,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487277" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Zuccosa - Maxi to Basket</span>
                </button>
            </div>

    </div>
<div class="menu-product product has-synonyms u-separated--dash" title="" data-product-id="3487282,3487283">

    <h4 class="product-title">
        Halloween
        
    </h4>

            <div class="product-description">crema di zucca, mozzarella fiordilatte, melanzane, scamorza e olive</div>


            <div class="product-synonym" title="" data-product-id="3487282" data-product-type="Simple">
                <div class="product-synonym-name">
                    Normale
                </div>
                <div class="product-price u-noWrap">â¬ 6,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487282" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Halloween - Normale to Basket</span>
                </button>
            </div>
            <div class="product-synonym" title="" data-product-id="3487283" data-product-type="Simple">
                <div class="product-synonym-name">
                    Maxi
                </div>
                <div class="product-price u-noWrap">â¬ 12,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487283" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Halloween - Maxi to Basket</span>
                </button>
            </div>

    </div>
<div class="menu-product product has-synonyms u-separated--dash" title="" data-product-id="3487287,3487288">

    <h4 class="product-title">
        Casareccia
        
    </h4>

            <div class="product-description">mozzarella fiordilatte, pomodoro fresco, patate 'mbacchiuse, pancetta, pepe e origano</div>


            <div class="product-synonym" title="" data-product-id="3487287" data-product-type="Simple">
                <div class="product-synonym-name">
                    Normale
                </div>
                <div class="product-price u-noWrap">â¬ 6,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487287" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Casareccia - Normale to Basket</span>
                </button>
            </div>
            <div class="product-synonym" title="" data-product-id="3487288" data-product-type="Simple">
                <div class="product-synonym-name">
                    Maxi
                </div>
                <div class="product-price u-noWrap">â¬ 12,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487288" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Casareccia - Maxi to Basket</span>
                </button>
            </div>

    </div>

                    </div>
                </section>
                <section class="menuCard-category accordion accordion--ruled is-open" data-category-id="41913" data-test-id="Focacce">

                    <h3 id="cat1" class="menuCard-category-title gamma accordion-header icon">

                        Focacce


                    </h3>
                    <div class="accordion-content">

                        


<div class="menu-product product has-synonyms u-separated--dash" title="" data-product-id="3486946,3486947">

    <h4 class="product-title">
        Focaccia
        
    </h4>

            <div class="product-description">olio e origano</div>


            <div class="product-synonym" title="" data-product-id="3486946" data-product-type="Simple">
                <div class="product-synonym-name">
                    Normale
                </div>
                <div class="product-price u-noWrap">â¬ 2,50</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3486946" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Focaccia - Normale to Basket</span>
                </button>
            </div>
            <div class="product-synonym" title="" data-product-id="3486947" data-product-type="Simple">
                <div class="product-synonym-name">
                    Maxi
                </div>
                <div class="product-price u-noWrap">â¬ 5,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3486947" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Focaccia - Maxi to Basket</span>
                </button>
            </div>

    </div>

                    </div>
                </section>
                <section class="menuCard-category accordion accordion--ruled is-open" data-category-id="33987" data-test-id="Panini">

                    <h3 id="cat2" class="menuCard-category-title gamma accordion-header icon">

                        Panini


                    </h3>
                    <div class="accordion-content">

                        


<div class="menu-product product u-separated--dash" title="" data-product-id="3486865">

    <h4 class="product-title">
        Panino Silano
        
    </h4>

            <div class="product-description">mozzarella fiordilatte, patate 'mbacchiuse, cipolla, salame, olio e origano</div>


        <div class="product-price u-noWrap">â¬ 4,00</div>
        <button class="btn btn--primary btn--roundedIcon btn-addproduct" data-gtm="menu|click - add to cart|3486865" data-test-istempoffline="False">
            <div class="icon--plus--white"></div>
            <span class="is-visuallyHidden">Add Panino Silano to Basket</span>
        </button>

    </div>
<div class="menu-product product u-separated--dash" title="" data-product-id="3486870">

    <h4 class="product-title">
        Panino Unico
        
    </h4>

            <div class="product-description">mozzarella fiordilatte, patate 'mbacchiuse, cipolla, peperoni, olio e origano</div>


        <div class="product-price u-noWrap">â¬ 4,00</div>
        <button class="btn btn--primary btn--roundedIcon btn-addproduct" data-gtm="menu|click - add to cart|3486870" data-test-istempoffline="False">
            <div class="icon--plus--white"></div>
            <span class="is-visuallyHidden">Add Panino Unico to Basket</span>
        </button>

    </div>
<div class="menu-product product u-separated--dash" title="" data-product-id="3486883">

    <h4 class="product-title">
        Panino Casereccio
        
    </h4>

            <div class="product-description">mozzarella fiordilatte, pomodoro Pachino, pancetta, patate 'mbacchiuse, pepe, olio e origano</div>


        <div class="product-price u-noWrap">â¬ 4,50</div>
        <button class="btn btn--primary btn--roundedIcon btn-addproduct" data-gtm="menu|click - add to cart|3486883" data-test-istempoffline="False">
            <div class="icon--plus--white"></div>
            <span class="is-visuallyHidden">Add Panino Casereccio to Basket</span>
        </button>

    </div>
<div class="menu-product product u-separated--dash" title="" data-product-id="3486897">

    <h4 class="product-title">
        Panino Mitico
        
    </h4>

            <div class="product-description">mozzarella fiordilatte, tonno, cipolla, patate 'mbacchiuse, olio e origano</div>


        <div class="product-price u-noWrap">â¬ 4,00</div>
        <button class="btn btn--primary btn--roundedIcon btn-addproduct" data-gtm="menu|click - add to cart|3486897" data-test-istempoffline="False">
            <div class="icon--plus--white"></div>
            <span class="is-visuallyHidden">Add Panino Mitico to Basket</span>
        </button>

    </div>
<div class="menu-product product u-separated--dash" title="" data-product-id="3486919">

    <h4 class="product-title">
        Panino Calabrese
        
    </h4>

            <div class="product-description">mozzarella fiordilatte, patate 'mbacchiuse, pancetta, olio e origano</div>


        <div class="product-price u-noWrap">â¬ 4,00</div>
        <button class="btn btn--primary btn--roundedIcon btn-addproduct" data-gtm="menu|click - add to cart|3486919" data-test-istempoffline="False">
            <div class="icon--plus--white"></div>
            <span class="is-visuallyHidden">Add Panino Calabrese to Basket</span>
        </button>

    </div>
<div class="menu-product product u-separated--dash" title="" data-product-id="3486921">

    <h4 class="product-title">
        Panino Delizioso
        
    </h4>

            <div class="product-description">mozzarella fiordilatte, prosciutto crudo, olio e origano</div>


        <div class="product-price u-noWrap">â¬ 4,00</div>
        <button class="btn btn--primary btn--roundedIcon btn-addproduct" data-gtm="menu|click - add to cart|3486921" data-test-istempoffline="False">
            <div class="icon--plus--white"></div>
            <span class="is-visuallyHidden">Add Panino Delizioso to Basket</span>
        </button>

    </div>
<div class="menu-product product u-separated--dash" title="" data-product-id="3486929">

    <h4 class="product-title">
        Panino Messicano
        
    </h4>

            <div class="product-description">mozzarella fiordilatte, patate 'mbacchiuse, wurstel, ketchup, maionese e olio</div>


        <div class="product-price u-noWrap">â¬ 4,00</div>
        <button class="btn btn--primary btn--roundedIcon btn-addproduct" data-gtm="menu|click - add to cart|3486929" data-test-istempoffline="False">
            <div class="icon--plus--white"></div>
            <span class="is-visuallyHidden">Add Panino Messicano to Basket</span>
        </button>

    </div>
<div class="menu-product product u-separated--dash" title="" data-product-id="3486934">

    <h4 class="product-title">
        Panino Saporito
        
    </h4>

            <div class="product-description">mozzarella fiordilatte, pomodoro Pachino, salame, scamorza, olio e origano</div>


        <div class="product-price u-noWrap">â¬ 4,50</div>
        <button class="btn btn--primary btn--roundedIcon btn-addproduct" data-gtm="menu|click - add to cart|3486934" data-test-istempoffline="False">
            <div class="icon--plus--white"></div>
            <span class="is-visuallyHidden">Add Panino Saporito to Basket</span>
        </button>

    </div>
<div class="menu-product product u-separated--dash" title="" data-product-id="3486936">

    <h4 class="product-title">
        Panino Boscaiolo
        
    </h4>

            <div class="product-description">mozzarella fiordilatte, pancetta, tonno, cipolla, olio e origano</div>


        <div class="product-price u-noWrap">â¬ 4,00</div>
        <button class="btn btn--primary btn--roundedIcon btn-addproduct" data-gtm="menu|click - add to cart|3486936" data-test-istempoffline="False">
            <div class="icon--plus--white"></div>
            <span class="is-visuallyHidden">Add Panino Boscaiolo to Basket</span>
        </button>

    </div>
<div class="menu-product product u-separated--dash" title="" data-product-id="3486939">

    <h4 class="product-title">
        Panino Sprint Freddo
        
    </h4>

            <div class="product-description">pomodoro Pachino,&nbsp;mozzarella fiordilatte, prosciutto cotto, tonno e maionese</div>


        <div class="product-price u-noWrap">â¬ 4,50</div>
        <button class="btn btn--primary btn--roundedIcon btn-addproduct" data-gtm="menu|click - add to cart|3486939" data-test-istempoffline="False">
            <div class="icon--plus--white"></div>
            <span class="is-visuallyHidden">Add Panino Sprint Freddo to Basket</span>
        </button>

    </div>

                    </div>
                </section>
                <section class="menuCard-category accordion accordion--ruled is-open" data-category-id="40965" data-test-id="Fresine">

                    <h3 id="cat3" class="menuCard-category-title gamma accordion-header icon">

                        Fresine


                    </h3>
                    <div class="accordion-content">

                        


<div class="menu-product product u-separated--dash" title="" data-product-id="3487556">

    <h4 class="product-title">
        Fresina alle Acciughe
        
    </h4>

            <div class="product-description">acciughe, olio, origano e aceto</div>


        <div class="product-price u-noWrap">â¬ 3,00</div>
        <button class="btn btn--primary btn--roundedIcon btn-addproduct" data-gtm="menu|click - add to cart|3487556" data-test-istempoffline="False">
            <div class="icon--plus--white"></div>
            <span class="is-visuallyHidden">Add Fresina alle Acciughe to Basket</span>
        </button>

    </div>
<div class="menu-product product u-separated--dash" title="" data-product-id="3487559">

    <h4 class="product-title">
        Fresina al Forno
        
    </h4>

            <div class="product-description">pomodoro, mozzarella fiordilatte, salame, sottolii, olio e origano</div>


        <div class="product-price u-noWrap">â¬ 3,50</div>
        <button class="btn btn--primary btn--roundedIcon btn-addproduct" data-gtm="menu|click - add to cart|3487559" data-test-istempoffline="False">
            <div class="icon--plus--white"></div>
            <span class="is-visuallyHidden">Add Fresina al Forno to Basket</span>
        </button>

    </div>
<div class="menu-product product u-separated--dash" title="" data-product-id="3487560">

    <h4 class="product-title">
        Fresina alla 'Nduja
        
    </h4>

            <div class="product-description">pomodoro, mozzarella fiordilatte, salame, 'nduja, olio e origano</div>


        <div class="product-price u-noWrap">â¬ 3,50</div>
        <button class="btn btn--primary btn--roundedIcon btn-addproduct" data-gtm="menu|click - add to cart|3487560" data-test-istempoffline="False">
            <div class="icon--plus--white"></div>
            <span class="is-visuallyHidden">Add Fresina alla 'Nduja to Basket</span>
        </button>

    </div>
<div class="menu-product product u-separated--dash" title="" data-product-id="3487563">

    <h4 class="product-title">
        Fresina al Salame
        
    </h4>

            <div class="product-description">pomodoro, mozzarella fiordilatte, salame, olio e origano</div>


        <div class="product-price u-noWrap">â¬ 3,00</div>
        <button class="btn btn--primary btn--roundedIcon btn-addproduct" data-gtm="menu|click - add to cart|3487563" data-test-istempoffline="False">
            <div class="icon--plus--white"></div>
            <span class="is-visuallyHidden">Add Fresina al Salame to Basket</span>
        </button>

    </div>
<div class="menu-product product u-separated--dash" title="" data-product-id="3487566">

    <h4 class="product-title">
        Fresina Special
        
    </h4>

            <div class="product-description">pomodoro, mozzarella fiordilatte, rucola, scaglie di Parmigiano Reggiano e prosciutto crudo di Parma</div>


        <div class="product-price u-noWrap">â¬ 4,00</div>
        <button class="btn btn--primary btn--roundedIcon btn-addproduct" data-gtm="menu|click - add to cart|3487566" data-test-istempoffline="False">
            <div class="icon--plus--white"></div>
            <span class="is-visuallyHidden">Add Fresina Special to Basket</span>
        </button>

    </div>

                    </div>
                </section>
                <section class="menuCard-category accordion accordion--ruled is-open" data-category-id="31827" data-test-id="Fritti">

                    <h3 id="cat4" class="menuCard-category-title gamma accordion-header icon">

                        Fritti


                    </h3>
                    <div class="accordion-content">

                        


<div class="menu-product product u-separated--dash" title="" data-product-id="3532482">

    <h4 class="product-title">
        Patatine Fritte
        
    </h4>



        <div class="product-price u-noWrap">â¬ 2,50</div>
        <button class="btn btn--primary btn--roundedIcon btn-addproduct" data-gtm="menu|click - add to cart|3532482" data-test-istempoffline="False">
            <div class="icon--plus--white"></div>
            <span class="is-visuallyHidden">Add Patatine Fritte to Basket</span>
        </button>

    </div>
<div class="menu-product product u-separated--dash" title="" data-product-id="3532484">

    <h4 class="product-title">
        Patatine Rotonde
        
    </h4>



        <div class="product-price u-noWrap">â¬ 3,00</div>
        <button class="btn btn--primary btn--roundedIcon btn-addproduct" data-gtm="menu|click - add to cart|3532484" data-test-istempoffline="False">
            <div class="icon--plus--white"></div>
            <span class="is-visuallyHidden">Add Patatine Rotonde to Basket</span>
        </button>

    </div>
<div class="menu-product product u-separated--dash" title="" data-product-id="3532485">

    <h4 class="product-title">
        Patatine Dippers
        
    </h4>



        <div class="product-price u-noWrap">â¬ 3,50</div>
        <button class="btn btn--primary btn--roundedIcon btn-addproduct" data-gtm="menu|click - add to cart|3532485" data-test-istempoffline="False">
            <div class="icon--plus--white"></div>
            <span class="is-visuallyHidden">Add Patatine Dippers to Basket</span>
        </button>

    </div>
<div class="menu-product product u-separated--dash" title="" data-product-id="3532488">

    <h4 class="product-title">
        Patatine Rotonde al Cacio e Pepe
        
    </h4>



        <div class="product-price u-noWrap">â¬ 4,00</div>
        <button class="btn btn--primary btn--roundedIcon btn-addproduct" data-gtm="menu|click - add to cart|3532488" data-test-istempoffline="False">
            <div class="icon--plus--white"></div>
            <span class="is-visuallyHidden">Add Patatine Rotonde al Cacio e Pepe to Basket</span>
        </button>

    </div>
<div class="menu-product product u-separated--dash" title="" data-product-id="3532490">

    <h4 class="product-title">
        Nuggets
        
    </h4>

            <div class="product-description">5 pezzi</div>


        <div class="product-price u-noWrap">â¬ 3,00</div>
        <button class="btn btn--primary btn--roundedIcon btn-addproduct" data-gtm="menu|click - add to cart|3532490" data-test-istempoffline="False">
            <div class="icon--plus--white"></div>
            <span class="is-visuallyHidden">Add Nuggets to Basket</span>
        </button>

    </div>
<div class="menu-product product u-separated--dash" title="" data-product-id="3532491">

    <h4 class="product-title">
        CrocchÃ¨ di Patate
        
    </h4>

            <div class="product-description">5 pezzi</div>


        <div class="product-price u-noWrap">â¬ 3,00</div>
        <button class="btn btn--primary btn--roundedIcon btn-addproduct" data-gtm="menu|click - add to cart|3532491" data-test-istempoffline="False">
            <div class="icon--plus--white"></div>
            <span class="is-visuallyHidden">Add CrocchÃ¨ di Patate to Basket</span>
        </button>

    </div>
<div class="menu-product product u-separated--dash" title="" data-product-id="3532494">

    <h4 class="product-title">
        Mozzarelle Stick
        
    </h4>

            <div class="product-description">5 pezzi</div>


        <div class="product-price u-noWrap">â¬ 3,00</div>
        <button class="btn btn--primary btn--roundedIcon btn-addproduct" data-gtm="menu|click - add to cart|3532494" data-test-istempoffline="False">
            <div class="icon--plus--white"></div>
            <span class="is-visuallyHidden">Add Mozzarelle Stick to Basket</span>
        </button>

    </div>

                    </div>
                </section>
                <section class="menuCard-category accordion accordion--ruled is-open" data-category-id="25727" data-test-id="Dolci">

                    <h3 id="cat5" class="menuCard-category-title gamma accordion-header icon">

                        Dolci


                    </h3>
                    <div class="accordion-content">

                        


<div class="menu-product product has-synonyms u-separated--dash" title="" data-product-id="3487292,3487293">

    <h4 class="product-title">
        Pizza con Nutella
        
    </h4>

            <div class="product-description">nutella</div>


            <div class="product-synonym" title="" data-product-id="3487292" data-product-type="Simple">
                <div class="product-synonym-name">
                    Normale
                </div>
                <div class="product-price u-noWrap">â¬ 5,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487292" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Pizza con Nutella - Normale to Basket</span>
                </button>
            </div>
            <div class="product-synonym" title="" data-product-id="3487293" data-product-type="Simple">
                <div class="product-synonym-name">
                    Maxi
                </div>
                <div class="product-price u-noWrap">â¬ 10,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487293" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Pizza con Nutella - Maxi to Basket</span>
                </button>
            </div>

    </div>
<div class="menu-product product has-synonyms u-separated--dash" title="" data-product-id="3487300,3487301">

    <h4 class="product-title">
        Bounty
        
    </h4>

            <div class="product-description">nutella e cocco</div>


            <div class="product-synonym" title="" data-product-id="3487300" data-product-type="Simple">
                <div class="product-synonym-name">
                    Normale
                </div>
                <div class="product-price u-noWrap">â¬ 5,50</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487300" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Bounty - Normale to Basket</span>
                </button>
            </div>
            <div class="product-synonym" title="" data-product-id="3487301" data-product-type="Simple">
                <div class="product-synonym-name">
                    Maxi
                </div>
                <div class="product-price u-noWrap">â¬ 11,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487301" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Bounty - Maxi to Basket</span>
                </button>
            </div>

    </div>

                    </div>
                </section>
                <section class="menuCard-category accordion accordion--ruled is-open" data-category-id="37152" data-test-id="Bevande">

                    <h3 id="cat6" class="menuCard-category-title gamma accordion-header icon">

                        Bevande


                    </h3>
                    <div class="accordion-content">

                        


<div class="menu-product product has-synonyms u-separated--dash" title="" data-product-id="3487320,3487321">

    <h4 class="product-title">
        Acqua Naturale
        
    </h4>



            <div class="product-synonym" title="" data-product-id="3487320" data-product-type="Simple">
                <div class="product-synonym-name">
                    50cl
                </div>
                <div class="product-price u-noWrap">â¬ 1,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487320" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Acqua Naturale - 50cl to Basket</span>
                </button>
            </div>
            <div class="product-synonym" title="" data-product-id="3487321" data-product-type="Simple">
                <div class="product-synonym-name">
                    1L
                </div>
                <div class="product-price u-noWrap">â¬ 2,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487321" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Acqua Naturale - 1L to Basket</span>
                </button>
            </div>

    </div>
<div class="menu-product product has-synonyms u-separated--dash" title="" data-product-id="3487327,3487328">

    <h4 class="product-title">
        Acqua Ferrarelle
        
    </h4>



            <div class="product-synonym" title="" data-product-id="3487327" data-product-type="Simple">
                <div class="product-synonym-name">
                    50cl
                </div>
                <div class="product-price u-noWrap">â¬ 1,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487327" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Acqua Ferrarelle - 50cl to Basket</span>
                </button>
            </div>
            <div class="product-synonym" title="" data-product-id="3487328" data-product-type="Simple">
                <div class="product-synonym-name">
                    1L
                </div>
                <div class="product-price u-noWrap">â¬ 2,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487328" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Acqua Ferrarelle - 1L to Basket</span>
                </button>
            </div>

    </div>
<div class="menu-product product u-separated--dash" title="" data-product-id="3487331">

    <h4 class="product-title">
        Acqua Frizzante
        
    </h4>

            <div class="product-description">50cl</div>


        <div class="product-price u-noWrap">â¬ 1,00</div>
        <button class="btn btn--primary btn--roundedIcon btn-addproduct" data-gtm="menu|click - add to cart|3487331" data-test-istempoffline="False">
            <div class="icon--plus--white"></div>
            <span class="is-visuallyHidden">Add Acqua Frizzante to Basket</span>
        </button>

    </div>
<div class="menu-product product has-synonyms u-separated--dash" title="" data-product-id="3487356,3487357,3487358,3487359">

    <h4 class="product-title">
        Bibita in Lattina 33cl
        
    </h4>



            <div class="product-synonym" title="" data-product-id="3487356" data-product-type="Simple">
                <div class="product-synonym-name">
                    Coca Cola
                </div>
                <div class="product-price u-noWrap">â¬ 2,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487356" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Bibita in Lattina 33cl - Coca Cola to Basket</span>
                </button>
            </div>
            <div class="product-synonym" title="" data-product-id="3487357" data-product-type="Simple">
                <div class="product-synonym-name">
                    Coca Cola Zero
                </div>
                <div class="product-price u-noWrap">â¬ 2,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487357" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Bibita in Lattina 33cl - Coca Cola Zero to Basket</span>
                </button>
            </div>
            <div class="product-synonym" title="" data-product-id="3487358" data-product-type="Simple">
                <div class="product-synonym-name">
                    Fanta
                </div>
                <div class="product-price u-noWrap">â¬ 2,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487358" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Bibita in Lattina 33cl - Fanta to Basket</span>
                </button>
            </div>
            <div class="product-synonym" title="" data-product-id="3487359" data-product-type="Simple">
                <div class="product-synonym-name">
                    Sprite
                </div>
                <div class="product-price u-noWrap">â¬ 2,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487359" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Bibita in Lattina 33cl - Sprite to Basket</span>
                </button>
            </div>

    </div>
<div class="menu-product product has-synonyms u-separated--dash" title="" data-product-id="3487364,3487365,3487366">

    <h4 class="product-title">
        Bibita in Vetro 33cl
        
    </h4>



            <div class="product-synonym" title="" data-product-id="3487364" data-product-type="Simple">
                <div class="product-synonym-name">
                    Coca Cola
                </div>
                <div class="product-price u-noWrap">â¬ 2,50</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487364" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Bibita in Vetro 33cl - Coca Cola to Basket</span>
                </button>
            </div>
            <div class="product-synonym" title="" data-product-id="3487365" data-product-type="Simple">
                <div class="product-synonym-name">
                    Coca Cola Zero
                </div>
                <div class="product-price u-noWrap">â¬ 2,50</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487365" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Bibita in Vetro 33cl - Coca Cola Zero to Basket</span>
                </button>
            </div>
            <div class="product-synonym" title="" data-product-id="3487366" data-product-type="Simple">
                <div class="product-synonym-name">
                    Fanta
                </div>
                <div class="product-price u-noWrap">â¬ 2,50</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487366" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Bibita in Vetro 33cl - Fanta to Basket</span>
                </button>
            </div>

    </div>
<div class="menu-product product has-synonyms u-separated--dash" title="" data-product-id="3487404,3487405,3487406">

    <h4 class="product-title">
        Bibita in Bottiglia 1,5L
        
    </h4>



            <div class="product-synonym" title="" data-product-id="3487404" data-product-type="Simple">
                <div class="product-synonym-name">
                    Coca Cola
                </div>
                <div class="product-price u-noWrap">â¬ 4,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487404" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Bibita in Bottiglia 1,5L - Coca Cola to Basket</span>
                </button>
            </div>
            <div class="product-synonym" title="" data-product-id="3487405" data-product-type="Simple">
                <div class="product-synonym-name">
                    Coca Cola Zero
                </div>
                <div class="product-price u-noWrap">â¬ 4,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487405" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Bibita in Bottiglia 1,5L - Coca Cola Zero to Basket</span>
                </button>
            </div>
            <div class="product-synonym" title="" data-product-id="3487406" data-product-type="Simple">
                <div class="product-synonym-name">
                    Fanta
                </div>
                <div class="product-price u-noWrap">â¬ 4,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487406" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Bibita in Bottiglia 1,5L - Fanta to Basket</span>
                </button>
            </div>

    </div>
<div class="menu-product product has-synonyms u-separated--dash" title="" data-product-id="3487418,3487419,3532447">

    <h4 class="product-title">
        Bibita
        
    </h4>



            <div class="product-synonym" title="" data-product-id="3487418" data-product-type="Simple">
                <div class="product-synonym-name">
                    EstathÃ¨ alla Pesca
                </div>
                <div class="product-price u-noWrap">â¬ 2,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487418" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Bibita - EstathÃ¨ alla Pesca to Basket</span>
                </button>
            </div>
            <div class="product-synonym" title="" data-product-id="3487419" data-product-type="Simple">
                <div class="product-synonym-name">
                    EstathÃ¨ al Limone
                </div>
                <div class="product-price u-noWrap">â¬ 2,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487419" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Bibita - EstathÃ¨ al Limone to Basket</span>
                </button>
            </div>
            <div class="product-synonym" title="" data-product-id="3532447" data-product-type="Simple">
                <div class="product-synonym-name">
                    Moka Drink
                </div>
                <div class="product-price u-noWrap">â¬ 1,50</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3532447" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Bibita - Moka Drink to Basket</span>
                </button>
            </div>

    </div>

                    </div>
                </section>
                <section class="menuCard-category accordion accordion--ruled is-open" data-category-id="30883" data-test-id="Birre">

                    <h3 id="cat7" class="menuCard-category-title gamma accordion-header icon">

                        Birre


                    </h3>
                    <div class="accordion-content">

                        


<div class="menu-product product has-synonyms u-separated--dash" title="" data-product-id="3487440,3487441,3487442,3532452,3532453,3532454">

    <h4 class="product-title">
        Birra 33cl
        
    </h4>



            <div class="product-synonym" title="" data-product-id="3487440" data-product-type="Simple">
                <div class="product-synonym-name">
                    Nastro Azzurro
                </div>
                <div class="product-price u-noWrap">â¬ 2,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487440" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Birra 33cl - Nastro Azzurro to Basket</span>
                </button>
            </div>
            <div class="product-synonym" title="" data-product-id="3487441" data-product-type="Simple">
                <div class="product-synonym-name">
                    Heineken
                </div>
                <div class="product-price u-noWrap">â¬ 2,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487441" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Birra 33cl - Heineken to Basket</span>
                </button>
            </div>
            <div class="product-synonym" title="" data-product-id="3487442" data-product-type="Simple">
                <div class="product-synonym-name">
                    Beck's
                </div>
                <div class="product-price u-noWrap">â¬ 2,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487442" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Birra 33cl - Beck's to Basket</span>
                </button>
            </div>
            <div class="product-synonym" title="" data-product-id="3532452" data-product-type="Simple">
                <div class="product-synonym-name">
                    Dreher Lemon
                </div>
                <div class="product-price u-noWrap">â¬ 2,50</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3532452" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Birra 33cl - Dreher Lemon to Basket</span>
                </button>
            </div>
            <div class="product-synonym" title="" data-product-id="3532453" data-product-type="Simple">
                <div class="product-synonym-name">
                    Tourtel Analcolica
                </div>
                <div class="product-price u-noWrap">â¬ 2,50</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3532453" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Birra 33cl - Tourtel Analcolica to Basket</span>
                </button>
            </div>
            <div class="product-synonym" title="" data-product-id="3532454" data-product-type="Simple">
                <div class="product-synonym-name">
                    Poretti 3 Luppoli
                </div>
                <div class="product-price u-noWrap">â¬ 1,50</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3532454" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Birra 33cl - Poretti 3 Luppoli to Basket</span>
                </button>
            </div>

    </div>
<div class="menu-product product has-synonyms u-separated--dash" title="" data-product-id="3487539,3487540,3487541,3487542">

    <h4 class="product-title">
        Birra 50cl
        
    </h4>



            <div class="product-synonym" title="" data-product-id="3487539" data-product-type="Simple">
                <div class="product-synonym-name">
                    Peroni Gran Riserva Rossa
                </div>
                <div class="product-price u-noWrap">â¬ 5,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487539" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Birra 50cl - Peroni Gran Riserva Rossa to Basket</span>
                </button>
            </div>
            <div class="product-synonym" title="" data-product-id="3487540" data-product-type="Simple">
                <div class="product-synonym-name">
                    Peroni Gran Riserva Doppio Malto
                </div>
                <div class="product-price u-noWrap">â¬ 5,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487540" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Birra 50cl - Peroni Gran Riserva Doppio Malto to Basket</span>
                </button>
            </div>
            <div class="product-synonym" title="" data-product-id="3487541" data-product-type="Simple">
                <div class="product-synonym-name">
                    Peroni Gran Riserva Puro Malto
                </div>
                <div class="product-price u-noWrap">â¬ 5,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487541" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Birra 50cl - Peroni Gran Riserva Puro Malto to Basket</span>
                </button>
            </div>
            <div class="product-synonym" title="" data-product-id="3487542" data-product-type="Simple">
                <div class="product-synonym-name">
                    Peroni Gran Riserva Bianca Weiss
                </div>
                <div class="product-price u-noWrap">â¬ 5,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487542" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Birra 50cl - Peroni Gran Riserva Bianca Weiss to Basket</span>
                </button>
            </div>

    </div>
<div class="menu-product product has-synonyms u-separated--dash" title="" data-product-id="3487446,3487447,3532471,3532472,3532473,3532474">

    <h4 class="product-title">
        Birra 66cl
        
    </h4>



            <div class="product-synonym" title="" data-product-id="3487446" data-product-type="Simple">
                <div class="product-synonym-name">
                    Nastro Azzurro
                </div>
                <div class="product-price u-noWrap">â¬ 4,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487446" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Birra 66cl - Nastro Azzurro to Basket</span>
                </button>
            </div>
            <div class="product-synonym" title="" data-product-id="3487447" data-product-type="Simple">
                <div class="product-synonym-name">
                    Heineken
                </div>
                <div class="product-price u-noWrap">â¬ 4,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487447" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Birra 66cl - Heineken to Basket</span>
                </button>
            </div>
            <div class="product-synonym" title="" data-product-id="3532471" data-product-type="Simple">
                <div class="product-synonym-name">
                    Poretti 3 Luppoli
                </div>
                <div class="product-price u-noWrap">â¬ 3,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3532471" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Birra 66cl - Poretti 3 Luppoli to Basket</span>
                </button>
            </div>
            <div class="product-synonym" title="" data-product-id="3532472" data-product-type="Simple">
                <div class="product-synonym-name">
                    Baffo d'Oro
                </div>
                <div class="product-price u-noWrap">â¬ 3,50</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3532472" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Birra 66cl - Baffo d'Oro to Basket</span>
                </button>
            </div>
            <div class="product-synonym" title="" data-product-id="3532473" data-product-type="Simple">
                <div class="product-synonym-name">
                    Tuborg
                </div>
                <div class="product-price u-noWrap">â¬ 3,50</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3532473" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Birra 66cl - Tuborg to Basket</span>
                </button>
            </div>
            <div class="product-synonym" title="" data-product-id="3532474" data-product-type="Simple">
                <div class="product-synonym-name">
                    Moretti
                </div>
                <div class="product-price u-noWrap">â¬ 3,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3532474" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Birra 66cl - Moretti to Basket</span>
                </button>
            </div>

    </div>
<div class="menu-product product has-synonyms u-separated--dash" title="" data-product-id="3487485,3487486,3487487,3487488,3487489,3487490,3487491,3487492,3487493,3487494,3487495,3487519,3532477">

    <h4 class="product-title">
        Birra
        
    </h4>



            <div class="product-synonym" title="" data-product-id="3487485" data-product-type="Simple">
                <div class="product-synonym-name">
                    Bud
                </div>
                <div class="product-price u-noWrap">â¬ 2,50</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487485" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Birra - Bud to Basket</span>
                </button>
            </div>
            <div class="product-synonym" title="" data-product-id="3487486" data-product-type="Simple">
                <div class="product-synonym-name">
                    Carlsberg
                </div>
                <div class="product-price u-noWrap">â¬ 2,50</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487486" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Birra - Carlsberg to Basket</span>
                </button>
            </div>
            <div class="product-synonym" title="" data-product-id="3487487" data-product-type="Simple">
                <div class="product-synonym-name">
                    Peroni Cruda
                </div>
                <div class="product-price u-noWrap">â¬ 2,50</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487487" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Birra - Peroni Cruda to Basket</span>
                </button>
            </div>
            <div class="product-synonym" title="" data-product-id="3487488" data-product-type="Simple">
                <div class="product-synonym-name">
                    Nastro Azzurro Premium
                </div>
                <div class="product-price u-noWrap">â¬ 3,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487488" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Birra - Nastro Azzurro Premium to Basket</span>
                </button>
            </div>
            <div class="product-synonym" title="" data-product-id="3487489" data-product-type="Simple">
                <div class="product-synonym-name">
                    Bjorne Beer
                </div>
                <div class="product-price u-noWrap">â¬ 3,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487489" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Birra - Bjorne Beer to Basket</span>
                </button>
            </div>
            <div class="product-synonym" title="" data-product-id="3487490" data-product-type="Simple">
                <div class="product-synonym-name">
                    Tennent's
                </div>
                <div class="product-price u-noWrap">â¬ 3,50</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487490" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Birra - Tennent's to Basket</span>
                </button>
            </div>
            <div class="product-synonym" title="" data-product-id="3487491" data-product-type="Simple">
                <div class="product-synonym-name">
                    Ceres
                </div>
                <div class="product-price u-noWrap">â¬ 3,50</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487491" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Birra - Ceres to Basket</span>
                </button>
            </div>
            <div class="product-synonym" title="" data-product-id="3487492" data-product-type="Simple">
                <div class="product-synonym-name">
                    Ichnusa Non Filtrata
                </div>
                <div class="product-price u-noWrap">â¬ 2,50</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487492" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Birra - Ichnusa Non Filtrata to Basket</span>
                </button>
            </div>
            <div class="product-synonym" title="" data-product-id="3487493" data-product-type="Simple">
                <div class="product-synonym-name">
                    Ichnusa
                </div>
                <div class="product-price u-noWrap">â¬ 2,50</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487493" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Birra - Ichnusa to Basket</span>
                </button>
            </div>
            <div class="product-synonym" title="" data-product-id="3487494" data-product-type="Simple">
                <div class="product-synonym-name">
                    Franziskaner
                </div>
                <div class="product-price u-noWrap">â¬ 4,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487494" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Birra - Franziskaner to Basket</span>
                </button>
            </div>
            <div class="product-synonym" title="" data-product-id="3487495" data-product-type="Simple">
                <div class="product-synonym-name">
                    Paulaner Blonde
                </div>
                <div class="product-price u-noWrap">â¬ 3,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487495" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Birra - Paulaner Blonde to Basket</span>
                </button>
            </div>
            <div class="product-synonym" title="" data-product-id="3487519" data-product-type="Simple">
                <div class="product-synonym-name">
                    Paulaner Weiss
                </div>
                <div class="product-price u-noWrap">â¬ 4,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3487519" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Birra - Paulaner Weiss to Basket</span>
                </button>
            </div>
            <div class="product-synonym" title="" data-product-id="3532477" data-product-type="Simple">
                <div class="product-synonym-name">
                    Corona
                </div>
                <div class="product-price u-noWrap">â¬ 4,00</div>
                <button class="btn btn--primary btn--roundedIcon btn-addproduct " data-gtm="menu|click - add to cart|3532477" data-test-istempoffline="False">
                    <div class="icon--plus--white"></div>
                    <span class="is-visuallyHidden">Add Birra - Corona to Basket</span>
                </button>
            </div>

    </div>

                    </div>
                </section>

</div>

</div>


</div>
                        </div>
                    </div>
                </div>

                    <div class="g-col g-span3 g-holdWidth u-showAboveWide">
                        <div data-js-menu-stickyel="" class="" style=""> <!--wrapper for sticky kit to work with flex child -->
                            

<article data-basket="" class="infoBox infoBox--noSpacing u--noOutline l-pageContent" data-basket-servicetype="delivery" data-basket-menutype="evening" data-megamodal-dynamic-attacher="">
    <header class="infoBox-header infoBox-header--medium infoBox-icon infoBox-icon--basket">
        <h3 class="infoBox-title title--alternate">Totale ordine</h3>
        <h3 data-baskettotal="" class="infoBox-header-info">â¬ 0,00</h3>
    </header>
    <div class="card card--rounded card--medium card--tab">
<form action="/restaurants/menu/75046/checkout/?isCollection=False" id="basket-checkout" method="post" novalidate="novalidate">            <input type="hidden" name="noteToRestaurant" id="basket-notetorestarant">
<div data-basket-checkoutmessage="" class="u-separatedSpace u-separatedSpace--small u-textCenter" data-test-id="basket-message"><strong>â¬ 5,00</strong> per raggiungere il minimo d'ordine</div>
<div data-basket-checkout-infobox="" data-gtm="menu|click - go to checkout|disabled" class="infoBox-content infoBox-content--small">
    <a data-basket-checkoutbtn="" data-basket-checkoutprogressbtn="" class="btn btn--block btn--disabled btn--progress" data-el="progressbtn" data-value="0" data-max="1.7976931348623157e+308" data-completionstate="btn--primary" data-test="basket-checkout-button-main" disabled="disabled">
        Ordina adesso
        <span class="btn--progress-bar" data-el="progressbtn-bar" style="width: 0%;"></span>
    </a>
</div>
</form>        <div class="u-textLeft u-separatedSpace--top u-separatedSpace--small infoBox-icon infoBox-icon--alert" data-test="allergy-dietary-wrapper">
            <button data-megamodal-dynamic="" data-megamodal-modaltype="narrow" data-megamodal-title="Informazioni su allergie e intolleranze alimentari" data-megamodal-content=".modal-c1844edf-1ddc-4f60-aacf-ed31f4b86213" class="btnLink u-textCenter">Hai unâallergia o unâintolleranza alimentare?</button>
<div class="modal-c1844edf-1ddc-4f60-aacf-ed31f4b86213 is-hidden"><p>Se hai allergie o intolleranze alimentari che possono compromettere la tua salute, per favore contatta direttamente il ristorante <strong>prima di inserire l'ordine</strong> (puoi chiedere il nostro aiuto tramite <a href="/help/article/115001318051/cosa-faccio-se-sono-allergico-a-qualcosa" target="_blank">chat</a> oppure inviandoci unâemail a <a href="mailto:info@justeat.it" target="_blank">info@justeat.it</a>).</p><p>Ti consigliamo inoltre di contattare il ristorante <strong>anche dopo lâordine</strong> per confermare le tue richieste</p><p>Alla pagina delle <a href="/help" target="_blank">Domande frequenti (FAQ)</a> sono disponibili ulteriori informazioni sulla politica di Just Eat riguardo le allergie e le intolleranze alimentari.</p></div>

        </div>

        

<form id="frmCopyBasket" method="post" novalidate="novalidate">
    <div class="infoBox-content infoBox-content--small">
        <div data-test="menu-switcher" class="btnToggle form-controlGroup u-separatedSpace--top u-separatedSpace--small">
            <div class="g">
                    <div class="btnToggle-item g-col g-span12 g g--alignCenter">
                        <input data-menuswitcher="" type="radio" name="ms-servicetype" value="delivery" class="btnToggle-input" id="ms-delivery-Basket" checked="" data-gtm="menu|click - menu switch|delivery" data-test-id="delivery-Basket">
                        <label for="ms-delivery-Basket" id="RadioDelivery" class="btnToggle-label" data-test-id="delivery-label-Basket">
                            <span class="btnToggle-label-text">
                                Consegna a domicilio<span data-servicefee="">&nbsp;â¬ 2</span>
                            </span>
                        </label>
                    </div>
                            </div>
            <div class="g btnToggle-details">
                    <div data-test="menuswitcher-delivery-time" class="btnToggle-details-additional g-col g-span12 g g--alignCenter">Dalle 18:30</div>

            </div>
        </div>
        <input data-val="true" data-val-required="The HandlePreviewMode field is required." id="HandlePreviewMode" name="HandlePreviewMode" type="hidden" value="False">
    </div>
</form>



        

<div data-basketreceipt="" data-basketreceipt-id="" data-basketreceipt-removedingredientsenabled="False" data-basketreceipt-consumerspend="0.00" data-basketreceipt-remainingspend="5.00" data-basketreceipt-minimumspendrequired="5.00" data-basketreceipt-totalspent="0.00" data-basketreceipt-totalspentformatted="â¬ 0,00" data-basketreceipt-deliveryfeeformatted="â¬&nbsp;0" data-basketreceipt-itemquantity="0" data-basketreceipt-basketorderable="False" data-basketreceipt-checkoutmessage="<strong>â¬ 5,00</strong> per raggiungere il minimo d'ordine" class="infoBox-content infoBox-content--small">

        <div class="u-separated--top">
            <div data-basketfeedback="" class="userFeedback is-hidden u-separatedSpace">
    <div class="box box-align-items-center">
        <div class="box-grow-1">
            <div data-basketfeedback-singleitem="" class="basket--spinner">Sto aggiungendo un prodotto...</div>
            <div data-basketfeedback-multipleitem="" class="basket--spinner is-hidden">Sto aggiungendo {0} prodotti...</div>
            <div data-basketfeedback-removeitem="" class="basket--spinner is-hidden">Sto togliendo un prodotto...</div>
            <div data-basketfeedback-updatetips="" class="basket--spinner is-hidden">%%basket_api_spinner_content_updating_tips%%</div>
        </div>
        <div class="loadingIcon" data-test="addItemLoadingIcon"></div>
    </div>
</div>
        </div>
</div>

    <div class="paymentOptions">
            <figure>
                <i class="icon icon-paymentOption--cash"></i>
                <figcaption>Contanti</figcaption>
            </figure>

            <figure>
                <i class="icon icon-paymentOption--card"></i>
                <figcaption>Carta</figcaption>
            </figure>

            <figure>
                <i class="icon icon-paymentOption--paypal"></i>
                <figcaption>PayPal</figcaption>
            </figure>
    </div>
    </div>
</article>


                        </div>
                    </div>
            </div>
        </div>

        <div class="menu-categories menu-categories--narrow u-showBelowMid is-visuallyHidden" data-appear-trigger=".menu-header" data-shy-if="above" data-shy-when="(max-width: 767px)" data-shy-class="is-visuallyHidden" style="">
    <div class="g">
        <div data-categories-flyout-title="" class="tab menu-categories--title chevron--inactive g-col g-span10">
            Categorie
            <svg viewBox="0 0 56 28" xmlns="http://www.w3.org/2000/svg" class="menu-categories-icon"><path d="M28 22.8L52.02.63a2.47 2.47 0 0 1 3.3 0c.9.84.9 2.2 0 3.05L29.65 27.37c-.91.84-2.39.84-3.3 0L.68 3.67a2.04 2.04 0 0 1 0-3.04 2.47 2.47 0 0 1 3.3 0L28 22.8z" fill="#535353"></path></svg>
            <div class="tab-pointer is-selected categories-pointer"></div>
        </div>
        <div class="searchbar searchbar--narrow g-col g-span2 icon-search">
            <input data-menusearch-entry="" placeholder="Cerca nel menÃ¹" class="searchbar-entry searchbar-entry--narrow is-visuallyHidden" type="text">
        </div>
        <button class="searchbar-exit g-col g-span2 is-visuallyHidden"><i class="icon icon--close"></i></button>
    </div>
    <div id="categories-card--narrow" class="card card--rounded card--small menu-categories--card" data-test="categoriesNarrow">
        <div class="controlList categoriesList">
    <ul class="unstyled" data-test="categoriesList">
                <li class="controlList-item categoriesList-item is-active"><a href="#cat0">Pizze</a></li>
                <li class="controlList-item categoriesList-item"><a href="#cat1">Focacce</a></li>
                <li class="controlList-item categoriesList-item"><a href="#cat2">Panini</a></li>
                <li class="controlList-item categoriesList-item"><a href="#cat3">Fresine</a></li>
                <li class="controlList-item categoriesList-item"><a href="#cat4">Fritti</a></li>
                <li class="controlList-item categoriesList-item"><a href="#cat5">Dolci</a></li>
                <li class="controlList-item categoriesList-item"><a href="#cat6">Bevande</a></li>
                <li class="controlList-item categoriesList-item"><a href="#cat7">Birre</a></li>

    </ul>
</div>

    </div>
</div>




        
        

<div data-nocurrentgeolocation="" class="is-hidden">
    <h3>Inserisci l'indirizzo di consegna</h3>
    <p class="u-separatedSpace">Dobbiamo verificare se questo ristorante puÃ² consegnare dove desideri</p>

    <div class="form addressLookup addressLookup--modal u-separatedSpace" data-address-lookup-template="" data-address-lookup="{
         &quot;componentRestrictions&quot;:
         {&quot;country&quot;:&quot;IT&quot;},
         &quot;log&quot;:true,
         &quot;loggingConfig&quot;:{&quot;eventCategory&quot;:&quot;menu&quot;}
         }">
        <div class="addressLookup-wrapper">
            <div class="form-controlGroup-inputWrapper addressLookup-fullAddress">
                <input autocomplete="off" data-address-lookup-full-address="" data-test="addressField" class="form-input form-input--transparent addressLookup-fullAddress-input" id="nocurrentgeolocation-fullAddress" placeholder="es. Via Solferino 7, Milano" type="text" data-test-id="RequestFullAddressPopup">
                <ul data-address-lookup-suggestions="" class="addressLookup-suggestions" data-test-id="addressLookupSuggestions"></ul>
            </div>
            <div class="form-controlGroup-inputWrapper addressLookup-streetNumber">
                <input autocomplete="off" data-address-lookup-street-number="" class="form-input form-input--transparent addressLookup-streetNumber-input" id="nocurrentgeolocation-streetNumber" placeholder="NÂ°" type="text" data-test-id="RequestStreetNumberPopup">
            </div>
            <button data-address-lookup-search-button="" data-test="confirmButton" class="btn btn--primary addressLookup-actionBtn form-submit" data-gtm="overlay|location prompt|click - check location">
                <span>Controlla</span>
                <svg width="21" height="21" viewBox="0 0 21 21" xmlns="http://www.w3.org/2000/svg"><path d="M20.84 20.06a.55.55 0 0 1-.78.78l-6.67-6.67a.55.55 0 0 1 .78-.78l6.67 6.67zM8.29 16.58A8.29 8.29 0 1 1 8.29 0a8.29 8.29 0 0 1 0 16.58zm0-1.1a7.18 7.18 0 1 0 0-14.37 7.18 7.18 0 0 0 0 14.36z" fill="#333"></path></svg>
            </button>
        </div>
        <ul class="addressLookup-prompt">
            <li data-test-id="NoSuggestionsWarning" class="addressLookup-prompt-item addressLookup-prompt-item--noSuggestions"><label for="nocurrentgeolocation-fullAddress">Ci spiace, non siamo riusciti a trovare il tuo indirizzo</label></li>
            <li data-test-id="FullAddressMissingWarning" class="addressLookup-prompt-item addressLookup-prompt-item--fullAddressMissing"><label for="nocurrentgeolocation-fullAddress">Compila correttamente l'indirizzo di ricerca</label></li>
            <li data-test-id="StreetNumberMissingWarning" class="addressLookup-prompt-item addressLookup-prompt-item--streetNumberMissing"><label for="nocurrentgeolocation-streetNumber">Per favore indica anche il tuo numero civico, cosÃ¬ da trovare tutti i ristoranti che consegnano al tuo indirizzo</label></li>
            <li data-test-id="BeMoreSpecificWarning" class="addressLookup-prompt-item addressLookup-prompt-item--beMoreSpecific"><label for="nocurrentgeolocation-fullAddress">Per favore inserisci il tuo indirizzo di consegna</label></li>
            <li data-test-id="UnableToFindLocation" class="addressLookup-prompt-item addressLookup-prompt-item--unableToFindLocation"><label for="homepage-search-fullAddress">Impossibile trovare la posizione</label></li>
            <li data-test-id="PostcodeSearchWarning" class="addressLookup-prompt-item addressLookup-prompt-item--postcodeSearchWarning"><label for="homepage-search-fullAddress">%%userprompt_location_error_postcodesearchwarning%%</label></li>
        </ul>
    </div>
</div>

        <div id="nocurrentlocation-notavailable" class="modal-info">
            <div class="modal-info-launcher"></div>
            <div class="modal-info-content">
                <h2>Sorry</h2>
                <p id="nocurrentlocation-notavailable-text"></p>
                <a class="btn btn--primary btn--block" href="/suggest-a-restaurant" data-gtm="overlay|location prompt|click - location out of reach - find open trs">Consiglia un ristorante in questa zona</a>
                <a id="nocurrentlocation-notavailable-cancelaction" data-gtm="overlay|location prompt|click - location out of reach - i am not in"></a>
            </div>
        </div>

        <div id="nocurrentlocation-undeliverable" class="modal-info">
            <div class="modal-info-launcher"></div>
            <div class="modal-info-content">
                <h2 id="nocurrentlocation-undeliverable-text"></h2>
                <a id="nocurrentlocation-undeliverable-action" class="btn btn--primary btn--block" data-gtm="overlay|location prompt|click - not on je - recommend"></a>
                <a id="nocurrentlocation-undeliverable-cancelaction" class="btn btn--block" data-gtm="overlay|location prompt|click - not on je - i am not in"></a>
            </div>
        </div>

        <div id="tempoffline" class="modal-info">
            <div class="modal-info-launcher"></div>
            <div class="modal-info-content">
                <h2>Ristorante chiuso</h2>
                <p>Siamo spiacenti, il ristorante e' chiuso in questo momento</p>
                <a id="tempoffline-action" class="btn btn--primary btn--block"></a>
            </div>
        </div>

        <div id="closed" class="modal-info">
            <div class="modal-info-launcher"></div>
            <div class="modal-info-content">
                <h2>Questo ristorante e' chiuso</h2>
                <p>Siamo spiacenti, il ristorante e' chiuso in questo momento</p>
                <a id="closed-search-action" class="btn btn--primary btn--block " data-gtm="overlay|closed tr|click - find open trs">Trova dei ristoranti aperti in {0}</a>
                <a id="closed-deliverypreorder-action" class="btn btn--block" data-gtm="overlay|closed tr|click - preorder delivery">Preordina una consegna</a>
                <a id="closed-collectionpreorder-action" class="btn btn--block" data-gtm="overlay|closed tr|click - preorder collection">Prenota un ordine da ritirare al locale</a>
            </div>
        </div>

        <div id="collectiononly" class="modal-info">
            <div class="modal-info-launcher"></div>
            <div class="modal-info-content">
                <h2>Consegna non disponibile</h2>
                <p>Siamo spiacenti, questo ristorante non e' disponibile per le consegne in questo momento. Si prega di scegliere un' opzione</p>
                <a id="collectiononly-collection-action" class="btn btn--primary btn--block" data-gtm="overlay|collection only|click - collect">Desidero ritirare il mio ordine di persona</a>
                <a id="collectiononly-search-action" class="btn btn--block" data-gtm="overlay|collection only|click -find open trs">Trova dei ristoranti aperti in {0}</a>
                <a id="collectiononly-deliverypreorder-action" class="btn btn--block" data-gtm="overlay|collection only|click - preorder delivery">Preordina una consegna</a>
            </div>
        </div>
    </div>
</div>
<div class="bubbleNotification is-hidden is-insideNav" data-appear-trigger=".menu-header" data-shy-if="below" data-shy-class="is-insideNav" data-shy-when="(max-width: 640px)" data-no-slide="true">
    <p data-bubble-insufficient="" class="bubbleNotification-msg is-hidden">
        Bastano altri <strong class="remainingSpend"></strong> per completare il tuo ordine
    </p>
    <p data-bubble-insufficient="" data-bubble-insufficientother="" class="bubbleNotification-msg insufficient--requiresOther is-hidden">
        Impossibile aggiungere bevande senza aver ordinato del cibo. Si prega di aggiungere del cibo all'ordine
    </p>
    <p data-bubble-sufficient="" class="bubbleNotification-msg bubbleNotification-msg--sufficient">
        <span>Perfetto! Ora sei pronto per ordinare</span>
    </p>
    <button data-basket-checkoutbtn="" data-bubble-sufficient="" data-bubble-notificationbtn="" data-test="basket-checkout-header" class="bubbleNotification-btn btn btn--primary is-hidden">Ordina adesso</button>
</div>

<div data-delivery-checker="" class="is-hidden">
    <h3>%%userprompt-location-googleplaces-heading%%</h3>
    <p class="u-separatedSpace">%%userprompt-location-googleplace-paragraphtext%%</p>
    <div class="form addressLookup addressLookup--light u-separatedSpace" data-address-lookup-template="" data-address-lookup="{&quot;componentRestrictions&quot;:{&quot;country&quot;:&quot;IT&quot;}}">
        <div class="addressLookup-wrapper">
            <div class="form-controlGroup-inputWrapper addressLookup-fullAddress">
                <input autocomplete="off" data-address-lookup-full-address="" class="form-input form-input--transparent addressLookup-fullAddress-input" id="nocurrentgeolocation-fullAddress" placeholder="Indirizzo di consegna" type="text">
                <ul data-address-lookup-suggestions="" class="addressLookup-suggestions" data-test-id="addressLookupSuggestions"></ul>
            </div>
            <div class="form-controlGroup-inputWrapper addressLookup-streetNumber">
                <input autocomplete="off" data-address-lookup-street-number="" class="form-input form-input--transparent addressLookup-streetNumber-input" id="nocurrentgeolocation-streetNumber" placeholder="NÂ°" type="text">
            </div>
            <button data-address-lookup-search-button="" class="btn btn--primary addressLookup-actionBtn form-submit" data-gtm="overlay|location prompt|click - check location">
                <span>%%userprompt-location-googleplaces-submitbuttontext%%</span>
                <svg width="21" height="21" viewBox="0 0 21 21" xmlns="http://www.w3.org/2000/svg"><path d="M20.84 20.06a.55.55 0 0 1-.78.78l-6.67-6.67a.55.55 0 0 1 .78-.78l6.67 6.67zM8.29 16.58A8.29 8.29 0 1 1 8.29 0a8.29 8.29 0 0 1 0 16.58zm0-1.1a7.18 7.18 0 1 0 0-14.37 7.18 7.18 0 0 0 0 14.36z" fill="#333"></path></svg>
            </button>
        </div>
        <ul class="addressLookup-prompt">
            <li class="addressLookup-prompt-item addressLookup-prompt-item--noSuggestions"><label for="nocurrentgeolocation-fullAddress">Ci spiace, non siamo riusciti a trovare il tuo indirizzo</label></li>
            <li class="addressLookup-prompt-item addressLookup-prompt-item--fullAddressMissing"><label for="nocurrentgeolocation-fullAddress">Compila correttamente l'indirizzo di ricerca</label></li>
            <li class="addressLookup-prompt-item addressLookup-prompt-item--streetNumberMissing"><label for="nocurrentgeolocation-streetNumber">Per favore indica anche il tuo numero civico, cosÃ¬ da trovare tutti i ristoranti che consegnano al tuo indirizzo</label></li>
            <li class="addressLookup-prompt-item addressLookup-prompt-item--beMoreSpecific"><label for="nocurrentgeolocation-fullAddress">Per favore inserisci il tuo indirizzo di consegna</label></li>
        </ul>
    </div>
</div>
<div data-cant-deliver-to-lat-long="" class="is-hidden">
    <p class="u-separatedSpace">%%userprompt_location_notinpolygon_text%%</p>
    <button class="btn btn--primary" data-close-modal="">%%userprompt_location_notinpolygon_action_buttontext%%</button>
</div>





<footer class="c-footer">
    <div class="l-container">
        <div class="c-footer-row">
            <div class="c-footer-panel collapsible is-hiding l-col">
                <h2>Cucine</h2>
                <ul>
                    <li><a href="/domicilio/pizza/">Pizza a domicilio</a></li><li><a href="/domicilio/cinese/">Cinese a domicilio</a></li><li><a href="/domicilio/sushi/">Sushi a domicilio</a></li><li><a href="/domicilio/kebab/">Kebab a domicilio</a></li><li><a href="/domicilio/tipi-cucina/">Tutti i tipi di cucine</a></li>
                </ul>
            </div>
            <div class="c-footer-panel collapsible is-hiding l-col">
                <h2>CittÃ </h2>
                <ul>
                    <li><a href="/domicilio/palermo/">Palermo</a></li><li><a href="/domicilio/roma/">Roma</a></li><li><a href="/domicilio/milano/">Milano</a></li><li><a href="/domicilio/napoli/">Napoli</a></li><li><a href="/domicilio/Torino/">Torino</a></li><li><a href="/domicilio/bologna/">Bologna</a></li><li><a href="/domicilio/ferrara/">Ferrara</a></li><li><a href="/domicilio/genova/">Genova</a></li><li><a href="/domicilio/padova/">Padova</a></li><li><a href="/domicilio/parma/">Parma</a></li><li><a href="/domicilio/citta/">Tutte le cittÃ </a></li><li><a href="/domicilio/citta-offerte/">Offerte e Sconti</a></li>
                </ul>
            </div>
            <div class="c-footer-panel collapsible is-hiding l-col">
                <h2>Chi siamo</h2>
                <ul>
                    <li><a href="/privacypolicy" target="">Informativa sulla Privacy</a></li><li><a href="/termsandconditions" target="">Termini e Condizioni</a></li><li><a href="/cookies-policy" target="">Cookie Policy</a></li><li><a href="/about" target="">Informazioni su Just Eat</a></li><li><a href="/help" target="">Domande frequenti</a></li><li><a href="/domicilio/miglior-prezzo-garantito" target="">Miglior Prezzo Garantito</a></li><li><a href="/suggest-a-restaurant" target="">Suggerisci un ristorante</a></li><li><a href="/jobs" target="">Lavora con noi</a></li><li><a href="https://www.justeat.it/domicilio/driver-partner" target="">Diventa un Rider</a></li><li><a href="https://partner.justeat.it/" target="">Partner Center</a></li><li><a href="https://www.justeat.it/blog" target="">Blog</a></li>
                </ul>
            </div>
            <div class="c-footer-panel c-footer-panel--app-icons l-col">
                <h2>App</h2>
                <ul>
                    <li>
                        <a href="https://app.adjust.com/6zamp7?utm_medium=internal&amp;campaign=footer" data-gtm="app_footer_link|click_link|ios" target="_blank">
                            <img class="c-footer-list-app-icon" src="https://d3fpaxu9zxkgws.cloudfront.net/assets/dist/img/icons/appstore/ios-v2.it.svg" alt="Scarica su App Store">
                        </a>
                    </li>
                    <li>
                        <a href="https://app.adjust.com/60f9v1?utm_medium=internal&amp;campaign=footer" data-gtm="app_footer_link|click_link|android" target="_blank">
                            <img class="c-footer-list-app-icon" src="https://d3fpaxu9zxkgws.cloudfront.net/assets/dist/img/icons/appstore/android-v2.it.svg" alt="Disponibile su Google Play">
                        </a>
                    </li>
                </ul>
            </div>
        </div>

        <div class="c-footer-row c-footer-support-text">
<h2>Hai un ristorante e vorresti entrare a far parte di Just Eat?</h2>
<a class="btn btn--outline btn--small" href="http://ristoranti.justeat.it/" target="_blank">SÃ¬, desidero ricevere piÃ¹ informazioni</a>
<p>
    Lavori giÃ  con noi? <br class="u-showBelowNarrow"><a href="https://partner.justeat.it/" target="_blank">Gestisci il tuo ristorante</a>
</p>
        </div>

        <div class="c-footer-row c-footer-row--icons">
            <ul class="c-footer-icon-list--social">
                <li><a class="c-footer-icon-list-item icon icon-social--rounded icon-social--rounded--fb u-hideText" href="https://www.facebook.com/justeatitaly" target="_blank">Facebook</a></li>
                <li><a href="https://twitter.com/JustEat_it" class="c-footer-icon-list-item icon icon-social--rounded icon-social--rounded--twitter u-hideText" target="_blank">twitter</a></li>
                                    <li><a href="https://www.justeat.it/blog" class="c-footer-icon-list-item icon icon-social--rounded icon-social--rounded--rss u-hideText" target="_blank">Blog Just Eat</a></li>
                                            </ul>

            <div class="c-footer-container">
                <ul class="c-footer-icon-list--cards">
                    <li><span class="c-footer-icon-list-item icon icon-card icon-card--visa u-hideText">VISA</span></li><li><span class="c-footer-icon-list-item icon icon-card icon-card--mastercard u-hideText">Mastercard</span></li><li><span class="c-footer-icon-list-item icon icon-card icon-card--paypal u-hideText">Paypal</span></li>
                </ul>

                

<div class="c-footer-feedback" data-test-id="feedback" data-js-feedback="" style="cursor: pointer;">
    <div class="c-footer-feedback--logo">
        <img src="https://d3fpaxu9zxkgws.cloudfront.net/assets/dist/img/icons/usabilla/feedback.svg" alt="Feedback">
    </div>
    <div class="c-footer-feedback--link">
        <h2>Feedback</h2>
        <p>Aiutaci a migliorare il nostro sito</p>
        <p><a data-js-feedback-link="" style="text-decoration: underline;">Invia feedback</a>
        </p>
    </div>
</div>

<!-- Usabilla Scripts -->
<!-- Invisible Button Script from Usabilla -->
<script type="text/javascript">
    /*{literal}<![CDATA[*/
    window.lightningjs || function (c) { function g(b, d) { d && (d += (/\?/.test(d) ? "&" : "?") + "lv=1"); c[b] || function () { var i = window, h = document, j = b, g = h.location.protocol, l = "load", k = 0; (function () { function b() { a.P(l); a.w = 1; c[j]("_load") } c[j] = function () { function m() { m.id = e; return c[j].apply(m, arguments) } var b, e = ++k; b = this && this != i ? this.id || 0 : 0; (a.s = a.s || []).push([e, b, arguments]); m.then = function (b, c, h) { var d = a.fh[e] = a.fh[e] || [], j = a.eh[e] = a.eh[e] || [], f = a.ph[e] = a.ph[e] || []; b && d.push(b); c && j.push(c); h && f.push(h); return m }; return m }; var a = c[j]._ = {}; a.fh = {}; a.eh = {}; a.ph = {}; a.l = d ? d.replace(/^\/\//, (g == "https:" ? g : "http:") + "//") : d; a.p = { 0: +new Date }; a.P = function (b) { a.p[b] = new Date - a.p[0] }; a.w && b(); i.addEventListener ? i.addEventListener(l, b, !1) : i.attachEvent("on" + l, b); var q = function () { function b() { return ["<head></head><", c, ' onload="var d=', n, ";d.getElementsByTagName('head')[0].", d, "(d.", g, "('script')).", i, "='", a.l, "'\"></", c, ">"].join("") } var c = "body", e = h[c]; if (!e) return setTimeout(q, 100); a.P(1); var d = "appendChild", g = "createElement", i = "src", k = h[g]("div"), l = k[d](h[g]("div")), f = h[g]("iframe"), n = "document", p; k.style.display = "none"; e.insertBefore(k, e.firstChild).id = o + "-" + j; f.frameBorder = "0"; f.id = o + "-frame-" + j; /MSIE[ ]+6/.test(navigator.userAgent) && (f[i] = "javascript:false"); f.allowTransparency = "true"; l[d](f); try { f.contentWindow[n].open() } catch (s) { a.domain = h.domain, p = "javascript:var d=" + n + ".open();d.domain='" + h.domain + "';", f[i] = p + "void(0);" } try { var r = f.contentWindow[n]; r.write(b()); r.close() } catch (t) { f[i] = p + 'd.write("' + b().replace(/"/g, String.fromCharCode(92) + '"') + '");d.close();' } a.P(2) }; a.l && setTimeout(q, 0) })() }(); c[b].lv = "1"; return c[b] } var o = "lightningjs", k = window[o] = g(o); k.require = g; k.modules = c }({});
        if (!navigator.userAgent.match(/Android|BlackBerry|BB10|iPhone|iPad|iPod|Opera Mini|IEMobile/i)) {
            window.usabilla_live = lightningjs.require("usabilla_live", "//w.usabilla.com/e8a00eaa3dde.js");
        } else {
            window.usabilla_live = lightningjs.require("usabilla_live", "//w.usabilla.com/c51fec9dbb40.js");
        }
        window.usabilla_live('setEventCallback', function(c, a, l, v) {
             dataLayer.push({
                 'event': 'trackEvent',
                 'eventAction': a,
                 'eventCategory': c,
                 'eventLabel': l,
                 'eventValue': v
             });
        });
    /*]]>{/literal}*/
</script>

<!-- Configure the action to use the above feedback link -->
<script>
    (function(){
        var feedbackContainer = document.querySelector("[data-js-feedback]");

        if (feedbackContainer) {
            var feedbackHref = document.querySelector("[data-js-feedback-link]");
            feedbackHref.removeAttribute("href");
            feedbackHref.style.textDecoration = "underline";
            var feedbackFunction = function(){window.usabilla_live("click")};
            if (feedbackContainer.addEventListener) {
                feedbackContainer.addEventListener("click", feedbackFunction);
            } else if (feedbackContainer.attachEvent) {
                feedbackContainer.attachEvent("onclick", feedbackFunction);
            }
            feedbackContainer.style = "cursor:pointer";
        }
    })();
</script>

            </div>
        </div>

        <div class="c-footer-row">

                <div class="c-footer-row c-footer-row--centre">
                    <p>Just Eat Italy S.r.l. - P.IVA 07392740960</p>
                </div>

            <div class="c-footer-sideText--right">
                <a href="http://www.just-eat.com/" target="_blank">Just Eat Group</a>
            </div>
            <div class="c-footer-sideText--left">
                <div class="c-siteSelector icon-flag icon-flag--it" data-toggle="{ &quot;toggleBtn&quot; : &quot;[data-toggle-btn]&quot; } " data-test-id="siteSelector">
                    <a href="#" class="c-siteSelector-link" data-toggle-btn="">Cambia Paese</a>
                    <ul class="c-siteSelector-list is-displayToggle" data-toggle-item="">
                        <li><a target="_blank" href="https://www.menulog.com.au/" class="icon icon-flag icon-flag--au">Australia</a></li>
                        <li><a target="_blank" href="https://www.restauranteweb.com.br/" class="icon icon-flag icon-flag--br">Brasile</a></li>
                        <li><a target="_blank" href="https://www.just-eat.ca" class="icon icon-flag icon-flag--ca">Canada</a></li>
                        <li><a target="_blank" href="https://www.just-eat.dk" class="icon icon-flag icon-flag--dk">Danimarca</a></li>
                        <li><a target="_blank" href="https://www.just-eat.fr/" class="icon icon-flag icon-flag--fr">Francia</a></li>
                        <li><a target="_blank" href="https://www.just-eat.ie" class="icon icon-flag icon-flag--ie">Irlanda</a></li>
                        <li><a target="_blank" href="https://www.justeat.it" class="icon icon-flag icon-flag--it">Italia</a></li>
                        <li><a target="_blank" href="https://www.menulog.co.nz/" class="icon icon-flag icon-flag--nz">New Zealand</a></li>
                        <li><a target="_blank" href="https://www.just-eat.no" class="icon icon-flag icon-flag--no">Norvegia</a></li>
                        <li><a target="_blank" href="https://www.just-eat.es" class="icon icon-flag icon-flag--es">Spagna</a></li>
                        <li><a target="_blank" href="https://www.eat.ch" class="icon icon-flag icon-flag--ch">Svizzera</a></li>
                        <li><a target="_blank" href="https://www.just-eat.co.uk" class="icon icon-flag icon-flag--uk">Regno Unito</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="c-footer-row c-footer-row--bottom">
            <h2>Hai avuto dei problemi?</h2>
            <p><a href="/help">Siamo qui per aiutarti</a></p>
        </div>
    </div>
</footer>

    <script src="https://d3fpaxu9zxkgws.cloudfront.net/assets/dist/js/script-db45f75c0a.min.js"></script>

    

    
    <script>
        var JustEat = JustEat || {};
        JustEat.LocalCurrencySettings = {
            currencySymbol: "â¬",
            decimalSeparater: ",",
            thousandSeparater: ".",
            currencyPattern: 2
        };

        var JustEatData = {};
        JustEatData.Restaurant = JustEatData.Restaurant || {};
        JustEatData.Restaurant.Name = 'pizzasprintrende';
        JustEatData.Restaurant.Id = '216647';
        JustEatData.MenuId = '75046';

        JustEatData.menuStatus = {
            IsOpen: "false",
            ServiceType: "delivery"
        };

        // Collection Only
        JustEatData.Restaurant.IsCollectionOnly = false;

        // Closed
        JustEatData.Restaurant.IsClosed = true;
        JustEatData.IsPreviewMode = false;

        // Pre-Order
        JustEatData.Restaurant.HasPreOrderDelivery = true;
        JustEatData.Restaurant.HasPreOrderCollection = false;
        JustEatData.Restaurant.IsPreOrderAvailable = JustEatData.Restaurant.HasPreOrderDelivery || JustEatData.Restaurant.HasPreOrderCollection;

        // Temp Offline
        JustEatData.Restaurant.IsTempOffline = false;

        //Has available order times
        JustEatData.Restaurant.HasAvailableOrderTimes = true;

        // Serviceable Areas
        JustEatData.Restaurant.ServiceableAreas = null;

        //make CMS entries accessible to JavaScript
        JustEatData.cmsData = {};
        JustEatData.cmsData.menupickerTitleChildProduct = "Scegli un'opzione";
        JustEatData.cmsData.menupickerTitleReqAccessory = "Scegli un'opzione";
        JustEatData.cmsData.menupickerTitleComplexItem = "Scegli il tuo";
        JustEatData.cmsData.menupickerAddToBasketText = "Aggiungi al carrello";
        JustEatData.cmsData.menuPageBackButtonText = "Indietro";

        JustEatData.cmsData.prompt_tempoffline_actiontext = "Trova dei ristoranti aperti in {0}";
        JustEatData.cmsData.prompt_closed_actiontext = "Trova dei ristoranti aperti in {0}";
        JustEatData.cmsData.prompt_undeliverable_text = "Questo ristorante non consegna in {0}";
        JustEatData.cmsData.prompt_undeliverable_search_buttontext = "Trova dei ristoranti aperti in {0}";
        JustEatData.cmsData.prompt_undeliverable_resubmitlocation_buttontext = "Non sono in {0}";

        JustEatData.cmsData.userprompt_location_notonjusteat_text = "Questo ristorante non consegna a {0} e non ci sono altri ristoranti su JUST EAT che consegnano in questa zona. Cosa vorresti fare?";
        JustEatData.cmsData.userprompt_location_notonjusteat_cancelactiontext = "Non sono in {0}";

        JustEatData.cmsData.restaurant_search_error_no_such_zipcode_found_message = "%%restaurant_search_error_no_such_zipcode_found_message%%";

        // Flag to identify whether a location check has already been requested to the user.
        JustEat.RequestedLocationChecked = false;

        JustEat.IsBackendPostcodeValidationEnabled = false;

        JustEat.DeliveryByGeoLocationEnabled = true;

        JustEat.PreOrderAgreed = false;
        JustEat.RequestedMenuType = '';
        JustEat.AgreedCollectionOnly = false;

        JustEat.RestaurantAreaUrl = "/area/87036-quattromiglia?lat=39.3560153&amp;long=16.2436577";

        function loadLegacyScriptAfterBundle() {
            if (!JustEat.DeliveryByGeoLocationEnabled) {
                JustEat.CurrentLocation = JustEat.cookies.getCookie("je-location");
                JustEat.FriendlyPostcode = "87036";
            }
        }
    </script>


    

    
<script>
    dataLayer.push({"trData":{"trId":216647,"name":"Pizza Sprint","seoName":"pizzasprintrende","logo":"https://d2egcvq7li5bpq.cloudfront.net/it/images/restaurants/216647.gif","open":false,"openingHours":["\"Mo 18:00-01:00\"","\"Tu 18:00-01:00\"","\"We 18:00-01:00\"","\"Th 18:00-01:00\"","\"Fr 18:00-01:00\"","\"Sa 18:00-01:00\"","\"Su 18:00-01:00\""],"address":{"streetAddress":"Via Goffredo Mameli, 10","addressLocality":"Rende","addressRegion":"Rende","postalCode":"87036","addressCountry":"IT"},"menuType":"Delivery","primaryCuisine":"Pizza","cuisines":"Pizza|Fritti","language":"it-IT","Currency":"EUR","new":false,"rating":{"average":5.143,"nRatings":200},"deliveryOptions":"deliveryPreorder","deliveryCost":2.00,"minAmount":5.00,"effectuationTime":"30","OrderAction":"Yes","menuurl":"https://www.just-eat.it/restaurants-pizzasprintrende/menu","menuData":{"menuId":75046,"nCategories":8,"nItems":{"simple":67,"customisable":96,"total":163},"features":"none"}}});

    var trackEvents = [];
    Array.prototype.push.apply(dataLayer, trackEvents);
</script>


    
<script>
        
</script>


<script type="text/javascript" id="">!function(b,e,f,g,a,c,d){b.fbq||(a=b.fbq=function(){a.callMethod?a.callMethod.apply(a,arguments):a.queue.push(arguments)},b._fbq||(b._fbq=a),a.push=a,a.loaded=!0,a.version="2.0",a.queue=[],c=e.createElement(f),c.async=!0,c.src=g,d=e.getElementsByTagName(f)[0],d.parentNode.insertBefore(c,d))}(window,document,"script","https://connect.facebook.net/en_US/fbevents.js");var am={},em="480ded139e479237a67035cf9ae0eebd318649d8493b6e353517b3c5797b7b12",zp="undefined";"undefined"!==em&&(am.em=em);"undefined"!==zp&&(am.zp=zp);
fbq("set","autoConfig",!1,"561653280596882");fbq("init","561653280596882",am);fbq("track","PageView");</script>

<noscript>
  <img height="1" width="1" style="display:none" src="https://www.facebook.com/tr?id=561653280596882&amp;ev=PageView&amp;noscript=1">
</noscript><script type="text/javascript" id="">window._fbq=window._fbq||[];window._fbq.push(["track","ViewContent",{content_ids:"216647",content_type:"product",product_type:"Delivery",cuisine_type:"Pizza|Fritti"}]);</script><script type="text/javascript" id="">(function(){var b={"@context":"http://schema.org","@id":"https://www.justeat.it/restaurants-pizzasprintrende/menu","@type":"Restaurant",logo:"https://d2egcvq7li5bpq.cloudfront.net/it/images/restaurants/216647.gif",image:"https://d2egcvq7li5bpq.cloudfront.net/it/images/restaurants/216647.gif",name:"Pizza Sprint",servesCuisine:"Pizza|Fritti",openingHours:"Mo 18:00-01:00,Tu 18:00-01:00,We 18:00-01:00,Th 18:00-01:00,Fr 18:00-01:00,Sa 18:00-01:00,Su 18:00-01:00",address:{"@type":"PostalAddress",
streetAddress:"Via Goffredo Mameli, 10",addressLocality:"Rende",addressRegion:"Rende",postalCode:"87036",addressCountry:"IT"},aggregateRating:{"@type":"AggregateRating",ratingValue:google_tag_manager["GTM-TMPX9FN"].macro(5),ratingCount:google_tag_manager["GTM-TMPX9FN"].macro(6),bestRating:"6"},url:"https://www.justeat.it\/restaurants-pizzasprintrende\/menu",potentialAction:{"@type":"OrderAction",target:{actionPlatform:["http://schema.org/DesktopWebPlatform","http://schema.org/MobileWebPlatform"],
inLanguage:"it-IT",url:"https://www.justeat.it\/restaurants-pizzasprintrende\/menu?utm_source\x3dgoogle\x26utm_medium\x3dorganic\x26utm_campaign\x3dorderaction"},deliveryMethod:["http://purl.org/goodrelations/v1#DeliveryModeOwnFleet"],priceSpecification:[{"@type":"DeliveryChargeSpecification",appliesToDeliveryMethod:"http://purl.org/goodrelations/v1#DeliveryModeOwnFleet",priceCurrency:"EUR",price:google_tag_manager["GTM-TMPX9FN"].macro(7),eligibleTransactionVolume:{"@type":"PriceSpecification",
priceCurrency:"EUR",price:google_tag_manager["GTM-TMPX9FN"].macro(8)}}]}},a=document.createElement("script");a.type="application/ld+json";a.innerHTML=JSON.stringify(b);document.getElementsByTagName("head")[0].appendChild(a)})(document);</script><script type="text/javascript" id="">(function(){try{if("undefined"!==typeof sessionStorage){dataLayer.push({"platformData.storageAPIStatus":"available"});var b=google_tag_manager["GTM-TMPX9FN"].macro(9);if("Home"===b)sessionStorage.removeItem("JE-GTM-serpData"),sessionStorage.removeItem("JE-GTM-trData");else if("Area"===b){sessionStorage.removeItem("JE-GTM-serpData");var a=google_tag_manager["GTM-TMPX9FN"].macro(10);a.totalTRs=google_tag_manager["GTM-TMPX9FN"].macro(13);sessionStorage.setItem("JE-GTM-serpData",JSON.stringify(a))}else if(0===b.indexOf("Checkout")||"Order Confirmation"===b||"Menu"===
b){var c=JSON.parse(sessionStorage.getItem("JE-GTM-serpData"));c&&(delete c.results,dataLayer.push({serpData:c}));a=JSON.parse(sessionStorage.getItem("JE-GTM-trData"));b=google_tag_manager["GTM-TMPX9FN"].macro(14);c=google_tag_manager["GTM-TMPX9FN"].macro(15)||google_tag_manager["GTM-TMPX9FN"].macro(16);if(a&&a.trId&&c==a.trId)for(var d in b)a[d]=b[d];else a=b;a&&(dataLayer.push({trData:a}),sessionStorage.setItem("JE-GTM-trData",JSON.stringify(a)))}}else dataLayer.push({"platformData.storageAPIStatus":"not available"})}catch(e){console.log(e),console.log("GTM ERROR on UA Process Data Tag")}})();
dataLayer.push({event:"dataReady"});</script><script type="text/javascript" id="">(function(){try{var a=google_tag_manager["GTM-TMPX9FN"].macro(17);"undefined"!==typeof a&&dataLayer.push({"platformData.pageName":a})}catch(b){console.log(b),console.log("GTM ERROR on UA unifiedDataReady")}})();dataLayer.push({event:"unifiedDataReady"});</script><div style="width:0px; height:0px; display:none; visibility:hidden;" id="batBeacon0.10735601716800369"><img style="width:0px; height:0px; display:none; visibility:hidden;" id="batBeacon0.6997171502241648" width="0" height="0" alt="" src="https://bat.bing.com/action/0?ti=4005477&amp;Ver=2&amp;mid=d3a4a0c0-518a-eb16-e618-fef0da154a0f&amp;pi=1200101525&amp;lg=it-IT&amp;sw=1920&amp;sh=1080&amp;sc=24&amp;tl=Pizza%20Sprint%20-%20Rende%3A%20Ordina%20Online%20a%20Domicilio%20%7C%20JUST%20EAT&amp;r=https%3A%2F%2Fwww.justeat.it%2Farea%2F87036-quattromiglia%2F&amp;p=https%3A%2F%2Fwww.justeat.it%2Frestaurants-pizzasprintrende%2Fmenu&amp;lt=1009&amp;evt=pageLoad&amp;msclkid=N&amp;rn=304606"></div><div class="usabilla_live_button_container" tabindex="0" style="width:0px;height:0px;z-index:99999990;bottom:0px;right:200px;position:fixed" aria-label="Usabilla Feedback Button"><iframe src="" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" data-tags="bottom" title="Usabilla Feedback Button" style="width: 0px; height: 0px; margin: 0px; padding: 0px; border: 0px; overflow: hidden; z-index: 9998; position: absolute; left: 0px; top: 0px; box-shadow: 0px 0px 0px; background-color: transparent;"></iframe></div><div id="google-map" data-location="Via Goffredo Mameli, 10, Rende, 87036" data-name="Pizza Sprint" class="restaurantInfo-map is-hidden"></div><script type="text/javascript" id="">(function(){try{if("undefined"!==typeof sessionStorage){dataLayer.push({"platformData.storageAPIStatus":"available"});var b=google_tag_manager["GTM-TMPX9FN"].macro(136);if("Home"===b)sessionStorage.removeItem("JE-GTM-serpData"),sessionStorage.removeItem("JE-GTM-trData");else if("Area"===b){sessionStorage.removeItem("JE-GTM-serpData");var a=google_tag_manager["GTM-TMPX9FN"].macro(137);a.totalTRs=google_tag_manager["GTM-TMPX9FN"].macro(140);sessionStorage.setItem("JE-GTM-serpData",JSON.stringify(a))}else if(0===b.indexOf("Checkout")||"Order Confirmation"===b||"Menu"===
b){var c=JSON.parse(sessionStorage.getItem("JE-GTM-serpData"));c&&(delete c.results,dataLayer.push({serpData:c}));a=JSON.parse(sessionStorage.getItem("JE-GTM-trData"));b=google_tag_manager["GTM-TMPX9FN"].macro(141);c=google_tag_manager["GTM-TMPX9FN"].macro(142)||google_tag_manager["GTM-TMPX9FN"].macro(143);if(a&&a.trId&&c==a.trId)for(var d in b)a[d]=b[d];else a=b;a&&(dataLayer.push({trData:a}),sessionStorage.setItem("JE-GTM-trData",JSON.stringify(a)))}}else dataLayer.push({"platformData.storageAPIStatus":"not available"})}catch(e){console.log(e),console.log("GTM ERROR on UA Process Data Tag")}})();
dataLayer.push({event:"dataReady"});</script></body></html>