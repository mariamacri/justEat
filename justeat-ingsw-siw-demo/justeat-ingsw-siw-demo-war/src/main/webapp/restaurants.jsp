<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" 
prefix="c" %>

<!DOCTYPE html>

<html lang="it">

<head>
    <title>Lista Ristoranti</title>
     <%@ include file="include/headindex.jsp" %>
     <script src="js/Ristorante.js"></script>
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
       
            <!-- end:Top links -->
            <!-- start: Inner page hero -->
            <div class="inner-page-hero bg-image" data-image-src="img/profile-banner.jpg">
                <div class="container"> </div>
                <!-- end:Container -->
            </div>
            <div class="result-show"> </div>
            <!-- //results show -->
            <section class="restaurants-page">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12 col-sm-5 col-md-5 col-lg-3">
                            <div class="sidebar clearfix m-b-20">
                                <div class="main-block">
                                    <div class="sidebar-title white-txt">
                                        <h6>Scegli un tipo di Cucina</h6> <i class="fa fa-cutlery pull-right"></i> </div>
                                    <div class="input-group">
                                        <input type="text" class="form-control search-field" placeholder="Cerca il tuo cibo preferito"> <span class="input-group-btn"> 
                                 <button class="btn btn-secondary search-btn" type="button"><i class="fa fa-search"></i></button> 
                                 </span> </div>
                                    <form>
                                           <label>Categoria di Cucina</label>
      <br>
      <div class="btn-group" data-toggle="buttons">
        <label class="btn btn-primary" >
          <input type="checkbox" value="2" name="Italiana">
          Italiana</label>
        <label class="btn btn-primary" >
          <input type="checkbox" value="3" name="orientale">
          Orientale</label>
        <label class="btn btn-primary" >
          <input type="checkbox" value="4" name="FastFood">
          Fast Food</label>
        <label class="btn btn-primary" >
          <input type="checkbox" value="5" name="Pizzeria">
          Pizzeria</label>
        <label class="btn btn-primary" >
          <input type="checkbox" value="6" name="Bevande">
          Bevande</label>
        <label class="btn btn-primary" >
          <input type="checkbox" value="7" name="Braceria">
          Braceria</label>
        <label class="btn btn-primary" >
          <input type="checkbox" value="8" name="Paninoteca">
          Paninoteca</label>
        <label class="btn btn-primary" >
          <input type="checkbox" value="9" name="Altro">
          Altro</label>
      </div>
     <input type="button" value="Filtra ristoranti!" onClick="caricaElenco();"></input>
                                    </form>
                                    <div class="clearfix"></div>
                                </div>
                                <!-- end:Sidebar nav -->
                                <div class="widget-delivery">
                                    <form>
</form>
                                </div>
                            </div>
<!-- end:Pricing widget -->                          <!-- end:Widget -->
                        </div>
                      <div class="col-xs-12 col-sm-7 col-md-7 col-lg-9" id="ristorantiQUI">
						  
						    <!-- INIZIO FOR -->
                          <c:forEach items="${ristoranti}" var="ristor">
                         <div class="${ristor.getElencoCat()}"> 
	<div class="bg-gray restaurant-entry" id="${ristor.getElencoCat()}">
                                <div class="row">
                                    <div class="col-sm-12 col-md-12 col-lg-8 text-xs-center text-sm-left">
                                        <div class="entry-logo">
                                            <a class="img-fluid" href="foodprofilelist?partita_iva=${ristor.getPartita_Iva()}"><img src="img/logo6.png" alt="Food logo"></a>
                                        </div>
                                       
                                        <div class="ristorantiQUI">
                                            <h5><a href="#">${ristor.getNome_Ristorante()}</a></h5> 
											<p>${ristor.getIndirizzo_Ristorante()} </p>
											<p class="cat">${ristor.getElencoCat()} </p>
											
                                            <ul class="list-inline">
                                                <li class="list-inline-item"><i class="fa fa-check"></i>Spesa Minima: € ${ristor.getSpesa_minima()}</li>
                                            </ul>
                                        </div>
                                        
                                    </div>
                                    <div class="col-sm-12 col-md-12 col-lg-4 text-xs-center">
                                        <div class="right-content bg-white">
                                            <div class="right-review">
                                                <div class="rating-block"> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star-o"></i> </div>
                                               <a href="foodprofilelist?partita_iva=${ristor.getPartita_Iva()}" class="btn theme-btn-dash">Vedi Menù</a> </div>
                                        </div>
                                       
                                    </div>
                                </div>
                             
                            </div></div>
</c:forEach >
  
						     <!-- CHIUSURA FOR -->
                        
                </div>
            </section>
            <section class="app-section"> </section>
            
     
   <%@ include file="include/footer.jsp" %>
   
    </div>
    <!--/end:Site wrapper -->
    <!-- Bootstrap core JavaScript
    ================================================== -->
<%@ include file="include/script.jsp" %>
<script src="js/Ristorante.js"></script>
</body>

</html>