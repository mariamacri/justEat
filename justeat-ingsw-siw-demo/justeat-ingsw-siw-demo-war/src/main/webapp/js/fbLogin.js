window.fbAsyncInit = function() {
	FB.init({
		appId : '2106739232708694',
		autoLogAppEvents : true,
		cookie : true,
		xfbml : true,
		oauth  : true,
		version : 'v3.2'
	});
	//FB.AppEvents.logPageView(); 
	FB.getLoginStatus(function(response) {
		
		statusChangeCallback(response);
	});

};

(function(d, s, id){
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) {return;}
    js = d.createElement(s); js.id = id;
    js.src = "https://connect.facebook.net/en_US/sdk.js";
    fjs.parentNode.insertBefore(js, fjs);
  }(document, 'script', 'facebook-jssdk'));

function statusChangeCallback(response) {
	
	if (login) {
		//alert("LOGIN TRUE");
		if (response.status == 'connected') {
			//alert("CONNESSO");
			console.log('Logged and authenticated');
			testAPI();
		} else {
			//alert("NON CI ARRIVO");
			console.log('Not authenticated');
		}
	}
}

var login = false;
var dispatcher = "";

function checkLoginState(name) {
	login = true;
	dispatcher = name;
	FB.getLoginStatus(function(response) {
		
		statusChangeCallback(response);
	});
}

function testAPI() {
	//alert("sonoquiiiiiiii");
	FB.api('/me?fields=email,first_name,last_name',
			function(response) {
				if (response && !response.error) {
					buildProfile(response);
				}
			})
}

function buildProfile(user) {
	
	var name = user.first_name;
	var surname = user.last_name;
	var email = user.email;
	$.ajax({
		url : 'sociallogin',
		data : "email=" + email + "&nome=" + name + "&cognome=" + surname+ "&tipo=facebook",
		type : 'POST',
		cache : false,
		error : function() {
			alert('error');
		},
		async : false,
		success : function(response) {
			console.log(response)
			window.location = dispatcher;
			
		}
	});
}

function logoutFacebook() {

	FB.logout(function(response) {
		appId : '2106739232708694'
	});
	$.ajax({
		url : 'sociallogin',
		data : "",
		type : 'GET',
		cache : false,
		success : function(response) {
			window.location = 'login.jsp';
		}
	});
}