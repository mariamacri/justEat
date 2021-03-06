<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" 
prefix="c" %>

<!DOCTYPE html>

<html lang="it">
<head>
<title>Lascia Un Feedback al Ristorante</title>
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
        <li class="breadcrumb-item" itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb" data-test-breadcrumb="Recensici Ristorante">
                <span itemprop="title">Recensisci Ristorante</span>
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
    <%@ include file="include/sidebar.jsp" %>
	 <!-- Fine annello Account Laterale -->
	 
    <main class="g-col g-span9--mid g-span7--wide">
      <ol id="orderList" class="listing unstyled u-divider--top">
		  
		  <!-- Template lista ordini da generare con un for -->
		  <main class="g-col g-span9--mid g-span4--midWide g-offset1--midWide g-holdWidth--midWide">
<form action="daifeedback" class="form" id="change-password-form" method="post" novalidate="novalidate">                    <fieldset class="form-fieldset">
  <h1 class="form-title beta title--alternate">Dai una valutazione a ${Ristorante_recensito.getNome_Ristorante()}</h1>
  <input name="__RequestVerificationToken" type="hidden" value="bIbz1CsvOE0LiuK4dgu_IlkcGHYe-R8eqzGhcSHmuIC96nz-x3i8G1jkr44-f6FXQyIqpL5y9MnBMph9d7KqCLyYgP4LRNGN8xANmaukEqTIOgbIIeXR7zqdb23Q5WADyfKVQA2">
                        
<div role="alert" aria-atomic="true" class="validation-summary-valid alert alert--danger" data-valmsg-summary="true" data-test-id="validationErrorSummary">
    <ul>
    </ul>
</div>







                        <div class="form-controlGroup">
                            <label class="form-label" for="OldPassword">Numero stelle</label>
                            <div class="form-controlGroup-inputWrapper">
								<output name="amount" for="feedback"> <h4>0</h4></output>
                                <input class="form-input" value="1" id="feedback" name="numero_stelle" type="range" min="1" max="5" oninput="amount.value=feedback.value" >
                                
                            </div>
                        </div>
                       
                 
                            <div class="form-controlGroup-inputWrapper">
                                <label for="exampleTextarea"><h6>Lascia una breve descrizione</h6></label>
                                       <textarea name="descrizione" class="form-control" id="exampleTextarea" rows="3"></textarea>
                        
                        </div>
                        <button type="submit" class="btn btn--primary btn--block" id="save-changes-button" data-test-id="save" name="partita_iva" value="${Ristorante_recensito.getPartita_Iva()}"><span class="is-loading-hidden">Salva</span></button>
                    </fieldset>
</form>        </main>
		  
		  <!-- Fine template -->
		  
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