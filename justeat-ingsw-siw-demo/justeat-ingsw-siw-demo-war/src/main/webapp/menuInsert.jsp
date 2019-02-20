<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" 
prefix="c" %>

<!DOCTYPE html>

<html dir="ltr" lang="it-IT" class="js  svg placeholder supports smil checked boxsizing flexbox csstransforms csstransforms3d csstransitions no-flexboxtweener datauri flexboxany" data-conversation-id="4d76c0f4-30a2-4a3f-a7e1-f3c15128a3b4" style="">
<head>
<title>Inserimento Nuova Pietanza</title>
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
	
    <main class="g-col g-span9--mid g-span4--midWide g-offset1--midWide g-holdWidth--midWide">
      <form action="aggiungiPietanza" class="form" id="menuform" method="post">
        <fieldset class="form-fieldset">
          <h1 class="form-title beta title--alternate">Il tuo menù</h1>
          <input name="__RequestVerificationToken" type="hidden" value="jmR4IvWw3cRE18u_Hl7HZH7-VvP8Vyj6vPKgEo_Eay9fvStNU7bnkDKsdYWK9uDjToHD0aYXuEB4WBH8KJsF4sYqLxOEbOGN6auvtwTA8SofSJgOw7C_u61fnQWetmh75xKINQ2">
          <div role="alert" aria-atomic="true" class="validation-summary-valid alert alert--danger" data-valmsg-summary="true" data-test-id="validationErrorSummary">
            <ul>
            </ul>
          </div>
          <input data-unsaved-changes-flag="true" data-unsaved-changes-message="I cambiamenti che hai fatto verranno persi abbandonando questa pagina." id="UnsavedChangesFlag" name="UnsavedChangesFlag" type="hidden" value="0">
          <div class="form-controlGroup">
            <label class="form-label" for="Name">Nome Pietanza</label>
            <div class="form-controlGroup-inputWrapper">
              <input class="form-input form-input--icon" name="Pietanza" type="text">
              <span class="field-validation-valid has-error" data-valmsg-for="Name" data-valmsg-replace="true"></span> </div>
          </div>
			  <div class="form-controlGroup">
            <label class="form-label" for="IndirizzoOrdini">Prezzo</label>
            <div class="form-controlGroup-inputWrapper">
              <input class="form-input form-input--icon" id="price" name="PietanzaPrice" type="text">
            </div>
          </div>
			  <div class="form-group">
        <label for="exampleTextarea">Descrizione</label>
        <textarea class="form-control" id="exampleTextarea" name="FoodDescr" rows="3"></textarea>
      </div>
          <button type="submit" class="btn btn--primary btn--block" id="addfood" value="${utente.getEmail_Utente()}" name="email"><span class="is-loading-hidden">Aggiungi</span></button>
        </fieldset>
      </form>
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