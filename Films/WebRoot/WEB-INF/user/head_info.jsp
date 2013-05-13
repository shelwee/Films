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
    
    <title>我的资料-用户中心</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="<%=path %>/css/common.css" type="text/css"/>
	<link rel="stylesheet" href="<%=path %>/css/head.css" type="text/css"/>
	<link rel="stylesheet" href="<%=path %>/css/info.css" type="text/css"/>
	<link rel="stylesheet" href="<%=path %>/css/index.css" type="text/css"/>
	<link rel="stylesheet" href="<%=path %>/css/side.css" type="text/css"/>
	<link rel="stylesheet" href="<%=path %>/css/foot.css" type="text/css"/>
	<link rel="stylesheet" href="<%=path %>/css/imgareaselect-default.css" type="text/css"/>
	<script type="text/javascript" src="<%=path %>/js/jquery-1.4.4.min.js"></script>
	<script type="text/javascript" src="<%=path %>/js/jquery.idTabs.js"></script>
	<script type="text/javascript" src="<%=path %>/js/jquery.imgareaselect.min.js"></script>
	<script type="text/javascript" src="<%=path %>/js/calendar.js"></script>
	<script type="text/javascript" src="<%=path %>/js/Imgpreview.js"></script>
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
<script type="text/javascript">
function selectStatus(){
$("#selectStatus").change(function(){
});
}
 
$(function(){
   selStatus();
   selectStatus();
	
	var divIndex = '1';
	var curTab = divIndex-1;
	var tabLi = $("#tabBox .tab li");
	var tabBody = $("#tabBox .tab_body");
	tabLi.each(function(i){
		this.index = i;
		
		$(this).find("b").click(function(){
			tabLi[curTab].className = "";
			tabBody[curTab].style.display = "none";
			curTab = this.parentNode.index;
			
			this.parentNode.className = "cur";
			tabBody[this.parentNode.index].style.display = "block";
			handler();
		});
	});
});

function selStatus(){
var order="";
if(order!=""){
var sel = document.getElementById("selectStatus");
   for(var i=0;i<sel.options.length;i++)
   {
    var index = sel.options[i].value;
    if(order==index){
     sel.options[i].selected='selected';}
}
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
    			<div class="logo"><a href="<%=path%>"><img alt="logo" src="images/logo.png"></a></div>
    			<div class="search_box">
			<form id="searchForm" action="<%=path %>/search.do?flag=search" method="post">
				<input id="keyWord" name="keyWord" type="text" value="请输入您感兴趣的影片"/>
				<a class="search_sub" id="searchBtn" href="javascript:void(0)" title="搜索">搜索</a>
				<span>热搜：</span>
			<a class="key_word" onClick="gotoSearch(this)" href="javascript:void(0)" title="蝙蝠侠：黑暗骑士崛起">蝙蝠侠：黑暗骑士崛起</a><a class="key_word" onClick="gotoSearch(this)" href="javascript:void(0)" title="超凡蜘蛛侠">超凡蜘蛛侠</a></form>
		</div>
    		</div>
    	</div>
    	<div class="menu">
    	<!-- ${pageContext.request.contextPath}取得项目链接 -->
    	<ul>
    		<li>&nbsp;&nbsp;<a href="#" class="nav_2">首页</a></li>
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