function pietanza(nome, prezzo, descrizione){
	this.nome = nome;
	this.prezzo = prezzo;
	this.descrizione = descrizione;
	
}

function eliminaPietanza(piet){
	var p = {
			nome : piet.nome,
			prezzo: piet.prezzo,
			descrizione: piet.descrizione
		};
	
	$.ajax({
		type: "POST",
		url: "eliminapietanza",
		datatype: "json",
		data: JSON.stringify(p),
		success: function (data){
			alert("Pietanza eliminata con successo!");
			$( "p" ).remove( ":contains('Hello')" );
		}
	});
}

