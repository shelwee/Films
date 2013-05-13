<%@ page language="java" import="java.util.*,java.net.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
		InetAddress addr = null;
		try {
			addr = InetAddress.getLocalHost();
		} catch (UnknownHostException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String ip=addr.getHostAddress();//获得本机IP
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>康美电影城后台管理系统</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="/Films/js/jquery-1.4.4.min.js"></script>
	<script type="text/javascript" src="/Films/js/formValidator-4.0.1.min.js"></script>
	<script type="text/javascript" src="/Films/js/formValidatorRegex.js"></script>
	<script type="text/javascript" src="/Films/js/calendar.js"></script>
	<link rel="stylesheet" href="<%=path%>/css/common.css" type="text/css"/>
	<link rel="stylesheet" href="<%=path%>/css/validator.css" type="text/css"/>
	<link rel="stylesheet" href="<%=path%>/css/admin.css"/>
	<style type="text/css">
<!--
.STYLE11 {
	font-size: 12px;
}
-->
</style></head>

<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="57" background="images/admin/main_03.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="378" height="57" style="padding-left: 0px;font-size: 26px;color: #fff;" background="images/admin/main.png"></td>
        <td>&nbsp;</td>
        <td width="281" valign="bottom"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="33" height="27"><img src="images/admin/main_05.gif" width="33" height="27" /></td>
            <td width="248" background="images/admin/main_06.gif"><table width="225" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td height="17"><div align="right"><a href="<%=basePath%>adminspace.do?flag=goPwdUI" title="修改密码"><img src="images/admin/pass.gif" width="69" height="17" /></a></div></td>
                <td><div align="right"><a href="<%=basePath%>adminspace.do?flag=goUserUI" title="用户信息"><img src="images/admin/user.gif" width="69" height="17" /></a></div></td>
                <td><div align="right"><a href="<%=basePath%>adminspace.do?flag=logout" title="退出系统"><img src="images/admin/quit.gif" width="69" height="17" /></a></div></td>
              </tr>
            </table></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="40" background="images/admin/main_10.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="100" height="40" >&nbsp;</td>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="21"><img src="images/admin/main_13.gif" width="19" height="14" /></td>
            <td width="35"><div align="center"><a class="admin_menu" href="<%=basePath%>">首页</a></div></td>
            <td width="21"><img src="images/admin/main_21.gif" width="19" height="14" /></td>
            <td width="35"><div align="center"><a class="admin_menu" href="<%=path%>/index.do?flag=help">帮助</a></div></td>
            <td>&nbsp;</td>
          </tr>
        </table></td>
        <td width="248" background="images/admin/main_11.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="16%"></td>
            <td width="75%"><div align="center">
            <span class="time">
            <script type="text/javascript" language="JavaScript">
			var enabled = 0; today = new Date();
			var day; var date;
			if(today.getDay()==0) day = " 星期日"
			if(today.getDay()==1) day = " 星期一"
			if(today.getDay()==2) day = " 星期二"
			if(today.getDay()==3) day = " 星期三"
			if(today.getDay()==4) day = " 星期四"
			if(today.getDay()==5) day = " 星期五"
			if(today.getDay()==6) day = " 星期六"
			document.fgColor = "000000";
			date = (today. getFullYear()) + "-" + (today.getMonth() + 1 ) + "-" + today.getDate() + day +" "+today.getHours()+":"+today.getMinutes();
			document.write(date);
			</script>
			</span></div></td>
            <td width="9%">&nbsp;</td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="30" background="images/admin/main_31.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="8" height="30"><img src="images/admin/main_28.gif" width="8" height="30" /></td>
        <td width="147" background="images/admin/main_29.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="24%">&nbsp;</td>
            <td width="43%" height="20" valign="bottom" class="STYLE11">管理菜单</td>
            <td width="33%">&nbsp;</td>
          </tr>
        </table></td>
        <td width="39"><img src="images/admin/main_30.gif" width="39" height="30" /></td>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="20" valign="bottom"><span class="STYLE11">当前登录用户：admin &nbsp;用户角色：管理员</span></td>
            <td valign="bottom" class="STYLE11"><div align="right"><img src="images/admin/sj.gif" width="6" height="7" /> IP：<%=ip %>       &nbsp; &nbsp;&nbsp;<img src="images/admin/sj.gif" width="6" height="7" /> &nbsp;提供商：潇微网 &nbsp; &nbsp; <img src="images/admin/sj.gif" width="6" height="7" /> &nbsp;单位：ShelWee.com</div></td>
          </tr>
        </table></td>
        <td width="17"><img src="images/admin/main_32.gif" width="17" height="30" /></td>
      </tr>
    </table></td>
  </tr>
</table>