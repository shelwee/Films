<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
        			<span class="h3">修改密码</span>                  
                    <div class="cap_r"></div>
                </div>
				
                <div class="input_form reg_form">
				<form name="passwordForm" id="passwordForm" method="post" action="<%=path %>/newPassword.do?flag=setPassword">
			   
                   <input id="validator" name="validator" value="1" type="hidden">
                    <fieldset class="clearfix">
                    
                        <label for=""><em>*</em>输入原密码</label>
                        <input name="oldPassword" id="oldpsw" class="ipt" type="password" ><div style="float: right; " id="oldpswTip"></div>
                        
                    </fieldset>
                    <br/>
                    <fieldset class="clearfix">
                    
                        <label for=""><em>*</em>输入新密码</label>
                        <input name="newPassWord" id="newpsw" class="ipt" type="password"><div style="float: right; " id="newpswTip"></div>
                        
                    </fieldset>
                    <br/>
                    <fieldset class="clearfix">
                    
                        <label for=""><em>*</em>确认新密码</label>
                        <input name="confirmPassWord" id="repsw" class="ipt" type="password"><div style="float: right; " id="repswTip"></div>
                        
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
<script type="text/javascript">
$(document).ready(function(){
    init();
    check();
	});
	function init(){
		$.formValidator.initConfig({formID:"passwordForm",debug:false,submitOnce:true,
			onError:function(msg,obj,errorlist){
				$("#errorlist").empty();
				$.map(errorlist,function(msg){
					$("#errorlist").append("<li>" + msg + "</li>");
				});
				Boxy.alert(msg);
			},
			submitAfterAjaxPrompt : '有数据正在异步验证，请稍等...'
		});
	}
	function check(){
	var oldPass;
	$("#oldpsw").formValidator({
	onShow:"请输入原密码,注意区分大小写",
	onFocus:"请输入原密码,注意区分大小写",
	onCorrect:"原密码正确"
	}).inputValidator({
	min:6,
	max:20,
	onError:"您输入的原密码不正确,请确认"
	}).functionValidator({fun:mycheck
	}).ajaxValidator({
		dataType : "html",
		async : true,
		data:'oldPassword='+oldPass, 
		url : "<%=path %>/newPassword.do?flag=checkPassword",
		success : function(data){
           if(data == "1\r\n"){
           		 return true;
           		 }
           if(data == "0\r\n"){ 
           		return false;
           		}
			return false;
		},
		buttons: $("#button"),
		error: function(jqXHR, textStatus, errorThrown){alert("服务器没有返回数据，可能服务器忙，请重试"+errorThrown);},
		onError : "您输入的原密码不正确,请确认",
		onWait : "正在对原密码进行校验，请稍候..."
		
	});
	$("#newpsw").formValidator({
	onShow:"密码长度6-20位字母或者数字",
	onFocus:"密码长度6-20位字母或者数字",
	onCorrect:"密码合法"
	}).inputValidator({
	min:6,
	max:20,
	empty:{
	leftEmpty:false,
	rightEmpty:false,
	emptyError:"密码两边不能有空符号"},
	onError:"密码长度6-20位字母或者数字"
	});
	$("#repsw").formValidator({
	onShow:"密码长度6-20位字母或者数字",
	onFocus:"密码长度6-20位字母或者数字",
	onCorrect:"密码一致"
	}).inputValidator({
	min:6,
	max:20,
	empty:{
	leftEmpty:false,
	rightEmpty:false,
	emptyError:"重复密码两边不能有空符号"},
	onError:"密码长度6-20位字母或者数字"
	}).compareValidator({
	desID:"newpsw",operateor:"=",onError:"2次密码不一致,请确认"
	});
	
	function mycheck(){
	 		cccc = $("#oldPass").val();
	 		return true;
	 	}
}

//回车登陆
document.onkeydown=function(event){ 
	e = event ? event :(window.event ? window.event : null); 
	if(e.keyCode==13){ 
		$("#reg_sumit").click(); 
	} 
};

$("#reg_sumit").click(function(){
		$("#passwordForm").submit();
});


</script>   
    </td>
    <td width="8" bgcolor="#353c44">&nbsp;</td>
  </tr>
</table>
<jsp:include page="down.jsp"></jsp:include>