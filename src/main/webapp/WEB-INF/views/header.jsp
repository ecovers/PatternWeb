<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="Pragma" content="no-cache">
    <meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width,maximum-scale=1.2" />
    <title>HOMEPAGE TEST</title>
    <link rel="stylesheet" href="css/style.css?after">
    <link rel="stylesheet" href="css/main2.css?after">
    <script src="jquery-3.6.0.js"></script>
    <script src="js/main.js"></script>
    <script>
        document.addEventListener("contextmenu", function(event){
        event.preventDefault();
        alert('불펌 금지!');
        }, false);
    </script>
</head>
<body style="background-color: #f6f5ee">
    <div class="wrap">
        <header>
            <!--<a href="home.html" class="logo"><img src="css/logo.jpg" title="회사 로고"/></a>-->
            <h1><a href="home.html" class="logo" style="float:left; margin-left: 2em; font-size: 25px;">ecovers</a>
            <sub class="logo2" style="float:left; margin-top:2em; margin-left:-12em; margin-bottom:0px">LIFE TECHNOLOGY SERVICE</sub></h1>
            <div class="mBtn"><a href="javascript:;">메뉴열기</a></div>
            <nav class="mNav">
            
                <ul class="sub"></ul>

                   <div class="closeBtn"><a href="javascript:;"><!--메뉴닫기--></a></div>
                    <li><a href="home.html">Home</a></li>
                    <li><a href="about.html" >About</a></li>
                    <li><a href="corporation.html">Corporation</a></li>
                    <li><a href="business.html">Business</a></li>
                    <li><a href="contact.html">Contact Us</a></li>
               
            </nav>
        </header>
    </div>
    
</body>
</html>