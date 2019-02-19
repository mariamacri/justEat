 <aside class="sidebar g-col g-span3--mid u-showAboveMid">
      <nav>
        <ul class="controlList unstyled">
         <li class="controlList-item is-active"> <a href="userPanel.jsp" id="account-nav-link">Account</a> </li>
			<c:if test="${ristorante==false}">
          <li class="controlList-item "> <a href="ordiniutente?email=${utente.getEmail_Utente()}" id="orders-nav-link">Ordini</a> </li>
				 </c:if>
			<c:if test="${ristorante==true}">
          <li class="controlList-item "> <a href="ordiniRicevuti?email=${utente.getEmail_Utente()}" id="orders-nav-link">Ordini</a> </li>
				 </c:if>
			
			<c:if test="${ristorante==true}">
				<li class="controlList-item"> <a href="lastOrders.jsp" id="orders-nav-link">Nuovi Ordini</a> </li>
          <li class="controlList-item"> <a href="ottieniRistorante?email=${utente.getEmail_Utente()}" id="credit-nav-link">Il mio Ristorante</a> </li>
        <li class="controlList-item "> <a id="payment-nav-link" href="pietanze?email=${utente.getEmail_Utente()}" >Menù Ristorante</a> </li></li>
        </c:if>
		  </ul>
      </nav>
    </aside>