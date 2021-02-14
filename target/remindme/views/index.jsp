<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>RemindMe</title>
	<style>
		input[type=email],[type=text],[type=password], select {
			width: 100%;
			padding: 12px 20px;
			margin: 8px 0;
			display: inline-block;
			border: 1px solid #ccc;
			border-radius: 4px;
			box-sizing: border-box;
		}

		input[type=submit] {
			width: 100%;
			background-color: #4CAF50;
			color: white;
			padding: 14px 20px;
			margin: 8px 0;
			border: none;
			border-radius: 4px;
			cursor: pointer;
		}

		input[type=submit]:hover {
			background-color: #45a049;
		}

		.id1 {
			background:whitesmoke;
			width: 600px;
			padding-bottom: 2%;
			border-radius: 10px;
			box-shadow:
					0 2.8px 2.2px rgba(0, 0, 0, 0.034),
					0 6.7px 5.3px rgba(0, 0, 0, 0.048),
					0 1.5px 10px rgba(0, 0, 0, 0.06),
					0 2.3px 17.9px rgba(0, 0, 0, 0.072),
					0 4.8px 33.4px rgba(0, 0, 0, 0.086),
					0 5px 20px rgba(0, 0, 0, 0.12)
		}
	</style>
	<script type="text/javascript" src="js/noteBook/script.js"></script>
</head>
<center>
	<body style="font-family:Arial, Helvetica, sans-serif">
	<center>
		<h1 style="color: blueviolet">Let's Take Some Notes</h1>
	</center>
	<div class="id1">
		<form action="loginSuccess.do"  method="post"  onsubmit="return validateUser()">
			<table cellspacing="2">
				<tr>
					<td><center><h2 style="color: blueviolet">Let's Go!</h2></center></td>
				</tr>
				<tr>
					<td><div id="error" style="color: red; display: block">${error}</div></td>
				</tr>
				<tr>
					<td><div id="message" style="color: red; display: block">${message}</div></td>
				</tr>
				<tr><td><div id="email_error" style="display:none; color:red;">Email Id cannot be empty</div></td></tr>
				<tr>
					<td>
						<label for="email" style="color: blueviolet"><b>Email</b></label>
						<input type="email" placeholder="Enter Email" name="email" id="email"></td>
				</tr>
				<tr><td><div id="password_error" style="display:none; color:red;">Password cannot be empty</div></td></tr>
				<tr>
					<td>
						<label for="email" style="color: blueviolet"><b>Password</b></label>
						<input type="password" placeholder="Enter Password"
							   name="password" id="password" ></td>
				</tr>
				<tr>
					<td><input type="submit" id="submit" value="Login">
				</tr><br><br>
				<center>
					<tr>
						<td><br><center>New Member?<a style="text-decoration: none;" href="signup.do"> Sign Up</a></center></td>
					</tr>
				</center>
			</table>
		</form>
	</div>
	<script>
		function validateUser() {
			var flag=true;
			var email = document.getElementById("email").value;
			var password = document.getElementById("password").value;
			if(password== ""){
				flag = false;
				document.getElementById("password_error").style.display = 'block';
			}
			else{
				document.getElementById("password_error").style.display = 'none';
			}
			if(email== "")
			{
				flag=false;
				document.getElementById("email_error").style.display= 'block';
			}
			else{
				document.getElementById("email_error").style.display= 'none';
			}


			return flag;

		}
	</script>
	</body>
</center>
</html>

