<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Todo App - Login</title>
<link rel="stylesheet" type="text/css" href="style.css">

<meta name="google-signin-client_id"
	content="628485492305-40ss5ddfpuaq2i3f5gp1g02etuasrdda.apps.googleusercontent.com">
<script src="http://code.jquery.com/jquery-3.5.1.min.js"
	integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
	crossorigin="anonymous"></script>
	  <script src="https://apis.google.com/js/api.js" async defer></script>



</head>

<body>


	<h3>
		<a href="register.jsp" style="color: black; text-decoration: none;">Register
			Page</a><span style="margin: 0px 20px;">|</span> <a
			style="border: 2px solid white; box-shadow: 0px 0px 3px 1.5px white; padding: 2px; background-color: white; border-radius: 8px;">Login
			Page</a>
	</h3>

	<div style="text-align: center">${message}</div>

	<div class="formBorder">

		<form action="login" method="post">
			<input type="text" name="username" placeholder="Enter UserName"
				id="field" required><br /> <br /> <input type="password"
				name="password" placeholder="Enter password" id="field" required><br />
			<br /> <input type="submit" id="button" value="Login">


		</form>
	</div>

	<script>
	function onSuccess(googleUser) {

		glogin = true;

		var profile = googleUser.getBasicProfile();

		//console.log('Signed in as: '
		//		+ profile.getName());
		// console.log('ID: ' + profile.getId()); // Do not send to your backend! Use an ID token instead.
		// console.log('Name: ' + profile.getName());
		//  console.log('Image URL: ' + profile.getImageUrl());
		//console.log('Email: ' + profile.getEmail());

		document.location.href = "/glogin?userName=" + profile.getName()
			+ "&id=" + profile.getId() + "&eMail=" + profile.getEmail()
			+ "";




	}
	</script>



	<div class="g-signin2" data-onsuccess="onSuccess"></div>
	

	<script src="https://apis.google.com/js/platform.js" async defer></script>


</body>
</html>