<%--
  Create By FangYan On 2017/10/31
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1><a>亲,您没有权限额</a></h1>
<h2><span>3</span>s后返回</h2>
<script src="myjs/jquery-2.1.4.js"></script>
<script>
    $(function(){
        var n=3;
        var timer=setInterval(function(){
            n--;
            $('span').html(n)
            if(n<=1){
                history.go(-1);
            }
        },1000);
    })
</script>
</body>
</html>
