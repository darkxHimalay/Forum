<%--
  Created by IntelliJ IDEA.
  User: HIMGIRI
  Date: 29-03-2018
  Time: 02:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en" >

<head>
    <meta charset="UTF-8">
    <title>E-Tech Forum</title>


    <link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300,600'>
    <style>
        *{
            margin: 0px auto;
            padding: 0px;
            font-family: 'Open Sans', sans-serif;
        }
        .cont_principal {
            position: absolute;
            width: 100%;
            height: 100%;
            /* Rectangle 3:
            background-image: linear-gradient(-87deg, #F2F5F6 0%, #DDE5E8 100%);*/
            background-image:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAARwAAACxCAMAAAAh3/JWAAAA9lBMVEXkoAH////jnQDppADjnADjnwP+//zmoQCcAADjowDimgDgnADkoQD0uQD///jfmQD/yxr6yDb11n79zzOvewnpvF/48dn5wBrpqgDlrTfq6+7h4eOGXwX39eXMlZXcjwDov2jqwnXlqyz70Un87sL23ZK4TBC4UAibABmkJjrJcR7WhwXMdQnFiguSAACtNAaZbQra1LbP0cjwzoCxOwDfubayRRnmsFrQkgXqv5Hnr5Djnn3RlHjnp4fmt3PkpR3037h7Vg3szcKkdAliRQjsyITv1p/36crlzc7GThFbGwCeiYJmQjSnPADbe1Xsy6j25N7uwK7t04uYAAAB0ElEQVR4nO3XW08TURQG0Ll0GIYOY1XuUgoiotJiVdQigogK3sX//2espjwYefA8kJbJWkkfT7LPzrf36UQRAAAAAAAAAAAAAAAAAAAAAAAAAAAA11M+7gImVl5GgyzJxl3GRMoHzaj5Ns164vOvvNlP362m/d64C5lM/V76fjA3kJzL5Fk+KDO9ucRwF2dFUURZFiXjrmXCzDSyl/uvDl4fHO4febD+9uZ44+jk8NPnL1+/fT/50Rx3OVcoyYqZwMkoF+J46vzk59D5yvHM1dQ1EZL16uxD0UmLgCPR6VR84bTOzWmcDW9Yre1tl/9/JmkU7YvmzNd5IZfVnzt+3O0EZCdqbIx60671ylke3XKtE3SusVC14+Fwrdc5OMn6RQTCdkd2d7N1L463GldU10RIRvMxVd0Iy0Daat28dXu21n9zkvlRchZCX53F1mxzKavzVEXR8u/NsXIn3gi+5lLA+3Y9lUVVbW0+efoseHlkWa1Haijf2Xve3lxce9EN/r7O0zSt90d5uT394OGj+7vTj0NnJO/1V/tz9Q5P3tnpdrs7nfDgDJuzWvPmRGVZFsNf+HKt/1gBAAAAAAAAAAAAAAAAAAAAAAAAAABcB78AdRIbXEanY0EAAAAASUVORK5CYII=);
        }
        .cont_centrar {
            position: absolute;
            width: 320px;
            left:50%;
            top:50%;
            margin-left: -160px;
            margin-top: -250px;
        }
        .cont_centrar {
            position: relative;
            width: 320px;
            float: left;
            background-image: linear-gradient(-226deg, #FFFFFF 8%, #EEF3F5 100%);
            border-radius: 8px;
            transition: all 0.5s;
        }
        .cent_active {
            box-shadow: 5px 5px 10px 0px rgba(0,0,0,0.21);
        }
        .cont_tabs_login {
            position: relative;
            float: left;
            width: 100%;
        }
        .ul_tabs > li {
            position: relative;
            float: left;
            width: 50%;
            list-style: none;
            text-align: center;
        }
        .ul_tabs > li > a  {
            text-decoration: none;
            font-family: Helvetica;
            font-size: 16px;
            color: #999;
            line-height: 14px;
            padding: 20px ;
            display: block;
            transition: all 0.5s;
        }
        .ul_tabs > .active > a  {
            color: #FFC200;
        }
        .linea_bajo_nom {
            position: relative;
            width: 100%;
            float: left;
            background-color: #999;
            height: 2px;
        }
        .active .linea_bajo_nom {
            position: relative;
            width: 100%;
            float: left;
            background-color: #FFC200;
            height: 2px;
        }
        .cont_text_inputs {
            position: relative;
            float: left;
            width: 100%;
            margin-top: 20px;
        }
        .input_form_sign {
            position: relative;
            float: left;
            width: 90%;
            border: none;
            border-bottom: 1px solid #B0BEC5 ;
            background-color: transparent;
            font-size: 12px;
            outline: none;
            transition: all 0.5s;
            height: 0px;
            margin: 0px;
            padding: 0px;
            opacity: 0;
            display: none;
        }
        .active_inp {
            margin: 5% 5% ;
            padding: 10px 0px;
            opacity: 1;
            height: 5px;
        }
        .input_form_sign:focus {
            border-bottom: 1px solid #FFC200;}

        .link_forgot_pass {
            position: relative;
            margin-top: 0px;
            margin-left: 30%;
            text-decoration: none;
            color: #999;
            font-size: 13px;
            display: none;
            float: left;
            transition: all 0.5s;
        }
        .cont_btn {
            position: relative;
            float: left;
        }

        .btn_sign {
            /* background: rgba(255,64,88,0.74);*/
            /*  box-shadow: 0px 2px 20px 2px rgba(255,114,132,0.50);*/
            background: rgba(255,194,0,0.74);
            box-shadow: rgba(255,244,34,0.50);
            border-radius: 8px;
            padding: 15px 30px;
            border: none;
            color: #fff;
            font-size: 14px;
            position: relative;
            float: left;
            margin-left: 100px;
            margin-top: 20px;
            margin-bottom: 20px;
            cursor: pointer;
        }
        .terms_and_cons {
            width: 70%;
            color: #999;
            font-size: 13px;
            transition: all 0.5s;
        }

        .d_none {
            display: none;
        }

        .d_block {
            display: block;
        }

        .cont_text_inputs > input:nth-child(1){
            transition-delay: 0.2s;
        }

        .cont_text_inputs > input:nth-child(2){
            transition-delay: 0.4s;
        }
        .cont_text_inputs > input:nth-child(3){
            transition-delay: 0.6s;
        }
        .cont_text_inputs > input:nth-child(4){
            transition-delay: 0.8s;
        }

    </style>
</head>

<body>

<div class="cont_principal">

    <div class="cont_centrar">
        <div class="cont_login">
            <div action="">
                <div class="cont_tabs_login">
                    <ul class='ul_tabs'>
                        <li class="active">
                            <a href="#" onclick="sign_in()">SIGN IN</a>
                            <span class="linea_bajo_nom">
        </span>
                        </li>
                        <li>
                            <a href="#up" onclick="sign_up()">SIGN UP</a>
                            <span class="linea_bajo_nom">
            </span>
                        </li>
                    </ul>
                </div>
            </div>
                <div class="cont_text_inputs">
                   <form action="LoginServlet">

                    <input type="text" class="input_form_sign " placeholder="USERNAME" name="name_us" />
                    <input type="text" class="input_form_sign d_block active_inp" placeholder="EMAIL" name="emauil_us" />
                    <input type="password" class="input_form_sign d_block  active_inp" placeholder="PASSWORD" name="pass_us" />
                    <input type="password" class="input_form_sign" placeholder="CONFIRM PASSWORD" name="conf_pass_us" />
                    <input type="text" class="input_form_sign" placeholder="bebo_reg_id" name="reg_id">
                    <input type="date" class="input_form_sign" placeholder="DOB" name="dob">
                    <a href="#" class="link_forgot_pass d_block" >Forgot Password ?</a>
                    <div class="terms_and_cons d_none">
                        <p><input type="checkbox" name="terms_and_cons" /> <label for="terms_and_cons">Accept  Terms and Conditions.</label></p>
                    </div>
                <div class="cont_btn">
                    <button  name="sign-sign-up-button" value="sign_in" class="btn_sign">SIGN IN</button>
                </div>
            </form>
        </div>
    </div>
</div>
    </div>
<script>
    function sign_up(){
        var inputs = document.querySelectorAll('.input_form_sign');
        document.querySelectorAll('.ul_tabs > li')[0].className="";
        document.querySelectorAll('.ul_tabs > li')[1].className="active";

        for(var i = 0; i < inputs.length ; i++  ) {
            if(i == 2  ){

            }else{
                document.querySelectorAll('.input_form_sign')[i].className = "input_form_sign d_block";
            }
        }
        setTimeout( function(){
            for(var d = 0; d < inputs.length ; d++  ) {
                document.querySelectorAll('.input_form_sign')[d].className = "input_form_sign d_block active_inp";
            }
        },100 );
        document.querySelector('.link_forgot_pass').style.opacity = "0";
        document.querySelector('.link_forgot_pass').style.top = "-5px";
        document.querySelector('.btn_sign').innerHTML = "SIGN UP";
        document.querySelector('.btn_sign').value="sign_up";
        setTimeout(function(){

            document.querySelector('.terms_and_cons').style.opacity = "1";
            document.querySelector('.terms_and_cons').style.top = "5px";

        },500);
        setTimeout(function(){
            document.querySelector('.link_forgot_pass').className = "link_forgot_pass d_none";
            document.querySelector('.terms_and_cons').className = "terms_and_cons d_block";
        },450);

    }
    function sign_in(){
        var inputs = document.querySelectorAll('.input_form_sign');
        document.querySelectorAll('.ul_tabs > li')[0].className = "active";
        document.querySelectorAll('.ul_tabs > li')[1].className = "";

        for(var i = 0; i < inputs.length ; i++  ) {
            switch(i) {
                case 1:
                    console.log(inputs[i].name);
                    break;
                case 2:
                    console.log(inputs[i].name);
                default:
                    document.querySelectorAll('.input_form_sign')[i].className = "input_form_sign d_block";
            }
        }
        setTimeout( function(){
            for(var d = 0; d < inputs.length ; d++  ) {
                switch(d) {
                    case 1:
                        console.log(inputs[d].name);
                        break;
                    case 2:
                        console.log(inputs[d].name);

                    default:
                        document.querySelectorAll('.input_form_sign')[d].className = "input_form_sign d_block";
                        document.querySelectorAll('.input_form_sign')[2].className = "input_form_sign d_block active_inp";

                }
            }
        },100 );
        document.querySelector('.terms_and_cons').style.opacity = "0";
        document.querySelector('.terms_and_cons').style.top = "-5px";

        setTimeout(function(){
            document.querySelector('.terms_and_cons').className = "terms_and_cons d_none";
            document.querySelector('.link_forgot_pass').className = "link_forgot_pass d_block";

        },500);

        setTimeout(function(){

            document.querySelector('.link_forgot_pass').style.opacity = "1";
            document.querySelector('.link_forgot_pass').style.top = "5px";
            for(var d = 0; d < inputs.length ; d++  ) {

                switch(d) {
                    case 1:
                        console.log(inputs[d].name);
                        break;
                    case 2:
                        console.log(inputs[d].name);

                        break;
                    default:
                        document.querySelectorAll('.input_form_sign')[d].className = "input_form_sign";
                }
            }
        },1500);
        document.querySelector('.btn_sign').innerHTML = "SIGN IN";
    }
    window.onload =function(){
        document.querySelector('.cont_centrar').className = "cont_centrar cent_active";

    }
</script>
</body>
</html>
<!--<!DOCTYPE HTML>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Login</title>
    <style>
        * {
            -moz-box-sizing: border-box;
            box-sizing: border-box;
        }

        body {
            background: #809cff;
            font-family: "Comic Sans MS", cursive, sans-serif;
            background:
                    url(http://idolza.com/a/f/d/design-hd-wallpaper-wood-background_cool-designs-wallpaper_christmas-decor-photos-bathroom-decoration-ideas-home-trends-2014-ceiling-canopy-for-bed-modern-bedside-lamps-black-furnitur.jpg);
        }

        .Title {
            text-align: center;
            margin-left: 0;
            margin-right: 0;
        }

        .tag-line {
            text-align: center;
            /*position:center;
        left:0;
        right:0;*/
            margin-left: 0;
            margin-right: 0;
            font color: white;
        }

        .text-center p-t-12 {
            position: relative;
            right: 30rem;
        }

        .txt2 {
            font-family: "Comic Sans MS", cursive, sans-serif;
            font-size: 15px;
            position: relative;
            left: 30px;
            top: 112px;
            line-height: 1.5;
            color: #944f38;
        }

        .login {
            position: absolute;
            top: 50%;
            left: 50%;
            margin: -10rem 0 0 -10rem;
            width: 20rem;
            height: 20rem;
            padding: 20px;
            background: white;
            border-radius: 5px;
            overflow: hidden;
        }

        .login:hover>.login-header, .login.focused>.login-header {
            width: 2rem;
        }

        .login:hover>.login-header>.text, .login.focused>.login-header>.text {
            font-size: 0.6rem;
            transform: rotate(-90deg);
        }

        .login.loading>.login-header {
            width: 20rem;
        }

        .login.loading>.login-header>.text {
            display: none;
        }

        .login.loading>.login-header>.loader {
            display: block;
        }

        .login-header {
            position: absolute;
            left: 0;
            top: 0;
            z-index: 1;
            width: 20rem;
            height: 20rem;
            background-color: #944f38;
            transition: width 0.5s ease-in-out;
        }
        .login-header>.text {
            display: block;
            width: 100%;
            height: 100%;
            font-size: 40px;
            text-align: center;
            line-height: 20rem;
            color: #fff;
            transition: all 0.5s ease-in-out;
        }
        .login-header>.loader {
            display: none;
            position: absolute;
            left: 5rem;
            top: 5rem;
            width: 10rem;
            height: 10rem;
            border: 2px solid #fff;
            border-radius: 50%;
            animation: loading 2s linear infinite;
        }
        .login-header>.loader:after {
            content: "";
            position: absolute;
            left: 4.5rem;
            top: -0.5rem;
            width: 1rem;
            height: 1rem;
            background: #fff;
            border-radius: 50%;
            border-right: 2px orange;
        }
        .login-header>.loader:before {
            content: "";
            position: absolute;
            left: 4rem;
            top: -0.5rem;
            width: 0;
            height: 0;
            border-right: 1rem solid #fff;
            border-top: 0.5rem #944f38;
            border-bottom: 0.5rem solid transparent;
        }
        @keyframes loading { 50% {opacity: 0.5;}100%{transform:rotate(360deg);}}
        .login-form {
            margin: 0 0 0 2rem;
            padding: 0.5rem;
        }
        .login-input {
            display: block;
            width: 100%;
            font-size: 1.5rem;
            padding: 0.5rem 1rem;
            box-shadow: none;
            border-color: #ccc;
            border-width: 0 0 2px 0;
        }

        .login-input+.login-input {
            margin: 10px 0 0;
        }

        .login-input:focus {
            outline: none;
            border-bottom-color: #944f38;
        }

        .login-input:focus {
            outline: none;
            border-bottom-color: #944f38;
        }

        .login-btn {
            position: absolute;
            right: 1rem;
            bottom: 1rem;
            width: 5rem;
            height: 5rem;
            border: none;
            background: #944f38;
            /*border-radius:;*/
            font-size: 0;
            border: 0.6rem solid transparent;
            transition: all 0.3s ease-in-out;
        }

        .login-btn:after {
            content: "";
            position: absolute;
            left: 1rem;
            top: 0.8rem;
            width: 0;
            height: 0;
            border-left: 2.4rem solid #fff;
            border-top: 1.2rem solid transparent;
            border-bottom: 1.2rem solid transparent;
            transition: border 0.3s ease-in-out 0s;
        }

        .login-btn:hover, .login-btn:focus, .login-btn:active {
            background: #fff;
            border-color: #944f38;
            outline: none;
        }

        .login-btn:hover:after, .login-btn:focus:after, .login-btn:active:after
        {
            border-left-color: #944f38;
        }
    </style>
</head>
<body>
<div class="Title">
    <h1><font color="white">E-tech Forum</font></h1>
</div>
<div class="tag-line">
    <h2><font color="white">where learning becomes Easy</font></h2>
</div>
<div class="login">
    <header class="login-header">
        <span class="text">E-tech Login</span><span class="loader"></span>
    </header>
    <form action="LoginServlet" class='login-form' name="myform"  onsubmit="validate()" >
        <input class="login-input" type="text" name="bebo_reg_ID" placeholder="BEBO Reg. ID" />
        <input class="login-input" type="password" name="password_bebo" placeholder="Password" />
        <button class="login-btn" type="submit" name="login_Sign_in" value="login">Login</button>
    </form>
    <div class="text-center p-t-12">
        <span class="txt1"><a class="txt2" href='http://localhost:8080/E-Tech_forum/signUp.html'>New User/Click_Here </a></span>
    </div>
</div>
</body>
</html>-->