<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" 
prefix="c" %>

<!DOCTYPE html>


<html dir="ltr" lang="it-IT" class="js  svg placeholder supports smil checked boxsizing flexbox csstransforms csstransforms3d csstransitions no-flexboxtweener datauri flexboxany" data-conversation-id="4d76c0f4-30a2-4a3f-a7e1-f3c15128a3b4" style="">
<head>
<title>Lista Pietanze del tuo menù</title>
<!--Lettura Head.jsp-->
 <%@ include file="include/headuserzone.jsp" %>
</head>


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
<header class="header">

             <!-- .navbar -->
    <%@ include file="include/navbar.jsp" %>
 
<!-- /.navbar -->
 </header>
 

<div data-cookiebanner="" class="infoBar infoBar--dark infoBar--hideByDefault">
  <div class="l-container infoBar-row"> <a class="btn infoBar-btn" data-cookiebanner-btn="" data-test="cookieBannerBtn">Chiudi</a>
    <p class="u-showAboveMid u-hideTextOverflow--narrow"><span style="font-weight: bold;">JUST EAT</span> utilizza cookie di profilazione, propri e di terzi, per inviarti pubblicitÃ  online in funzione delle tue preferenze manifestate nella navigazione e consentirti una miglior esperienza di navigazione. Se accedi ad un qualunque elemento del sito sottostante acconsenti allâuso di tali cookie. Per avere maggiori informazioni su come noi, o i terzi, usiamo i cookie, sapere come negare il consenso a tutti o solo alcuni cookie, e come impostare il proprio browser si prega di leggere la nostra <a href="/cookies-policy">cookie policy</a></p>
    <p class="u-showBelowMid u-hideTextOverflow--narrow">JUST EAT utilizza diversi cookie: accedendo al sito, ne acconsenti l'uso.</p>
    <p class="u-showBelowMid">Qui puoi trovare i dettagli della nostra <a href="/cookies-policy">cookie policy</a></p>
  </div>
</div>
<div class="u-divider u-horizontalRule">
  <div class="l-container l-vPad--small">
    <ul class="breadcrumb unstyled">
      <li class="breadcrumb-item breadcrumb-item--home" itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"> <a href="index.jsp" itemprop="url" title="Vai alla pagina iniziale di JUST EAT"> <span itemprop="title">Pagina iniziale</span> </a> </li>
      <li class="breadcrumb-item" itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb" data-test-breadcrumb="Account"> <span itemprop="title">Menù Ristorante</span> </li>
    </ul>
  </div>
</div>
<div class="l-container l-pageContent">
  <div class="g g--gutter g--stack">
  
       <!-- Pannello Account Laterale -->
    <%@ include file="include/sidebar.jsp" %>
	 <!-- Fine annello Account Laterale -->
	
    <main class="g-col g-span8--mid g-span7--midWide g-offset1--midWide g-holdWidth--midWide">
		<div>
			<a class="form-editableText-link pull-left"  href="menuInsert.jsp" id="insertpietanza">Inserisci Nuova Pietanza</a>
		</div>
       
		
		   <!-- FOR PIETANZE INIZIO -->
		
		<c:forEach items="${pietanze}" var="pasto">
<div class="food-item">
                              <div class="row">
                                 <div class="col-xs-12 col-sm-12 col-lg-8">
                                 <!--   <div class="rest-logo pull-left">
                                       <a class="restaurant-logo pull-left" href="#"><img src="img/$[pasto.getImage()}" alt="Food logo"></a>
                                    </div>
                                    <!-- end:Logo -->
                                    <div class="rest-descr">
														   <h5><a href="#">${pasto.getNome()}</a></h5>
                                       <h8><a href="#">${pasto.getDescrizione()}</a></h8>
                                    </div>
                                    <!-- end:Description -->
                                 </div>
                                 <!-- end:col -->
                                 <div class="col-xs-12 col-sm-12 col-lg-4 pull-right item-cart-info"> <span class="price pull-left"><a href="#">Prezzo: € ${pasto.getPrezzo()}</a></span>
									  <li class="controlList-item "> <a id="payment-nav-link" href="eliminapietanza?email=${utente.getEmail_Utente()}&nome=${pasto.getNome()}" >&#45 elimina</a> </li></li>
							    <!-- <a href="eliminapietanza?email=${utente.getEmail_Utente()}&nome=${pasto.getNome()}" class="btn btn-small btn btn-secondary pull-right" data-toggle="modal" data-target="#order-modal" >&#45;</a> </div> -->
                              </div>
                              <!-- end:row -->
                           </div>
</c:forEach>
		   <!-- FOR PIETANZE FINE -->
		
		
    </main>
  </div>
</div>


<!-- start: FOOTER -->
    <%@ include file="include/footer.jsp" %>
<!-- end:Footer -->
	
</div>
<!--/end:Site wrapper --> 
<!-- Bootstrap core JavaScript
    ================================================== --> 
    <%@ include file="include/script.jsp" %>
</body>
</html>