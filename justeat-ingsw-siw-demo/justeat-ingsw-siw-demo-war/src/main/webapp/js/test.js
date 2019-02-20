/*var pageCounter = 1;
var animalContainer = document.getElementById("prova");
var prova=animalContainer.getAttribute("data-prodnumber");

var btn = document.getElementById("btn");


function Utente(nome_Utente, cognome_Utente, indirizzo_Utente, password, carta_Credito_Usata, numero_telefono_utente,email_Utente){
	this.nome=nome_Utente;
	this.cognome=cognome_Utente;
	this.indirizzo=indirizzo_Utente;
	this.password=password;
	this.carta=carta_Credito_Usata;
	this.numero=numero_telefono_utente
	this.email=email_Utente;
}


btn.addEventListener("click", function() {
	  var ourRequest = new XMLHttpRequest();
	  
  var htmlString ="<p>" +prova+ "</p>";
	  
	 
	 
		  
	  

	  animalContainer.insertAdjacentHTML('beforeend', htmlString);


	  ourRequest.onerror = function() {
	    console.log("Connection error");
	  };
	 // ourRequesr.open('GET', prova, true);
	  ourRequest.send();
	  pageCounter++;
	  if (pageCounter > 3) {
	    btn.classList.add("hide-me");
	  }
	  
	});

function renderHTML(data) {
  var htmlString ="<p>" +"cacca"+ "</p>";

  

  animalContainer.insertAdjacentHTML('beforeend', htmlString);
}*/


function mostraScuola(){

	$.ajax({
		type: "POST",
		url: "home",
		success: function (){
			console.log('ciaoooo');
		}
	});
}