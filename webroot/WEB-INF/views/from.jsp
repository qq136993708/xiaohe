<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String basePath=request.getContextPath();
%>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <!-- <link rel="stylesheet" href=""> -->
    <title>Document</title>
    <link rel="stylesheet" href="<%=basePath %>/css/from.css">
</head>
<body>
    <div class="box">
     <div class="head">
         <img src="<%=basePath %>/img/6p_02.png" alt="">
     </div>
     <div class="text">
         <div class="text-area">您的问题反馈我们已经收到，感谢您的支持</div>
     </div>
     <div class="btn-groups">
            <a href="<%=basePath %>/index" class="btn btn-khaki">再写一条</a>
            <a href="javascript:void (0)" class="btn btn-green">退出</a>
        </div>
    </div>
    <script src="<%=basePath %>/js/act.js"></script>
</body>
</html>