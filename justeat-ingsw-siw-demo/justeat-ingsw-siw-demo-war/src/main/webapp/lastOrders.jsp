<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" 
prefix="c" %>

<!DOCTYPE html>

<html lang="it">
<head>

<title>Resoconto Ordini</title>
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
 
	
<div class="u-divider u-horizontalRule">
  <div class="l-container l-vPad--small">
    <ul class="breadcrumb unstyled">
      <li class="breadcrumb-item breadcrumb-item--home" itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"> <a href="index.jsp" itemprop="url" title="Vai alla pagina iniziale di JUST EAT"> <span itemprop="title">Pagina iniziale</span> </a> </li>
      <li class="breadcrumb-item" itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb" data-test-breadcrumb="Ordini"> <span itemprop="title">Nuovi ordini</span> </li>
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
    <%@ include file="include/sidebar.jsp" %>
	 <!-- Fine annello Account Laterale -->
	
    <main class="g-col g-span9--mid g-span7--wide">
      <h1 class="beta title--alternate">Ultimi Ordini</h1>
      <p class="u-text-knockedBack u-text-soften">Qui trovi lo storico dei tuoi ordini.</p>
      <ol id="orderList" class="listing unstyled u-divider--top">
		  
		
		  
	<!-- INIZIO FOR-->
		   <c:forEach items="${Nuovi}" var="ordini">
			   <c:if test="${utente.getEmail_Utente() == ordini.getRistorante().getUtente_Proprietario().getEmail_Utente()}">
        <a  class="mediaElement">
            <div class="listing-item-info mediaElement-content">
                <h3 class="listing-item-title"  >Id Ordine: ${ordini.getId_ordine()} </h3>
				<p class="infoText">Indirizzo di consegna: ${ordini.getPagamento().getUtente().getIndirizzo_Utente()} </p>
					<c:forEach items="${ordini.getPietanze()}" var="pietan">
      	  				<a  class="mediaElement">
            			<div class="listing-item-info mediaElement-content">
						<p class="infoText">Nome: ${pietan.getNome()}      Prezzo: ${pietan.getPrezzo()}</p>
						<p class="infoText">Descrizione: ${pietan.getDescrizione()} </p>
						
						</div>  
						</a>
			   		</c:forEach>
				<div class="title-row"><a href="archiviaOrdine?id=${ordini.getId_ordine()}"><em class="fa fa-folder pull-right">Archivia</em></a></div>
				<p class="infoText">Spesa Totale: €${ordini.getTot()} </p>
				<p class="infoText">Id pagamento: ${ordini.getPagamento().getId_pagamento()} </p>
				 
            </div>
</a>
				   </c:if>
			   </c:forEach>
		  <!-- Fine FOR-->
	
		  
      </ol>
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