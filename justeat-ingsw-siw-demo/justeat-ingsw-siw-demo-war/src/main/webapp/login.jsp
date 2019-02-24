<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="it">
<head>
<title>Login</title>
<%@ include file="include/headuserzone.jsp"%>
<<<<<<< HEAD
<meta name="google-signin-client_id"
	content="822365688421-fas5patihtt42qo9og41stt07vp6q74g.apps.googleusercontent.com">

=======
<meta name="google-signin-client_id"
	content="896513826498-dt0g3641t1l2bb1o7jq5jrd9opeauckf.apps.googleusercontent.com.apps.googleusercontent.com">
>>>>>>> branch 'master' of https://github.com/mariamacri/justEat.git
</head>
<body>

	<!-- .navbar -->
	<nav class="navbar navbar-dark">
		<div class="container">
			<button class="navbar-toggler hidden-lg-up" type="button"
				data-toggle="collapse" data-target="#mainNavbarCollapse">&#9776;</button>
			<a class="navbar-brand" href="index.jsp"> <img alt=""
				src="https://d3fpaxu9zxkgws.cloudfront.net/assets/dist/img/logos/je-logo-v2.svg"
				width="152" height="50">
			</a>
			<div class="collapse navbar-toggleable-md  float-lg-right"
				id="mainNavbarCollapse">
				<ul class="nav navbar-nav">
					<!-- LISTA Home -->
					<li class="nav-item"><a class="nav-link active"
						href="index.jsp">Home <span class="sr-only">(current)</span></a></li>

					<!--  <h1>${utente.getEmail_Utente() }</h1>-->

					<!-- LISTA DA LOGGATO -->

				</ul>
			</div>
		</div>
	</nav>

	<!-- /.navbar -->

	<div class="u-horizontalRule">
		<main class="l-container l-pageContent l-singleCol singleBox">
		<!-- inizio form login -->
		<form class="form" name="loginform" action="inviaCredenziali"
			method="post">
			<fieldset class="form-fieldset">
				<h1 class="beta form-title">Accedi</h1>

				<div role="alert" aria-atomic="true"
					class="validation-summary-valid alert alert--danger"
					data-valmsg-summary="true" data-test-id="validationErrorSummary">
					<ul>
					</ul>
				</div>
				<!-- NOME UTENTE -->
				<div class="form-controlGroup">
					<label
						class="form-label js-showIfPlaceholderNotSupported is-visuallyHidden"
						for="email">Inserisci il tuo indirizzo email</label>
					<div class="form-controlGroup-inputWrapper">
						<input class="form-input" data-test-id="email" data-val="true"
							data-val-email="Inserisci il tuo indirizzo email valido"
							data-val-length="Inserisci il tuo indirizzo email valido"
							data-val-length-max="50"
							data-val-required="Inserisci il tuo indirizzo email" id="email"
							name="Email" placeholder="Inserisci il tuo indirizzo email"
							type="email" value=""> <span
							class="field-validation-valid has-error" data-valmsg-for="email"
							data-valmsg-replace="true"></span>
					</div>
				</div>

				<!-- PASSWORD -->
				<div class="form-controlGroup">
					<label
						class="form-label js-showIfPlaceholderNotSupported is-visuallyHidden"
						for="Password">Inserisci la tua password</label>
					<div class="form-controlGroup-inputWrapper">
						<input autocomplete="off" class="form-input"
							data-test-id="password" data-val="true"
							data-val-required="Inserisci una password" id="password"
							name="Password" placeholder="Inserisci la tua password"
							type="password"> <span
							class="field-validation-valid has-error"
							data-valmsg-for="Password" data-valmsg-replace="true"></span>
					</div>
				</div>
				<!-- PASS DIMENTICATA -->
				<p class="form-subtext">
					<a data-test-id="forgottenPassword"
						href="/account/reset-password/?returnUrl=%2F">Hai dimenticato
						la password?</a>
				</p>
				<!-- Ricorda login -->
				<div class="form-controlGroup">
					<div class="control">
						<input id="RememberMe" name="RememberMe" type="checkbox">

						<label for="RememberMe">Ricordami su questo computer</label>
						<p>Non selezionare se è un computer condiviso</p>
					</div>
				</div>
				<!-- Bottone Accedi-->
				<button name="Sign" id="Sign" type="submit" data-test-id="login"
					class="btn btn--primary btn--block submit" autocomplete="off"
					onClick="checkbox()">
					<span class="is-loading-hidden">Accedi</span>
				</button>



			</fieldset>


		</form>
		<!-- CHIUSURA FORM LOGIN --> <!-- APERTURA FORM FACEBOOKLOGIN -->

		
		<div class="socialBotton">
			<div class="fbButton">
				<div class="fb-login-button" add target="_blank" data-max-rows="1"
					data-size="large" data-button-type="continue_with"
					data-show-faces="false" data-auto-logout-link="false"
					data-use-continue-as="false" scope="public_profile,email"
					onlogin="checkLoginState('index.jsp');" add target="_blank">
				</div>
			</div>
			<div>
				<div class="form-group row justify-content-center" role="button"
					onclick="getCurrPage('login.jsp')">
					<div class="g-signin2" data-width="257" data-height="40"
						data-onsuccess="onSignIn" data-theme="dark">
						<div style="height: 40px; width: 257px;"
							class="abcRioButton abcRioButtonBlue">
							<div class="abcRioButtonContentWrapper">
								<div class="abcRioButtonIcon" style="padding: 10px">
									<div style="width: 18px; height: 18px;"
										class="abcRioButtonSvgImageWithFallback abcRioButtonIconImage abcRioButtonIconImage18">
										<svg version="1.1" xmlns="http://www.w3.org/2000/svg"
											width="18px" height="18px" viewBox="0 0 48 48"
											class="abcRioButtonSvg">
									<g>
									<path fill="#EA4335"
												d="M24 9.5c3.54 0 6.71 1.22 9.21 3.6l6.85-6.85C35.9 2.38 30.47 0 24 0 14.62 0 6.51 5.38 2.56 13.22l7.98 6.19C12.43 13.72 17.74 9.5 24 9.5z"></path>
									<path fill="#4285F4"
												d="M46.98 24.55c0-1.57-.15-3.09-.38-4.55H24v9.02h12.94c-.58 2.96-2.26 5.48-4.78 7.18l7.73 6c4.51-4.18 7.09-10.36 7.09-17.65z"></path>
									<path fill="#FBBC05"
												d="M10.53 28.59c-.48-1.45-.76-2.99-.76-4.59s.27-3.14.76-4.59l-7.98-6.19C.92 16.46 0 20.12 0 24c0 3.88.92 7.54 2.56 10.78l7.97-6.19z"></path>
									<path fill="#34A853"
												d="M24 48c6.48 0 11.93-2.13 15.89-5.81l-7.73-6c-2.15 1.45-4.92 2.3-8.16 2.3-6.26 0-11.57-4.22-13.47-9.91l-7.98 6.19C6.51 42.62 14.62 48 24 48z"></path>
									<path fill="none" d="M0 0h48v48H0z"></path></g></svg>
									</div>
								</div>
								<span style="font-size: 14px; line-height: 38px;"
									class="abcRioButtonContents"><span
									id="not_signed_ine9vs0aelgpe3">Accedi</span><span
									id="connectede9vs0aelgpe3" style="display: none">Signed
										in</span></span>
							</div>
						</div>

					</div>
				</div>
			</div>



			<!-- CHIUSURA FORM GOOGLELOGIN -->
			<div class="l-singleCol l-center-block">
				<p>
					Prima volta su Just Eat? <a href="registration.jsp"
						id="registerBtn">Crea un account</a>
				</p>
			</div>

			<div class="l-singleCol l-center-block u-separatedSpace--top">
				<p class="registerTerms">
					Creando un account accetti <a href="/termsandconditions"
						target="_blank">Termini e le condizioni d'uso</a>. Sei un Titolare
					di un Ristorante?<a href="/privacypolicy" target="_blank">Privacy</a>
					e sui <a href="/cookies-policy" target="_blank">Cookie</a>.
				</p>
			</div>
		</main>
	</div>



	<%@ include file="include/footer.jsp"%>

	</div>
	<!--/end:Site wrapper -->
	<!-- Bootstrap core JavaScript
    ================================================== -->
	<%@ include file="include/script.jsp"%>
	<script src="js/cookie.js"></script>
	<script src="js/googleLogin.js"></script>
	<script src="js/fbLogin.js"></script>
	<script
		src="https://apis.google.com/js/platform.js?onload=renderButton" async
		defer></script>
	<script src="https://apis.google.com/js/platform.js?onload=onLoad"
		async defer></script>
	<script src="https://apis.google.com/js/platform.js" async defer></script>

	<script src="https://apis.google.com/js/api.js"></script>
	<script src='http://connect.facebook.net/en_US/all.js'></script>


</body>
</html>
