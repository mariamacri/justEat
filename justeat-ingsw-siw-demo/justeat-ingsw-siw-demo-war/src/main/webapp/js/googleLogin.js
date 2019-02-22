function onSignIn(googleUser) {
	var profile = googleUser.getBasicProfile();

	var email = profile.getEmail();
	var name = profile.getGivenName();
	var surname = profile.getFamilyName();

	$.ajax({
		url : 'sociallogin',
		data : "email=" + email + "&nome=" + name + "&cognome=" + surname + "&tipo=google",
		type : 'POST',
		cache : false,
		error : function() {
			alert('error');
		},
		async : false,
		success : function(response) {
			window.location = dispatcher;
		}
	});
}

var dispatcher = "";

function getCurrPage(page){
	dispatcher = page;
}


//SIGN OUT
function signOut() {
	var auth2 = gapi.auth2.getAuthInstance();
	auth2.signOut().then(function() {
		console.log('User signed out.');
	});
}


function onLoad() {
    gapi.load('auth2', function() {
      gapi.auth2.init();
    });
  }

function logoutGoogle() {
	signOut();
	console.log("logout");
	$.ajax({
		url : 'sociallogin',
		data : "",
		type : 'GET',
		success: function(){
			window.location = "login.jsp";
		}
	});
}