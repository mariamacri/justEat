<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" 
prefix="c" %>

<!DOCTYPE html>

<html lang="it">

<head>
    <title>Registrazione Ristorante</title>
     <%@ include file="include/headindex.jsp" %>
    </head>
<body>
     <div class="site-wrapper animsition" data-animsition-in="fade-in" data-animsition-out="fade-out">
                 <!--header starts-->
        <header id="header" class="header-scroll top-header headrom">	
        <!-- .navbar -->    
         <%@ include file="include/navbar.jsp" %>
      
         <!-- .navbar end -->
        </header>
<!--header end-->
        
         <div class="page-wrapper">
            <div class="breadcrumb">
               <div class="container">
                  <ul>
                     <li><a href="index.jsp" class="active">Home</a></li>
                     <li><a href="#">Registrazione Ristorante</a></li>
                     
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
                              <form action="registrazioneRistorante" method="post">
								   <div class="form-group">
                                    <label for="exampleInputEmail1">Nome Utente</label>
                                    <input class="form-control" type="text" placeholder="Mario96" id="example-text-input" name="nome"> <small id="emailHelp" class="form-text text-muted"></small> 
                                 </div>
								   <div class="form-group">
                                    <label for="exampleInputEmail1">Password</label>
                                    <input class="form-control" type="text" placeholder="Lunghezza minima 6 caratteri" name="password" id="example-text-input"> <small id="emailHelp" class="form-text text-muted"></small> 
                                 </div>
                                 <div class="form-group">
                                    <label for="exampleInputEmail1">Nome Attività </label>
                                   <input class="form-control" type="text" name="nome_attivita" placeholder="Es. Da Pino" id="example-text-input"> 
                                 </div>
                                 <div class="form-group">
                                    <label for="exampleInputEmail1">Indirizzo E-mail</label>
                                   <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Inserisci un indirizzo E-mail per l'attività " name="email"> <small class="form-text text-muted">Non condivideremo la tua e-mail con terze parti.</small> 
                                 </div>
                                 <div class="form-group">
                                    <label for="exampleInputEmail1">Numero di Telefono</label>
                                   <input class="form-control" type="tel" placeholder="0984000000" id="example-tel-input" name="telefono"> <small class="form-text text-muted">Il numero di telefono sarà  usato per essere contattato dai clienti.</small> 
                                 </div>
                                 <div class="form-group">
                                    <label for="exampleInputEmail1">Indirizzo Attività </label>
                                    <input class="form-control" type="text" placeholder="Via Farfalle 69" id="example-url-input" name="indirizzo"> <small class="form-text text-muted">L'indirizzo dove è situata l'attività .</small> 
                                 </div>
								  <div class="form-group">
                                    <label for="exampleInputEmail1">Città</label>
                                    <input class="form-control" type="text" placeholder="Cosenza" id="example-url-input" name="citta"> <small class="form-text text-muted">La città dove è situata l'attività .</small> 
                                 </div>
								   <div class="form-group">
                                    <label for="exampleInputEmail1">Numero di iscrizione al registro delle imprese</label>
                                    <input class="form-control" type="text" placeholder="Partita Iva (10 caratteri)" id="example-text-input" name="iva"> <small id="emailHelp" class="form-text text-muted"></small> 
                                 </div>
								   <div class="form-group">
                                    <label for="exampleInputEmail1">Nome del Titolare dell'attività </label>
                                    <input class="form-control" type="text" placeholder="Es. Pino" id="example-text-input" name="nome_titolare"> <small id="emailHelp" class="form-text text-muted"></small> 
                                 </div>
								   <div class="form-group">
                                    <label for="exampleInputEmail1">Cognome del Titolare dell'attività </label>
                                    <input class="form-control" type="text" placeholder="Es. Abete" id="example-text-input" name="cognome_titolare"> <small id="emailHelp" class="form-text text-muted"></small> 
                                 </div>
								   <div class="form-group">
                                    <label for="exampleInputEmail1">Codice Fiscale Titolare</label>
                                    <input class="form-control" type="text" placeholder="BTAPNI77T25A326K" id="example-text-input" name="cf"> <small id="emailHelp" class="form-text text-muted"></small> 
                                 </div>
								    <div class="form-group">
                                    <label for="exampleInputEmail1">Data di Nascita</label>
                                    <input class="form-control" type="date" id="example-text-input" name="data_nascita"> <small id="emailHelp" class="form-text text-muted"></small> 
                                 </div>
							    <div class="form-group">
                                    <label for="exampleInputEmail1">Indirizzo di Residenza</label>
                                    <input class="form-control" type="text" placeholder="Via Foresta Aosta (AO) " id="example-text-input" name="residenza"> <small id="emailHelp" class="form-text text-muted"></small> 
                                 </div>
								    <div class="form-group">
                                    <label for="exampleInputEmail1">Coordinate Bancarie Attività </label>
                                    <input class="form-control" type="text" name="iban" placeholder="Codice Iban (16 Caratteri)" id="example-text-input"> <small id="emailHelp" class="form-text text-muted"></small> 
                                 </div>
<div class="custom-controls-stacked m-b-20">
                     <label class="custom-control custom-radio  m-b-10">
                    <input id="radioStacked1" name="radio-stacked" type="radio" class="custom-control-input"> <span class="custom-control-indicator"></span> <span class="custom-control-description">Accetto i termini e condizioni del servizio.</span> </label>
                                    
                                    <input id="radioStacked2" name="radio-stacked" type="radio" class="custom-control-input">
                                    <span class="custom-control-indicator"></span> </label>
                                </div>
                                 <p>
                                    <button type="submit" class="btn theme-btn">Registrati</button>
                                 </p>
                              </form>
                           </div>
                        </div>
                        <!-- end: Widget -->
                     </div>
                     <!-- /REGISTER -->
                     <!-- WHY? -->
                     <div class="col-md-4">
                        <h4>La registrazione è facile, veloce e gratuita.</h4>
                        <p>Una volta registrato potrai:</p>
                        <hr>
                        <img src="img/Local.png" alt="" class="img-fluid">
                        <p></p>
<!-- end:panel -->
                        <!-- end:Panel -->
                       <h4 class="m-t-20">Contatta il Supporto</h4>
                        <p> Se hai bisogno di aiuto contattaci </p>
                        <p> <a href="contact.html" class="btn theme-btn m-t-15">Contattaci</a> </p>
                     </div>
                     <!-- /WHY? -->
                  </div>
               </div>
            </section>
            <section class="app-section"> </section>
            
     
   <%@ include file="include/footer.jsp" %>
   
    </div>
    <!--/end:Site wrapper -->
    <!-- Bootstrap core JavaScript
    ================================================== -->
<%@ include file="include/script.jsp" %>
</body>

</html>