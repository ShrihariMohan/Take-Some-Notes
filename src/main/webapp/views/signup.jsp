
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Sign Up</title>
    <style>
        input[type=email],[type=text],[type=password], select {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 6px;
            box-sizing: border-box;
        }

        input[type=submit] {
            width: 100%;
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            border-radius: 6px;
            cursor: pointer;
        }

        input[type=submit]:hover {
            background-color: #45a049;
        }

        .id1 {
            background:whitesmoke;
            width: 600px;
            padding-bottom: 1%;
            border-radius: 10px;
            box-shadow:
                    0 2.8px 2.2px rgba(0, 0, 0, 0.034),
                    0 6.7px 5.3px rgba(0, 0, 0, 0.048),
                    0 12.5px 10px rgba(0, 0, 0, 0.06),
                    0 22.3px 17.9px rgba(0, 0, 0, 0.072),
                    0 41.8px 33.4px rgba(0, 0, 0, 0.086),
                    0 100px 80px rgba(0, 0, 0, 0.12)
        }
    </style>
    <script type="text/javascript" src="js/noteBook/script.js"></script>
</head>
<body>
<center>
    <form action="createUser.do" name="myForm"  method="post" onsubmit="return validate()" >
        <div class="id1" >
            <table cellspacing="1">
                <tr><td><h1 style="text-align: center ; color: blueviolet;">Sign Up</h1></td></tr>
                <tr><td><div id="user_error" style="display:none; color:red;">UserName should not be empty</div></td></tr>

                <tr><td>
                    <label for="email" style="color: blueviolet;"><b>Username</b></label>
                    <input type="text"placeholder="Enter Username" id="userName" name="userName"
                    >
                </td></tr>
                <tr><td>
                    <div id="mobile_error" style="display:none; color:red;">Invalid Mobile Number</div>
                </td></tr>
                <tr><td>
                    <label for="email" style="color: blueviolet;"><b>Mobile Number</b></label>
                    <input type="text"placeholder="Enter Mobile Number" id="mobileNumber" name="mobileNumber" >
                </td></tr>
                <tr><td>
                    <div id="email_error" style="display:none; color:red;">Invalid mail type</div>
                </td></tr>
                <tr><td>
                    <label for="email" style="color: blueviolet;"><b>Email</b></label>
                    <input type="email" placeholder="Enter Email" name="email" id="email" ></td></tr>
                <tr><td><div id="password1_error" style="display:none; color:red;">Password cannot be empty</div></td></tr>
                <tr><td>
                    <label for="email" style="color: blueviolet;" ><b>Password</b></label>
                    <input type="password"placeholder="Enter Password" id="password" name="password">
                </td></tr>
                <tr style="text-align: center;"><td><div id="password_error" style="display:none; color:red;">Password and Confirm password does not match</div></td></tr>
                <tr><td>
                    <label for="email" style="color: blueviolet;"><b>Confirm Password</b></label>
                    <input type="password"placeholder="Enter Password Again" name="cpassword" id="cpassword" ></td></tr>
                <tr><td><input type="submit" value="Submit"id="submit"></td></tr>
                <tr style="text-align: center;"><td>Already a member?<a href="index.do"> Login</a></td></tr>
            </table>
        </div>
    </form>
</center>
</body>
<script>
    function validate() {
        var flag = true;
        var userName = document.getElementById("userName").value;
        var mobile = document.getElementById("mobileNumber").value;
        var password = document.getElementById("password").value;
        var email = document.getElementById("email").value;
        var cpassword = document.getElementById("cpassword").value;
        if (password =="") {
            flag = false;
            document.getElementById("password1_error").style.display = 'block';
        } else {
            document.getElementById("password1_error").style.display = 'none';
        }
        if (password != cpassword) {
            flag = false;
            document.getElementById("password_error").style.display = 'block';
        } else {
            document.getElementById("password_error").style.display = 'none';
        }
        if (mobile == "") {
            flag = false;
            document.getElementById("mobile_error").style.display = 'block';
        } else{
            document.getElementById("mobile_error").style.display = 'none';
            if (mobile.length != 10) {
                document.getElementById("mobile_error").style.display = 'block';
                flag = false;
            }
            else{
                document.getElementById("mobile_error").style.display = 'none';
            }
        }
        if (userName == "") {
            flag = false;
            document.getElementById("user_error").style.display = 'block';
        } else{
            document.getElementById("user_error").style.display = 'none';
        }
        if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(email) == false) {
            flag = false;
            document.getElementById("email_error").style.display = 'block';
        } else{
            document.getElementById("email_error").style.display = 'none';
        }
        return flag;

    }
</script>
</html>