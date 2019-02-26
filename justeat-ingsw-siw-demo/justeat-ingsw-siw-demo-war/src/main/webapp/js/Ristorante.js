function ristorante(nome, indirizzo_ristorante, indirizzo_legale, partita_iva, banca, titolare, descrizione, utente, categorie){
	this.nome=nome;
	this.indirizzo_ristorante= indirizzo_ristorante;
	this.indirizzo_legale= indirizzo_legale;
	this.partita_iva= partita_iva;
	this.banca= banca;
	this.titolare= titolare;
	this.descrizione= descrizione;
	this.utente= utente;
	this.categorie= categorie;
	console.log(this.nome, this.indirizzo_ristorante, this.indirizzo_legale, this.partita_iva, this.banca, this.titolare, this.descrizione, this.utente, this.categorie);
}


function caricaElenco1(){

    var Italiana=  $('.active input[value="2"]').attr('name');
    var Orientale=  $('.active input[value="3"]').attr('name');
    var FastFood=  $('.active input[value="4"]').attr('name');
    var Pizzeria=  $('.active input[value="5"]').attr('name');
    var Bevande=  $('.active input[value="6"]').attr('name');
    var Braceria=  $('.active input[value="7"]').attr('name');
    var Paninoteca=  $('.active input[value="8"]').attr('name');
    var Altro=  $('.active input[value="9"]').attr('name');

   console.log(Italiana, Orientale, FastFood, Pizzeria, Bevande, Braceria, Paninoteca, Altro);

    var x;
    x=document.getElementsByClassName("cat");
  
    
    
  
    	for(var i = 0; i < x.length; i++){
    	       //do something to each div like
    		
    		
    		if(Italiana!=null){
    	    	if(!x[i].innerHTML.includes(Italiana))
    	    	{
    	 
    	    		var pippo=document.getElementsByClassName(x[i].innerHTML);
    	    	    for(var j=0; j<pippo.length; j++)
    	    	    	pippo[j].style.display = 'none';

    	    	}
    	    	
    		}
    		
    		
    		if(Orientale!=null){
    	    	if(!x[i].innerHTML.includes(Orientale))
    	    	{
    	 
    	    		var pippo=document.getElementsByClassName(x[i].innerHTML);
    	    	    for(var j=0; j<pippo.length; j++)
    	    	    	pippo[j].style.display = 'none';

    	    	}
    	    	
    		}
    		
    		
    		if(FastFood!=null){
    	    	if(!x[i].innerHTML.includes(FastFood))
    	    	{
    	    		var pippo=document.getElementsByClassName(x[i].innerHTML);
    	    	    for(var j=0; j<pippo.length; j++)
    	    	    	pippo[j].style.display = 'none';

    	    	}
    	    	
    		}
    		
    		if(Pizzeria!=null){
    	    	if(!x[i].innerHTML.includes(Pizzeria))
    	    	{
    	 
    	    		var pippo=document.getElementsByClassName(x[i].innerHTML);
    	    	    for(var j=0; j<pippo.length; j++)
    	    	    	pippo[j].style.display = 'none';

    	    	}
    	    	
    		}
    		
    		if(Bevande!=null){
    	    	if(!x[i].innerHTML.includes(Bevande))
    	    	{
    	 
    	    		var pippo=document.getElementsByClassName(x[i].innerHTML);
    	    	    for(var j=0; j<pippo.length; j++)
    	    	    	pippo[j].style.display = 'none';

    	    	}
    	    	
    		}
    		
    		if(Braceria!=null){
    	    	if(!x[i].innerHTML.includes(Braceria))
    	    	{
    	 
    	    		var pippo=document.getElementsByClassName(x[i].innerHTML);
    	    	    
    	    	    for(var j=0; j<pippo.length; j++)
    	    	    	pippo[j].style.display = 'none';

    	    	}
    	    	
    		}
    		
    		
    		if(Paninoteca!=null){
    	    	if(!x[i].innerHTML.includes(Paninoteca))
    	    	{
    	 
    	    		var pippo=document.getElementsByClassName(x[i].innerHTML);
    	    	    
    	    	    for(var j=0; j<pippo.length; j++)
    	    	    	pippo[j].style.display = 'none';

    	    	}
    	    	
    		}
    		
    		if(Altro!=null){
    	    	if(!x[i].innerHTML.includes(Altro))
    	    	{
    	    		var pippo=document.getElementsByClassName(x[i].innerHTML);
    	    	    
    	    	    for(var j=0; j<pippo.length; j++)
    	    	    	pippo[j].style.display = 'none';

    	    	}
    	    	
    		}
    		
    		
    	
    	   
    }
    
  //  var y=x[1].innerHTML;
 

}




