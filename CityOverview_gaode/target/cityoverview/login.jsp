<%--
  Created by IntelliJ IDEA.
  User: tonghao
  Date: 2017/10/23
  Time: 15:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <style>
        *{
            color:#fff;
            font-family: "微软雅黑", Helvetica, Arial, sans-serif;
        }
        p{
            padding:0;
            margin:0;
        }
        body{
            background-image: url(images/login.png);
            position: relative;
        }
        h1{
            text-align: center;
            color:#67DEF4;
        }
        .box{
            margin-left:50%;
            margin-top:25%;
            position: absolute;
            top:0;
            text-align: center;
            left:-150px;
            top:-200px;
            width:300px;
            height:400px;
        }
        .box p{
            text-align: center;
        }
        .box p.user,.box p.passWord{
            border-bottom: 1px solid #484848;
            text-align: left;
        }
        .box p.user span,.box p.passWord span{
            border-bottom: 1px solid #fff;
            display: inline-block;
            position: relative;
            top:1px;
            width:16%;
            margin-top:40px;
        }
        .box p input{
            background: transparent;
            border: none;
            width:84%;
            padding-left:20px;
            outline: medium;
        }
        #dl{
            border-radius: 50px;
            width: 100%;
            background-color: #44CAE3;
            border: none;
            padding: 10px;
            margin-top: 40px;
            color:black;
            cursor: pointer;
            outline: 0;
        }
        /*保存成功提示消息*/
        #warnning{
            width: 262px;
            height: 94px;
            color: #0CDAF4;
            font-weight: bold;
            background-color: rgba(119,119,119,0.3);
            border: 1px solid rgba(203,203,203,0.5);
            text-align: center;
            position: fixed;
            right:0.4em;
            bottom: 0.4em;
            display: none;
        }
        #warnning>div{
            /*width: 262px;*/
            line-height: 94px;
            display: inline-block;
            vertical-align: middle;
            margin: auto;
            text-align: center;

        }
        #loginFalse{
            display: none;
        }
        #warnning>div>img,#warnning>div>span{
            float: left;
            margin-left: 0.4em;
        }
        #warnning>div>img{
            padding:36px 0;
        }
        #warnning>div>span{
            color: #0cdaf5;
            font-size: 1.2em;
        }
        /*关闭按钮*/
        #warnning>span{
            width: 10px;
            height: 10px;
            position: absolute;
            right: 5px;
            top: 2px;
            cursor: pointer;
        }
    </style>
</head>
<body>
<h1>嘉兴城市综合运营管理中心</h1>
<div class="box">
    <form class="form-control" id="formlogin">
        <p>登&nbsp;&nbsp; 录</p>
        <p>LOGIN</p>
        <p class="user"><span>用户名</span><input type="text" id="username" name="username" class="form-control" required autofocus  autocomplete="off"/></p>
        <p class="passWord"><span>密&nbsp;&nbsp;&nbsp;码</span><input type="password" id="password" name="password" class="form-control" required  autocomplete="off"/></p>
        <button type="button" id="dl">登&nbsp;&nbsp;&nbsp;录</button>
    </form>
</div>

<%--登录状态提示--%>
<div id="warnning">
    <div id="loginTrue"><img src="images/login-true.png" alt=""><span id="success_span">登录成功</span></div>
    <div id="loginFalse"><img src="images/login-false.png" alt=""><span id="false_span">该用户已被禁用,请联系管理员</span></div>
    <span>x</span>
</div>
<script type="text/javascript" src="myjs/jquery-2.1.4.js"></script>
<script>
    //保存按钮隐藏
    $("#warnning span").click(function(){
        $("#warnning").hide();
    });
    var LOGIN = {
        checkInput:function() {
            if ($("#username").val() == "") {
                alert("用户名不能为空");
                $("#username").focus();
                return false;
            }
            if ($("#password").val() == "") {
                alert("密码不能为空");
                $("#password").focus();
                return false;
            }
            return true;
        },
        doLogin:function() {
            $.ajax({
                type: 'post',
                url: 'manage/login/login.do',
                data: $("#formlogin").serialize(),
                success: function(data) {
                    if(data.status==200){
                        $("#loginFalse").hide();
                        $("#loginTrue").show();
                        $("#warnning").slideDown(1000,function(){
                            setTimeout("$('#warnning').slideUp(1000);location.href='<%=request.getContextPath()%>/main.jsp';",500);
                        })

                    }
                    if (data.status==400) {
                        $("#username").focus();
                        $("#loginTrue").hide();
                        $("#false_span").html(data.msg);
                        $("#loginFalse").show();
                        $("#warnning").slideDown(1000,function(){
                            setTimeout("$('#warnning').slideUp(1000);",500);
                        })
                    }
                }
            });
        },
        login:function() {
            if (this.checkInput()) {
                this.doLogin();
            }
        }
    };

    $(function () {
        $("#dl").click(function(){
            LOGIN.login();
        });
    })

    $("body").keydown(function() {
        if (event.keyCode == "13") {
            $('#dl').click();
        }
    });

</script>

</body>
</html>
