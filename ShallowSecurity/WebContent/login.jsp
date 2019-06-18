<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.zx.UsePsql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<title>登录页</title>
 <style>

        .signform {
            font-family: 楷体;
            position: fixed;
            background-color: white;
            top: 20%;
            left: 30%;
            width: 500px;
            height: 400px;
            border-radius: 1em;
            text-align: center;
            z-index: 999;
            border:1px solid #000;
        }
        #registerform {
            height: 450px;
        }
        .signclose {
            cursor: pointer;
            float: right;
            overflow: hidden;
            text-align: center;
            position: relative;
            height: 35px;
            width: 35px;
            margin-top: 10px;
            margin-right: 10px;
        }
        #registerloading{
            position: absolute;
            width: 25px;
            height: 25px;
            left: 410px;
            top: 90px;
        }
        .signinput {
            text-align: center;
            border-radius: 0.2em;
            width: 280px;
            height: 45px;
            border: none;
            background-color:#f2f2f2;
            font-size: 28px;
        }
        .signinput::-webkit-input-placeholder {
            font-size: 26px;
        }
        .userdiv {
            position: relative;
            margin-top: 80px;
        }
        .pwddiv {
            position: relative;
            margin-top: 20px;
        }
        .postdiv {
            position: relative;
            margin-top: 20px;
        }
        .postdiv button {
            cursor: pointer;
            color: white;
            font-size: 26px;
            border: none;
            border-radius: 0.4em;
            width: 280px;
            height: 45px;
            background-color:#4CAF50;

        }

    </style>
        
</head>
<body>

<div>
    <button id="displaysign" class="btn btn-default btn-lg" onclick="start()">点击登录</button>
</div>
<div class="signform" id="signform" style="display: " >
    <div class="signclose">
        <img src="image/signclose.ico" width="35px" height="35px" onclick="signclose()">
    </div>
<form action="loginSo.jsp" method="post">
    <div class="userdiv">
    <input id="user"  class="signinput " type="text" placeholder="用户名" name="user" required>
    </div>

    <div class="pwddiv">
    <input id="pwd" class="signinput" type="password" placeholder="密码" name="pwd" required>

    </div>

    <div class="postdiv">
    <button type="submit" >登录</button>
    </div>
</form>
    <br>

    <div class="change" style="color: #4d4d4d">
        <p>还没有账号?赶快<a href="#" style="text-decoration: none;color: #43A047">注册</a>一个吧</p>
    </div>

</div>

<div class="signform" id="registerform" style="display: none">
        <div class="signclose">
            <img src="image/timg.jpg"onclick="signclose()">
        </div>
<form action="registSo.jsp" method="post">
        <div class="userdiv">
            <input  id="registeruser" class="signinput" onblur="loading()" type="text" placeholder="用户名" name="user" required>
        </div>

    <img src="image/signloading.gif" style="display: none" id="registerloading">
        <div class="pwddiv">
            <input  id="registerpwd" class="signinput" type="password" placeholder="密码" name="pwd" required>
        </div>

        <div class="pwddiv">
            <input  id="registerrepwd" class="signinput" type="password" placeholder="再次输入密码" name="rpwd" required>
        </div>

    <div class="postdiv">
    <button type="submit" >注册</button>
    </div>
</form>
        <br>

        <div class="change" style="color: #4d4d4d">
            <p>已有账号?立刻去<a href="#" style="text-decoration: none;color: #43A047">登录</a>吧</p>
        </div>

</div>
</body>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="./signformchange.js"></script>
<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</html>