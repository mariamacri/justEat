<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" 
prefix="c" %>

<!DOCTYPE html>
<html lang="it">


<head>
    <title>Registrazione Utente</title>
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
                
   <%@ include file="include/footer.jsp" %>
   
    </div>
    <!--/end:Site wrapper -->
    <!-- Bootstrap core JavaScript
    ================================================== -->
<%@ include file="include/script.jsp" %>
</body>

</html>