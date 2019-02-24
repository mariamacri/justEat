<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" 
prefix="c" %>

<!DOCTYPE html>

<html lang="it">

<head>
    <title>Menu Ristorante</title>
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
           
            <!-- start: Inner page hero -->
            <section class="inner-page-hero bg-image" data-image-src="img/profile-banner.jpg">
               <div class="profile">
                  <div class="container">
                     <div class="row">
                        <div class="col-xs-12 col-sm-12  col-md-4 col-lg-4 profile-img">
                           <div class="image-wrap">
                              <figure><img src="img/profile-image.jpg" alt="Profile Image"></figure>
                           </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8 profile-desc">
                           <div class="pull-left right-text white-txt">
                              <h6><a href="#">${ristor.getNome_Ristorante()}</a></h6>
                              <a class="btn btn-small btn-green">Open</a>
                              <p>${ristor.getElencoCat()}</p>
                              <ul class="nav nav-inline">
                                <li class="nav-item"> <a class="nav-link active" href="#"><em class="fa fa-check"></em>Spesa Minima: €  ${ristor.getSpesa_minima()}</a></li>
                                <li class="nav-item"> <a class="nav-link" href="#"></a></li>
                                <li class="nav-item ratings">
                                    <a class="nav-link" href="ritornaFeedback?partita_iva=${ristor.getPartita_Iva()}"> <span>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star-o"></i>
                                    </span> </a>
                                 </li>
                              </ul>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </section>
            <!-- end:Inner page hero -->
            <div class="breadcrumb">
               <div class="container">
                  <ul>
                     <li><a href="#" class="active">Home</a></li>
                     <li><a href="#">Lista Ristoranti</a></li>
                     <li>Profilo Ristorante</li>
                  </ul>
               </div>
            </div>
            <div class="container m-t-30">
               <div class="row">
                  <div class="col-xs-12 col-sm-4 col-md-4 col-lg-3">
                     <div class="sidebar clearfix m-b-20">
                        <div class="main-block">
                           <div class="sidebar-title white-txt">
                              <h6>Scegli un tipo di Cucina</h6>
                              <i class="fa fa-cutlery pull-right"></i> 
                           </div>
                           <ul>
                              <li><a href="#1" class="scroll active">Pizzeria</a></li>
                              <li><a href="#2" class="scroll">Bevande</a></li>
                              <li><a href="#3" class="scroll">Fast Food</a></li>
                              <li><a href="#4" class="scroll">Italiana</a></li>
                              <li><a href="#5" class="scroll">Orientale</a></li>
                              <li><a href="#6" class="scroll">Braceria</a></li>
                              <li><a href="#7" class="scroll">Paninoteca</a></li>
                           </ul>
                           <div class="clearfix"></div>
                        </div>
                        <!-- end:Sidebar nav -->
                        <div class="widget-delivery">
                           <form>
</form>
                        </div>
                     </div>
                     <!-- end:Left Sidebar -->                  </div>
                  <div class="col-xs-12 col-sm-8 col-md-8 col-lg-6">
<!-- end:Widget menu -->
					  <!-- inizio for -->
                     <div class="menu-widget" id="2">
                        <div class="widget-heading">
                           <h3 class="widget-title text-dark">Offerta del ristorante <a class="btn btn-link pull-right" data-toggle="collapse" href="#popular2" aria-expanded="true">
                              <i class="fa fa-angle-right pull-right"></i>
                              <i class="fa fa-angle-down pull-right"></i>
                              </a>
                           </h3>
                           <div class="clearfix"></div>
                        </div>
                       <div class="collapse in" id="popular2">
						    <!-- inizio for -->
              <c:forEach items="${pietanze}" var="pasto">
<div class="food-item">
                              <div class="row">
                                 <div class="col-xs-12 col-sm-12 col-lg-8">
                                    <div class="rest-logo pull-left">
                                       <a class="restaurant-logo pull-left" href="#"><img src="" alt="Food logo"></a>
                                    </div>
                                    <!-- end:Logo -->
                                    <div class="rest-descr">
                                       <h6><a href="#">${pasto.getNome()}</a></h6>
                                       <p> ${pasto.getDescrizione()}</p>
                                    </div>
                                    <!-- end:Description -->
                                 </div>
                                 <!-- end:col -->
                                 <div class="col-xs-12 col-sm-12 col-lg-4 pull-right item-cart-info"> <span class="price pull-left">Prezzo: € ${pasto.getPrezzo()} </span> 
									 <c:if test="${utente.getEmail_Utente() != null}">
									 <!--  <a href="AggiungiAlCarrelloTemp?nomePietanza=${pasto.getNome()}" class="btn btn-small btn btn-secondary pull-right" >&#43;</a>--> 
									 
									  <input id="payment-nav-link" type="button" value="&#43" onClick="piet=new pietanza('${pasto.getNome()}',${pasto.getPrezzo()},'${pasto.getDescrizione()}'); aggiungiPietanza(piet);"></input>
								  	</c:if> 
								  </div>
                              </div>
                              <!-- end:row -->
                           </div>
</c:forEach>
 <!-- Fine for -->

                        </div>
                        <!-- end:Collapse -->
                    </div>
					   <!-- FINE FOR -->
                     <!-- end:Widget menu -->                     <!--/row -->
                  </div>
                 <!-- end:Bar -->
                  <div class="col-xs-12 col-md-12 col-lg-3">
                     <div class="sidebar-wrap">
                        <div class="widget widget-cart">
                           <div class="widget-heading">
                              <h3 class="widget-title text-dark">
                                Il tuo carrello
                              </h3>
                              <div class="clearfix"></div>
                           </div>
                           <div class="order-row bg-white">
                              <div class="widget-body" id="carrel">
								  <!-- INIZIA FOR LISTA QUI -->
								   <c:forEach items="${carrello}" var="car">
                                 <!--<div class="title-row">${car.getNome()}<a href="togliUnaPietanza?nome=${car.getNome()}"><em class="fa fa-trash pull-right"></em></a></div>
									 <div class="form-group row no-gutter">
                                    <div class="col-xs-8"> </div>
                                    <div class="col-xs-4">
                                       <h6>Prezzo: ${car.getPrezzo()}</h6> 
                                    </div>
                                 </div> -->
								  </c:forEach> 
								  <!-- FINE FOR LISTA-->
                                  
                              </div>
                           </div>
                           <div class="order-row"> </div>
                           <!-- end:Order row -->
                           <div class="widget-delivery clearfix">
                              <form>
</form>
                           </div>
                           <div class="widget-body">
                              <div class="price-wrap text-xs-center" id="totaleQui">
                                 <p id="tot">Totale</p>
                                 <h3 class="value" id="totH3"><strong>€ </strong><strong id="strongInnerDiv">${tot}</strong></h3>
                                 <p id="spesMin">Ordine Minimo: ${ristor.getSpesa_minima()}</p>
								 
								  <div>
								  <c:if test="${utente.getEmail_Utente() != null}">
                                  <a href="confermaOrdine?partia_iva=${ristor.getPartita_Iva()}" class="btn theme-btn-dash">Paga Ora!</a> 
									</c:if></div>  
									  
									  </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <!-- end:Right Sidebar -->
               </div>
               <!-- end:row -->
            </div>
            <!-- end:Container -->
            <section class="app-section"> </section>
            
     
   <%@ include file="include/footer.jsp" %>
   
    </div>
    <!--/end:Site wrapper -->
    <!-- Bootstrap core JavaScript
    ================================================== -->
<%@ include file="include/script.jsp" %>
<script src="js/Pietanza.js"></script>
</body>

</html>