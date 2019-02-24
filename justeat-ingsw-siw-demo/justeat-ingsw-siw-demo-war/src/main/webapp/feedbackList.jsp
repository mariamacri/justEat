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
                                    <a class="nav-link" href="#"> <span>
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
<div class="col-xs-12 col-sm-8 col-md-8 col-lg-12">
  <!-- end:Widget menu -->
  <!-- inizio for -->
  <div class="menu-widget" id="2">
                        <div class="widget-heading">
                           <h1 class="widget-title text-dark">Feedback Ristorante<a class="btn btn-link pull-right" data-toggle="collapse" href="#popular2" aria-expanded="true">
                              <i class="fa fa-angle-right pull-right"></i>
                              <i class="fa fa-angle-down pull-right"></i>
                              </a>
                           </h1>
                           <div class="clearfix"></div>
                        </div>
                       <div class="collapse in" id="popular2">
						    <!-- inizio for -->
              <c:forEach items="${feedbacks}" var="feedback">
<div class="food-item">       
                  <div class="row">
                    <div class="col-xs-12 col-sm-12 col-lg-8">
                                    <!-- end:Logo -->
						<h3>Feedback di: ${feedback.getUtente_recensore().getEmail_Utente()} </h3>
                                    <h5 class="listing-item-title"  >
										     <!-- 1 STELLA-->
										<c:if test="${feedback.getNumero_stelle() == 1}">
										
										<a class="nav-link" href="ritornaFeedback?partita_iva=${ristor.getPartita_Iva()}"> <span>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                    </span>
										
										
										</a>
											</c:if>	
		 <!-- 2 STELLE-->
											<c:if test="${feedback.getNumero_stelle() == 2}">
										
										<a class="nav-link" href="ritornaFeedback?partita_iva=${ristor.getPartita_Iva()}"> <span>
                                  <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                    </span>
										
										
										</a>
											</c:if>	
										 <!-- 3 STELLE-->
											<c:if test="${feedback.getNumero_stelle() == 3}">
										
										<a class="nav-link" href="ritornaFeedback?partita_iva=${ristor.getPartita_Iva()}"> <span>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                    </span>
										
										
										</a>
											</c:if>	
										 <!-- 4 STELLE-->
											<c:if test="${feedback.getNumero_stelle() == 4}">
										
										<a class="nav-link" href="ritornaFeedback?partita_iva=${ristor.getPartita_Iva()}"> <span>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star-o"></i>
                                    </span>
										
										
										</a>
											</c:if>
										 <!-- 5 STELLE-->
											<c:if test="${feedback.getNumero_stelle() == 5}">
										
										<a class="nav-link" href="ritornaFeedback?partita_iva=${ristor.getPartita_Iva()}"> <span>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    </span>
										
										
										</a>
											</c:if>	
											
					</h3>
				<p class="infoText">${feedback.getDescrizione()} </p>
                            
                                    <!-- end:Description -->
                     </div>
                     <!-- end:col -->
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
                 <!-- end:Bar -->                  </div>
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