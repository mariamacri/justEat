<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" 
prefix="c" %>

<!DOCTYPE html>

<html lang="it">

<head>
    <title>Checkout</title>
  
  <%@ include file="include/headindex.jsp" %>
  </head>
  
  
<body>
     <div class="site-wrapper animsition" data-animsition-in="fade-in" data-animsition-out="fade-out">
    <div class="site-wrapper">
             <!--header starts-->
        <header id="header" class="header-scroll top-header headrom">	
        <!-- .navbar -->    
         <%@ include file="include/navbar.jsp" %>
      
         <!-- .navbar end -->
        </header>
<!--header end-->

			
    
        <div class="page-wrapper">
         
            <div class="container m-t-30">
                <div class="widget clearfix">
                    <!-- /widget heading -->
                    <div class="widget-heading">
                        <h3 class="widget-title text-dark">
                                      Riassunto del carrello
                                    </h3>
                        <div class="col-sm-5">								  <c:forEach items="${carrello}" var="car">
                                 <div class="title-row"><h5>${car.getNome()}</h5></div>
									 <div class="form-group row no-gutter">
                                    <div class="col-xs-8"> </div>
                                    <div class="col-xs-4">
                                       <h6>Prezzo: ${car.getPrezzo()}</h6> 
                                    </div>
                                 </div> 
								  </c:forEach></div>
                    </div>
                    <div class="widget-body">
                        <form method="get">
                            <div class="row">
                                <div class="col-sm-6 margin-b-30">
<div class="row"> </div>
                                    <div class="row">
                                        <div class="col-sm-12">
                                           
                                    </div>
                                    <div class="row"> </div>
</div>
                                <div class="col-sm-6">
                                    <div class="cart-totals margin-b-20">
                                        <div class="cart-totals-title">
                                          <h4>Sommario Carrello</h4>
                                        </div>
                                        <div class="cart-totals-fields">
                                            <table class="table">
                                                <tbody>
                                                    <tr>
                                                        <td>Subtotale</td>
                                                        <td>€ ${tot}</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Costi di consegna</td>
                                                        <td>€2.00</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="text-color"><strong>Totale</strong></td>
                                                        <td class="text-color"><strong>€ ${totConsegna}</strong></td>
                                                    </tr>
													<label>Indirizzo di consegna:</label>
                                                <h6>${utente.getIndirizzo_Utente()}</h6> </div>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <!--cart summary-->
                                    <div class="payment-option">
                                        <ul class=" list-unstyled">
                                            <li>
                                                <label class="custom-control custom-radio  m-b-20">
                                                    <input id="radioStacked1" name="radio-stacked" type="radio" class="custom-control-input"> <span class="custom-control-indicator"></span> <span class="custom-control-description">Pagamento alla consegna</span>
                                                   <!-- <br> <span>Please send your cheque to Store Name, Store Street, Store Town, Store State / County, Store Postcode.</span> </label>-->
                                            </li>
                                            <li>
                                                <label class="custom-control custom-radio  m-b-10">
                                                    <input name="radio-stacked" type="radio" class="custom-control-input"> <span class="custom-control-indicator"></span> <span class="custom-control-description">Paga con carta:  </div>  <img src="img/paypal.jpg" alt="" width="90"></span> </label><label>Numero Carta Utilizzata:</label><h6>${utente.getCarta_Credito_Usata().getNumero_Carta()}</h6>
                                            </li>
                                        </ul>
                                        <p class="text-xs-center"> <a href="Creaordine" class="btn btn-outline-success btn-block">Paga Ora</a> </p>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <section class="app-section"> </section>
         
   <%@ include file="include/footer.jsp" %>
   
    </div>
    <!--/end:Site wrapper -->
    <!-- Bootstrap core JavaScript
    ================================================== -->
<%@ include file="include/script.jsp" %>
</body>

</html>