function caricaElenco2(){
	
	
    var Italiana=  $('.active input[value="2"]').attr('name');
    var Orientale=  $('.active input[value="3"]').attr('name');
    var FastFood=  $('.active input[value="4"]').attr('name');
    var Pizzeria=  $('.active input[value="5"]').attr('name');
    var Bevande=  $('.active input[value="6"]').attr('name');
    var Braceria=  $('.active input[value="7"]').attr('name');
    var Paninoteca=  $('.active input[value="8"]').attr('name');
    var Altro=  $('.active input[value="9"]').attr('name');


    var x;
    x=document.getElementsByClassName("cat");

    
    
  
    	for(var i = 0; i < x.length; i++){
    	       //do something to each div like
    		
    		
    		
    		
    		// rende visibili quelle che hanno almeno una categoria
    		if(Italiana!=null){
    	    	if(x[i].innerHTML.includes(Italiana))
    	    	{
    	    		var pippo=document.getElementsByClassName(x[i].innerHTML);
    	    	    
    	    	    for(var j=0; j<pippo.length; j++)
    	    	    	pippo[j].style.display = 'block';
    	    	}
    		}
    		
    		
    		if(Orientale!=null){
    	    	if(x[i].innerHTML.includes(Orientale))
    	    	{
    	    		var pippo=document.getElementsByClassName(x[i].innerHTML);
    	    	    
    	    	    for(var j=0; j<pippo.length; j++)
    	    	    	pippo[j].style.display = 'block';
    	    	}
    		}
    		
    		
    		if(FastFood!=null){
    	    	if(x[i].innerHTML.includes(FastFood))
    	    	{

    	    		var pippo=document.getElementsByClassName(x[i].innerHTML);
    	    	    
    	    	    for(var j=0; j<pippo.length; j++)
    	    	    	pippo[j].style.display = 'block';
    	    	    
    	    	}
    		}
    		
    		if(Pizzeria!=null){
    	    	if(x[i].innerHTML.includes(Pizzeria))
    	    	{
    	    		var pippo=document.getElementsByClassName(x[i].innerHTML);
    	    	    
    	    	    for(var j=0; j<pippo.length; j++)
    	    	    	pippo[j].style.display = 'block';
    	    	}
    		}
    		
    		if(Bevande!=null){
    	    	if(x[i].innerHTML.includes(Bevande))
    	    	{
    	    		var pippo=document.getElementsByClassName(x[i].innerHTML);
    	    	    
    	    	    for(var j=0; j<pippo.length; j++)
    	    	    	pippo[j].style.display = 'block';
    	    	}
    		}
    		
    		if(Braceria!=null){
    	    	if(x[i].innerHTML.includes(Braceria))
    	    	{
    	    		var pippo=document.getElementsByClassName(x[i].innerHTML);
    	    	    
    	    	    for(var j=0; j<pippo.length; j++)
    	    	    	pippo[j].style.display = 'block';
    	    	}
    		}
    		
    		
    		if(Paninoteca!=null){
    	    	if(x[i].innerHTML.includes(Paninoteca))
    	    	{
    	    		var pippo=document.getElementsByClassName(x[i].innerHTML);
    	    	    
    	    	    for(var j=0; j<pippo.length; j++)
    	    	    	pippo[j].style.display = 'block';
    	    	}
    		}
    		
    		if(Altro!=null){
    	    	if(x[i].innerHTML.includes(Altro))
    	    	{
    	    		console.log(x[i].innerHTML);
    	    		var pippo=document.getElementsByClassName(x[i].innerHTML);
    	    	    
    	    	    for(var j=0; j<pippo.length; j++)
    	    	    	pippo[j].style.display = 'block';
    	    	}
    		}
    	   
    }
    

 

}