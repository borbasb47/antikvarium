<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Androméda Antikvárium</title>
    <style>
        .registrationForm{
            display: none;
        }
        .loginForm{
            display: none;
        }
        .registerPageTitleText{
        }
    </style>
    
</head>
<body>
    <?php 
    //echo $_SESSION["hasAddress"]
    ?>
    <button id="registrationButton">Regisztrálás</button>
    <button id="loginButton">Bejelentkezés</button>

    <h3 class="registerPageTitleText" id="registerPageTitleText"></h3>
    
    <!-- Regisztrálás -->
    <form action="/1017projekt/registration" class="registrationForm" id="registrationForm" method="POST">
        <h4>email</h4>
        <input type="text" id="email" name="email">
        <br>
        <br>
        <h4>jelszó</h4>
        <input type="text" id="password" name="password">
        <br>
        <br>
        <h4>jelszó mégegyszer</h4>
        <input type="text" id="passwordAgain" name="passwordAgain">
        <input type="hidden" id="hiddenInputRegistration" name="hiddenInput" value="">
        <button id="submitData" name="submitData">Submit</button>
    </form>
    
    <!-- Bejelentkezés -->
    <form action="/1017projekt/registration" class="loginForm" id="loginForm" method="POST">
        <h4>email</h4>
        <input type="text" id="loginEmail" name="loginEmail">
        <br>
        <br>
        <h4>jelszó</h4>
        <input type="text" id="loginPassword" name="loginPassword">
        <input type="hidden" id="hiddenInputLogin" name="hiddenInput" value="">
        <button id="submitData" name="submitData">Submit</button>
    </form>


    <script>
        var registerPageTitleText=document.getElementById("registerPageTitleText");
        var registrationForm=document.getElementById("registrationForm");
        var loginForm=document.getElementById("loginForm");
        var regButton=document.getElementById("registrationButton");
        var loginButton=document.getElementById("loginButton");
        
        regButton.onclick = function(){
            loginForm.style.display="none";
            registrationForm.style.display= "block";
            registerPageTitleText.innerHTML="Regisztrálás";
            registerPageTitleText.style.color="red";
            document.getElementById("hiddenInputRegistration").value="register";
        }

        loginButton.onclick = function(){
            registrationForm.style.display= "none";
            loginForm.style.display="block";
            registerPageTitleText.innerHTML="Bejelentkezés";
            registerPageTitleText.style.color="blue";
            document.getElementById("hiddenInputLogin").value="login";
        }
    </script>
</body>
</html>