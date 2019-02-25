<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" 
prefix="c" %>

	
<!DOCTYPE html>

<html dir="ltr" lang="it-IT" class="js  svg placeholder supports smil checked boxsizing flexbox csstransforms csstransforms3d csstransitions no-flexboxtweener datauri flexboxany" data-conversation-id="4d76c0f4-30a2-4a3f-a7e1-f3c15128a3b4" style="">
<head>
<title>Info Ristorante</title>
<!--Lettura Head.jsp-->
 <%@ include file="include/headuserzone.jsp" %>
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
<header class="header">

             <!-- .navbar -->
    <%@ include file="include/navbar.jsp" %>
 
<!-- /.navbar -->
 </header>
 

<div data-cookiebanner="" class="infoBar infoBar--dark infoBar--hideByDefault">
  <div class="l-container infoBar-row"> <a class="btn infoBar-btn" data-cookiebanner-btn="" data-test="cookieBannerBtn">Chiudi</a>
    <p class="u-showAboveMid u-hideTextOverflow--narrow"><span style="font-weight: bold;">JUST EAT</span> utilizza cookie di profilazione, propri e di terzi, per inviarti pubblicità  online in funzione delle tue preferenze manifestate nella navigazione e consentirti una miglior esperienza di navigazione. Se accedi ad un qualunque elemento del sito sottostante acconsenti allâuso di tali cookie. Per avere maggiori informazioni su come noi, o i terzi, usiamo i cookie, sapere come negare il consenso a tutti o solo alcuni cookie, e come impostare il proprio browser si prega di leggere la nostra <a href="/cookies-policy">cookie policy</a></p>
    <p class="u-showBelowMid u-hideTextOverflow--narrow">JUST EAT utilizza diversi cookie: accedendo al sito, ne acconsenti l'uso.</p>
    <p class="u-showBelowMid">Qui puoi trovare i dettagli della nostra <a href="/cookies-policy">cookie policy</a></p>
  </div>
</div>
<div class="u-divider u-horizontalRule">
  <div class="l-container l-vPad--small">
    <ul class="breadcrumb unstyled">
      <li class="breadcrumb-item breadcrumb-item--home" itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"> <a href="index.jsp" itemprop="url" title="Vai alla pagina iniziale di JUST EAT"> <span itemprop="title">Pagina iniziale</span> </a> </li>
      <li class="breadcrumb-item" itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb" data-test-breadcrumb="Account"> <span itemprop="title">Informazioni Attività </span> </li>
    </ul>
  </div>
