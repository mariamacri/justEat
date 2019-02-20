//checkCookie();

function checkbox(){

	var x = document.getElementById("RememberMe").checked;	
	alert(x);
	if(x==true){
	setCookie();
	}
	if(x==false){
	
	}
}


function setCookie()
{
    checkCookie();
    var cname = "email";
    var cvalue = document.getElementById("email").value;
    var exdays = 7;
    var d = new Date();
    d.setTime(d.getTime()+(exdays*24*60*60*1000));
    var expires = "expires="+d.toGMTString();
    document.cookie = cname+"="+cvalue+"; "+expires;
}

function getCookie(cname)
{
    var name = cname + "=";
    var ca = document.cookie.split(';');
    for(var i=0; i<ca.length; i++) 
      {
      var c = ca[i].trim();
      if (c.indexOf(name)==0) return c.substring(name.length,c.length);
      }
    return "";
}

function checkCookie()
{
    var user = getCookie("email");
    if (user != "")
    {
       $.ajax({
		  type: "POST",
		   url: "cookieservlet",
		   datatype: "text",
		   data: user,
		   success: function(){
			   alert("Bentornato " +user);
			   
		   }  
	   });
			
    }
	
}

function deleteCookie()
{
	
}

