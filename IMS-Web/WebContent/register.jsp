<%@ page session = "true" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>Sign Up</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
	
<script> 
function validate()
{ 

	 var fullname = document.form.fullname.value;
	 var email = document.form.email.value;
	 var username = document.form.username.value; 
	 var password = document.form.password.value;
	 var conpassword= document.form.conpassword.value;

if (fullname==null || fullname=="")
{ 
alert("Full Name can't be blank"); 
return false; 
}
else if (email==null || email=="")
{ 
alert("Email can't be blank"); 
return false; 
}
else if (username==null || username=="")
{ 
alert("Username can't be blank"); 
return false; 
}
else if(password.length<6)
{ 
alert("Password must be at least 6 characters long."); 
return false; 
} 
else if (password!=conpassword)
{ 
alert("Confirm Password should match with the Password"); 
return false; 
} 
} 
</script> 
	
</head>

<body>
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-form-title" style="background-image: url(images/bg-01.jpg);">
					<span class="login100-form-title-1">
						INVENTORY MANAGEMENT
					</span>
				</div>

				<form class="login100-form validate-form" name="form" action="RegisterServlet" method="post">
										
					<div class="wrap-input100 validate-input m-b-26" data-validate="Full Name is required">
						<span class="label-input100">Full Name:</span>
						<input id="fullname" class="input100" type="text" name="fullname" placeholder="Enter fullname">
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input m-b-26" data-validate="Email is required">
						<span class="label-input100">Email:</span>
						<input id="email" class="input100" type="text" name="email" placeholder="Enter email">
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input m-b-18" data-validate = "Password is required">
						<span class="label-input100">Password:</span>
						<input id="password" class="input100" type="password" name="password" placeholder="Enter password">
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input m-b-18" data-validate = "Confirm password">
						<span class="label-input100">Re-enter Password:</span>
						<input id="conpassword" class="input100" type="password" name="conpassword" placeholder="Confirm password">
						<span class="focus-input100"></span>
					</div>
					
					<div class="container-login100-form-btn">
						<input type="submit" value="Register"  onclick="return validate();" style="margin-left: -110px;margin-top: 20px;" class="login100-form-btn"></input>
						<input type="reset" value="Reset" style="margin-left: 10px;margin-top: 20px;" class="login100-form-btn"></input>
					</div> 
					
					<div>
						<%=(request.getAttribute("errMessage") == null) ? "" : request.getAttribute("errMessage")%>
					</div>
					<div>
					
						<p style="padding-left:10px; padding-top:10px;color:white;">Already have an account?&nbsp; &nbsp;&nbsp;<a style="color:white;" href="login.jsp"> Login</a></p>						
					</div>
					
					
				</form>
				
	
			</div>
		</div>
	</div>
	
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
	<script src="vendor/animsition/js/animsition.min.js"></script>
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="vendor/select2/select2.min.js"></script>
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
	<script src="vendor/countdowntime/countdowntime.js"></script>
	<script src="js/main.js"></script>


</body>
</html>
