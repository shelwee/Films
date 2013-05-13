<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>放映时刻表-康美电影城</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="<%=path %>/css/common.css" type="text/css"/>
	<link rel="stylesheet" href="<%=path %>/css/head.css" type="text/css"/>
	<link rel="stylesheet" href="<%=path %>/css/side.css" type="text/css"/>
	<link rel="stylesheet" href="<%=path %>/css/foot.css" type="text/css"/>
	<link rel="stylesheet" href="<%=path %>/css/time.css" type="text/css"/>
	<link rel="stylesheet" href="<%=path %>/css/style.css" type="text/css"/>
	<link rel="stylesheet" href="<%=path %>/css/pagination.css" type="text/css"/>
	<link rel="stylesheet" href="<%=path %>/css/zhuanti_info_no3.css" type="text/css"/>
	<link rel="stylesheet" href="<%=path %>/css/film_info_hot.css" type="text/css"/>
	<script type="text/javascript" src="<%=path %>/js/jquery-1.4.4.min.js"></script>
	<script type="text/javascript" src="<%=path %>/js/jquery.idTabs.js"></script>
	<script type="text/javascript" src="<%=path %>/js/TopScroll.js"></script>

	<script type="text/javascript">
		function checkKeyWord()
{
	var keyWord = $("#keyWord").val();
  	var reg = /[\!\@#$%\^\&\*\(\)\_\-\+\=\~\`\\\/\<\,\>\.\?\:\;\{\[\}\]\，\。\；\“\‘\"\']/;
  	if(reg.test(keyWord))
  	{
  		 alert("搜索输入框出现无效字符!", null, {title: "提示信息"});
  		 return false;
  	}
  	else
  	{
  	  return true;
  	}
}
	</script>

	
  </head>
  
  <body>
    <div class="header">
    	<div class="header_1">
    	<div class="reg_login">
    	<ul>
    	<c:choose>
			<c:when test="${loginUser==null }">
				<li><a href="<%=path %>/relogin.do?flag=goReg" class="nav_1">注册</a>&nbsp;&nbsp;|&nbsp;&nbsp;</li>
    		<li><a href="<%=path %>/relogin.do?flag=goLogin" class="nav_1">登录</a>&nbsp;&nbsp;|&nbsp;&nbsp;</li>
    		</c:when>
			<c:otherwise>
				<li><a href="<%=path %>/relogin.do?flag=goUserHome" class="nav_1">${loginUser.uemail }</a>&nbsp;|&nbsp;</li>
				<li><a href="<%=basePath%>adminspace.do?flag=logout" title="退出系统" class="nav_1">安全退出</a>&nbsp;&nbsp;</li>
			</c:otherwise>
		</c:choose>    		
    	</ul> 	
    	</div><!-- end of reg_login -->
    	</div><!-- end of header_1 -->	
    	<div class="header_2">
    		<div class="logo_search">
    			<div class="logo"><a href="<%=path%>"> <img alt="logo" src="images/logo.png">  </a></div>
    			<div class="search_box">
			<form id="searchForm" action="<%=path %>/search.do?flag=search" method="post">
				<input id="keyWord" name="keyWord" type="text" value="影片/影院/帮助信息"/>
				<a class="search_sub" id="searchBtn" href="javascript:void(0)" title="搜索">搜索</a>
				<span>热搜：</span>
			<a class="key_word" onClick="gotoSearch(this)" href="javascript:void(0)" title="蝙蝠侠：黑暗骑士崛起">蝙蝠侠：黑暗骑士崛起</a><a class="key_word" onClick="gotoSearch(this)" href="javascript:void(0)" title="超凡蜘蛛侠">超凡蜘蛛侠</a></form>
		</div>
    		</div>
    	</div>
    	<div class="menu">
    	<!-- ${pageContext.request.contextPath}取得项目链接 -->
    	<ul>
    		<li>&nbsp;&nbsp;<a href="<%=path%>" class="nav_2">首页</a></li>
    		<li><a href="<%=path %>/index.do?flag=time" class="nav_2">放映时刻</a></li>
    		<li>&nbsp;&nbsp;&nbsp;<a href="<%=path %>/index.do?flag=filmIndex" class="nav_2">电影</a></li>
    		<li>&nbsp;&nbsp;&nbsp;<a href="<%=path %>/index.do?flag=help" class="nav_2">帮助中心</a></li>
    	</ul>
    	</div>
    </div><!-- end of header -->
<script type="text/javascript">
$("#keyWord").focusin(function(){
	if($(this).val() == "请输入您感兴趣的影片"){
		$(this).val("");
	}
}).focusout(function(){
	$(this).removeClass("on");
	if($(this).val() == ""){
		$(this).val("请输入您感兴趣的影片");
	}
});
	$("#searchBtn").click(function(){
		if(checkKeyWord()){
			$("#searchForm").submit();
		}else{
			return false;
		}
});
</script>