</div>
<div class="l-container l-pageContent">
  <div class="g g--gutter g--stack">
  
       <!-- Pannello Account Laterale -->
    <%@ include file="include/sidebar.jsp" %>
	 <!-- Fine annello Account Laterale -->
	
  <main class="g-col g-span9--mid g-span4--midWide g-offset1--midWide g-holdWidth--midWide">
    <form action="modificaRistorante" class="form" id="account-info-form" method="post" novalidate="novalidate">
      <fieldset class="form-fieldset">
        <h1 class="form-title beta title--alternate">Il mio Ristorante</h1>
        <input name="__RequestVerificationToken" type="hidden" value="jmR4IvWw3cRE18u_Hl7HZH7-VvP8Vyj6vPKgEo_Eay9fvStNU7bnkDKsdYWK9uDjToHD0aYXuEB4WBH8KJsF4sYqLxOEbOGN6auvtwTA8SofSJgOw7C_u61fnQWetmh75xKINQ2">
        <div role="alert" aria-atomic="true" class="validation-summary-valid alert alert--danger" data-valmsg-summary="true" data-test-id="validationErrorSummary">
          <ul>
          </ul>
        </div>
        <input data-unsaved-changes-flag="true" data-unsaved-changes-message="I cambiamenti che hai fatto verranno persi abbandonando questa pagina." id="UnsavedChangesFlag" name="UnsavedChangesFlag" type="hidden" value="0">
        <div class="form-controlGroup">
          <label class="form-label" for="Name">Nome Attività </label>
          <div class="form-controlGroup-inputWrapper">
            <input class="form-input form-input--icon" data-test-id="name" data-val="true" data-val-length="Lunghezza massima 100 caratteri" data-val-length-max="100" data-val-regex="Il tuo nome non dovrebbe contenere numeri" data-val-required="Inserisci Nome e Cognome" id="account-name" name="nomeAttivita" type="text" value="${ristor.getNome_Ristorante()}">
            <span class="field-validation-valid has-error" data-valmsg-for="Name" data-valmsg-replace="true"></span> </div>
        </div>
       
        <div class="form-controlGroup">
          <label class="form-label" for="Phone">Telefono Attività </label>
          <div class="form-controlGroup-inputWrapper">
            <input class="form-input form-input--icon" data-test-id="phone" data-val="true" data-val-length="Lunghezza massima 15 caratteri" data-val-length-max="15" data-val-regex="Il tuo numero di cellulare deve essere lungo almeno 9 caratteri e non deve conte lettere o caratteri speciali" data-val-regex-pattern="^\d{6,}$" data-val-required="Inserisci il tuo cellulare" id="account-phoneNumber" name="telefonoAttivita" type="tel" value="${ristor.getNumero_Telefono_Ristorante()}">
            <span class="field-validation-valid has-error" data-valmsg-for="Phone" data-valmsg-replace="true"></span> </div>
        </div>
		   <div class="form-controlGroup">
          <label class="form-label" for="Phone">Città </label>
          <div class="form-controlGroup-inputWrapper">
            <input class="form-input form-input--icon" name="citta" type="text" value="${ristor.getCitta_Ristorante()}">
            <span class="field-validation-valid has-error" data-valmsg-replace="true"></span> </div>
        </div>
		  
		  
        <div class="form-controlGroup">
          <label class="form-label" for="Phone">Indirizzo</label>
          <div class="form-controlGroup-inputWrapper">
            <input class="form-input form-input--icon" data-test-id="phone" data-val="true" data-val-length="Lunghezza massima 15 caratteri" data-val-length-max="15" data-val-regex="Il tuo numero di cellulare deve essere lungo almeno 9 caratteri e non deve conte lettere o caratteri speciali" data-val-regex-pattern="^\d{6,}$" data-val-required="Inserisci il tuo cellulare" id="account-phoneNumber" name="indirizzoAttivita" type="tel" value="${ristor.getIndirizzo_Ristorante()}">
            <span class="field-validation-valid has-error" data-valmsg-for="Phone" data-valmsg-replace="true"></span> </div>
        </div>
       
        <div class="form-controlGroup">
          <label class="form-label" for="Phone">Coordinate Bancarie Attività </label>
          <div class="form-controlGroup-inputWrapper">
            <input class="form-input form-input--icon" data-test-id="phone" data-val="true" data-val-length="Lunghezza massima 15 caratteri" data-val-length-max="15" data-val-regex="Il tuo numero di cellulare deve essere lungo almeno 9 caratteri e non deve conte lettere o caratteri speciali" data-val-regex-pattern="^\d{6,}$" data-val-required="Inserisci il tuo cellulare" id="account-phoneNumber" name="coordinateBancarie" type="tel" value="${ristor.getCoordinate_Bancarie_Ristorante()}">
            <span class="field-validation-valid has-error" data-valmsg-for="Phone" data-valmsg-replace="true"></span> </div>
        </div>
        <div class="form-controlGroup"> </div>
      </fieldset>
      <div class="form-group">
        <label for="exampleInputEmail1">Orario di Apertura</label>
        <input class="form-control" type="time" name="orarioApertura" value="${giorni.get(0).getOrarioApertura()}">
        <small class="form-text text-muted"></small> </div>
      <div class="form-group">
        <label for="exampleInputEmail1">Orario di Chiusura</label>
        <input class="form-control" type="time" name="orarioChiusura" value="${giorni.get(0).getOrarioChiusura()}">
        <small class="form-text text-muted"></small> </div>
      <div class="form-group">
        <label>Giorni Lavorativi</label>
        <br>
        <div class="btn-group" data-toggle="buttons">
         <label class="btn btn-primary" >
            <input type="checkbox" value="Lunedi" name="lun">
            Lunedì </label>
          <label class="btn btn-primary" >
            <input type="checkbox"  value="Martedi" name="mar">
            Martedì </label>
          <label class="btn btn-primary" >
            <input type="checkbox" value="Mercoledi" name="mer">
            Mercoledì </label>
          <label class="btn btn-primary" >
            <input type="checkbox" value="Giovedi" name="gio">
            Giovedì </label>
          <label class="btn btn-primary" >
            <input type="checkbox" value="Venerdi" name="ven">
            Venerdì </label>
          <label class="btn btn-primary" >
            <input type="checkbox" value="Sabato" name="sab">
            Sabato </label>
          <label class="btn btn-primary" >
            <input type="checkbox" value="Domenica" name="dom">
            Domenica </label>
        </div>
      </div>
      <label>Categoria di Cucina</label>
      <br>
      <div class="btn-group" data-toggle="buttons">
        <label class="btn btn-primary" >
          <input type="checkbox" value="2" name="italiana">
          Italiana</label>
        <label class="btn btn-primary" >
          <input type="checkbox" value="3" name="orientale">
          Orientale</label>
        <label class="btn btn-primary" >
          <input type="checkbox" value="4" name="fastfood">
          Fast Food</label>
        <label class="btn btn-primary" >
          <input type="checkbox" value="5" name="pizzeria">
          Pizzeria</label>
        <label class="btn btn-primary" >
          <input type="checkbox" value="6" name="bevande">
          Bevande</label>
        <label class="btn btn-primary" >
          <input type="checkbox" value="7" name="braceria">
          Braceria</label>
        <label class="btn btn-primary" >
          <input type="checkbox" value="8" name="paninoteca">
          Paninoteca</label>
        <label class="btn btn-primary" >
          <input type="checkbox" value="9" name="altro">
          Altro</label>
      </div>
      </div>
      <div class="form-group">
        <label for="exampleSelect1">Spesa Minima</label>
        <select class="form-control" id="exampleSelect1" name="spesa">
          <option value="1.00">1,00€</option>
          <option value="2.00">2,00€</option>
          <option value="3.00">3,00€</option>
          <option value="4.00">4,00€</option>
          <option value="5.00">5,00€</option>
        </select>
      </div>

        <div class="form-controlGroup">
          <label class="form-label" for="Name">Descrizione</label>
          <div class="form-controlGroup-inputWrapper">
            <input class="form-input form-input--textarea"  name="descrizione" type="text" value="${ristor.getDescrizione_Ristorante()}">
             </div>
        </div>

    <div class="form-controlGroup">
          <label class="form-label" for="Image">Link Immagine Ristorante (inserisci il link dell'immagine del tuo ristorante)</label>
          <div class="form-controlGroup-inputWrapper">
            <input class="form-input form-input--icon" data-test-id="image" data-val="true" id="imagelink" name="imagelink" type="text" value="${ristor.getLink_immagine()}">
            <span class="field-validation-valid has-error" data-valmsg-for="Phone" data-valmsg-replace="true"></span> </div>
        </div>
      <button type="submit" class="btn btn--primary btn--block" value="${utente.getEmail_Utente()}" name="email" id="save-changes-button" data-test-id="saveButton"><span class="is-loading-hidden">Salva modifiche</span></button>
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