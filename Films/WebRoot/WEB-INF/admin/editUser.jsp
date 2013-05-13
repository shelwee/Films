<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<jsp:include page="top.jsp"></jsp:include>
<table width="100%" height="85%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="8" bgcolor="#353c44">&nbsp;</td>
    <td width="147" valign="top"><jsp:include page="left.jsp"></jsp:include></td>
    <td width="10" bgcolor="#add2da">&nbsp;</td>
    <td valign="top" width="1092">
    <div class="content">
    <div class="main">
        <div class="eidtor">
            <div class="box_t over">
                <div class="box_l"></div>
                <div class="box_r"></div>
            </div>
            <div class="bk">
                <div class="cap">
                    <div class="cap_l"></div>
                    <i class="ico">&nbsp;</i>
        			<span class="h3">编辑用户</span>                  
                    <div class="cap_r"></div>
                </div>
				
                <div class="input_form reg_form">
				<form name="movieform" id="reg_form" method="post" action="<%=path %>/userCenter.do?flag=editSubmit" >
                    <fieldset class="clearfix">
                    	<input type="hidden" name="uid" value="${user.uid }"/>
                        <label for=""><em>*</em>常用电子邮箱</label>
                        <input name="email" maxlength="50" id="email" class="ipt" title="请输入正确的邮箱，完成注册" type="text" value="${user.uemail }">
                        <span class="err_red"></span> 
                        
                    </fieldset>
                    <br/>
                    <fieldset class="clearfix">
                        <label for="" class="no"><em>*</em>&nbsp;&nbsp;性&nbsp;别&nbsp;</label>&nbsp;&nbsp;&nbsp;
                        
                        <input name="sex" value="男" <c:if test="${user.usex=='男' }"> checked='checked' </c:if> type="radio"/> 男&nbsp;&nbsp;
                        
                        <input name="sex" value="女" <c:if test="${user.usex=='女' }"> checked='checked' </c:if> type="radio"/> 女
                    </fieldset>
                    <br/>
                    <fieldset class="clearfix">
                    	<label for=""><em>*</em>&nbsp;用&nbsp;户&nbsp;身&nbsp;份</label>
                    	<input name="role" value="${user.urole }" readonly="readonly" class="ipt">
                    </fieldset>
                    <br/>
                    <fieldset class="clearfix">
                        <label for=""><em>*</em>重置用户密码</label>
                        <input id="password" name="password" maxlength="20" size="30" class="ipt" type="password" value="${user.upassword }">
                       <span class="err_red"></span>
                    </fieldset>
                    <br/>
              		<div class="btns clearfix">
                        <a title="提交修改" id="reg_sumit" class="btn big" href="javascript:void(0);">提交修改</a>
                   </div>
				  </form>
				 
                </div>
            </div>       
        </div>
    </div>
</div>  
    </td>
    <td width="8" bgcolor="#353c44">&nbsp;</td>
  </tr>
</table>
<script type="text/javascript">
String.prototype.isEmail = function() {
	return /^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/.test(this);
};

var _tag = 1;

$("#email").focusin(function(){
	$(this).parent().children(".err_red").text("请填写您常用的邮箱作为账号");
}).focusout(function(){ 
	$(this).parent().children(".err_red").text("");
	if(!$(this).val().isEmail()){
	 	$(this).parent().children(".err_red").text("请输入正确的邮箱格式！");
	 	_tag = 0;
	 	return ;
	}else if($(this).val().split("@")[0].length > 20){
		$(this).parent().children(".err_red").text("请输入的邮箱前缀超过20位！");
		_tag = 0;
	 	return ;
	}else if($(this).val().isEmail()){
		$.get("/Films/register.do?flag=regCheck&email="+$("#email").val(),null,function(data){	
				$("#email").parent().children(".err_red").text(data);
			});
	}
});

$("#password").focusin(function(){
	$(this).parent().children(".err_red").text("输入登录密码，密码长度6-32位字母或者数字");
}).focusout(function(){ 
	$(this).parent().children(".err_red").text("");
	var filter  = /^[\dA-Za-z]{6,32}$/;
	if(!filter.test($(this).val())){
		$(this).parent().children(".err_red").text("密码必须由6-32个字符组成");
		_tag = 0;
	 	return ;
	}
		
});


//回车登陆
document.onkeydown=function(event){ 
	e = event ? event :(window.event ? window.event : null); 
	if(e.keyCode==13){ 
		$("#reg_sumit").click(); 
	} 
};

$("#reg_sumit").click(function(){
	_tag = 1;
	$("#email").focusout();
	$("#email").blur();
	$("#password").focusout();
	if(_tag == 1){
		$("#reg_form").submit();
	}
	return false;
});
</script>
<script type="text/javascript" src="<%=path %>/js/Imgpreview.js"></script>
<jsp:include page="down.jsp"></jsp:include>