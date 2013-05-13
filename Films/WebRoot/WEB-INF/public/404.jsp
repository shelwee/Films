<%@ page language="java" import="java.util.*,com.films.utils.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<jsp:include page="/WEB-INF/public/head.jsp"/>

 <div id="container">
    <header>
    	<h1></h1>
      	<p><a href="<%=path%>"><img alt="404" src="images/404.jpg" title="点击返回首页"/></a></p>
    </header>
    <div id="main">

    </div>
  </div>
<jsp:include page="/WEB-INF/public/foot.jsp"/>
