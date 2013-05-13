<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
  <jsp:include page="/WEB-INF/public/head_reg.jsp"/>
  <div class="wrap">
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
                    <div class="cap_r"></div>
                </div>
				
                <div class="input_form reg_form">
				<form name="registerForm" id="reg_form" method="post" action="/Films/register.do?flag=reg">
				   
				   
                   <input id="validator" name="validator" value="1" type="hidden">
                    <fieldset class="clearfix">
                    
                        <label for=""><em>*</em>常用电子邮箱</label>
                        <input name="email" maxlength="50" id="email" class="ipt" title="请输入正确的邮箱，完成注册" type="text">
                        <span class="err_red"></span> 
                        
                    </fieldset>
                    <br/>
                    <fieldset class="clearfix">
                        <label for="" class="no"><em>*</em>&nbsp;&nbsp;性&nbsp;别&nbsp;</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input name="sex" value="男" checked="checked" type="radio"> 男&nbsp;&nbsp;
                        <input name="sex" value="女" type="radio"> 女
                    </fieldset>
                    <br/>
                    <fieldset class="clearfix">
                        <label for=""><em>*</em>创建登录密码</label>
                        <input id="password" name="password" maxlength="20" size="30" class="ipt" type="password">
                       <span class="err_red"></span>
                    </fieldset>
                    <br/>
                    <fieldset class="clearfix">
                        <label for=""><em>*</em>确认登录密码</label>
                        <input id="confirm_password" name="confirm_password" maxlength="20" size="30" class="ipt" type="password">
                        <span class="err_red"></span>
                    </fieldset>
                    <fieldset class="pad_label clearfix">
                        <input id="policy" type="checkbox">
                        我已看过并同意<a href="#" title="《康美电影网用户协议》" target="_blank">《康美电影网用户协议》</a>
                         <span class="err_red"></span>
                    </fieldset>
                    <br/>
                    <div class="btns clearfix">
                        <a title="立即注册" id="reg_sumit" class="btn big" href="javascript:void(0);">立即注册</a>

                    </div>
				  </form>
				 
                </div>
				
				
            </div>
            <div class="box_b over">
                <div class="box_l"></div>
                <div class="box_r"></div>
            </div>
        </div>
    </div>


</div>  
  </div>
  <script type="text/javascript">

 /**
  * 注册
  * @author xuan
  */
String.prototype.isMobile = function() {
	return /^0{0,1}1[0-9]{10}$/.test(this);
};
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
	$(this).parent().children(".err_red").text("输入登录密码，密码长度6-20位字母或者数字");
}).focusout(function(){ 
	$(this).parent().children(".err_red").text("");
	var filter  = /^[\dA-Za-z]{6,20}$/;
	if(!filter.test($(this).val())){
		$(this).parent().children(".err_red").text("密码必须由6-20个字符组成");
		_tag = 0;
	 	return ;
	}
		
});

$("#confirm_password").focusin(function(){
	$(this).parent().children(".err_red").text("输入确认登录密码，密码长度6-20位字母或者数字");
}).focusout(function(){ 
	$(this).parent().children(".err_red").text("");
	var filter  = /^[\dA-Za-z]{6,20}$/;
	if(!filter.test($(this).val())){
		$(this).parent().children(".err_red").text("密码必须由6-20个字符组成");
		_tag = 0;
		return false;
	}
	if($(this).val() != $("#password").val()){
		$(this).parent().children(".err_red").text("确认密码不一致！");
		_tag = 0;
	 	return ;
	}
		
});


/**
   注册时，必须勾选阅读《用户协议》
**/
$("#policy").focusin(function(){
	$(this).parent().children(".err_red").text("请阅读《康美电影网用户协议》");
}).focusout(function(){ 
	$(this).parent().children(".err_red").text("");
	if(!$("#policy").attr("checked")){
		$(this).parent().children(".err_red").text("注册时，您必须看过并同意《康美电影网用户协议》");
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
	$(".tips_msg").hide();
	$("#email").focusout();
	$("#email").blur();
	$("#password").focusout();
	$("#confirm_password").focusout();
	$("#xieyi").focusout();
	$("#code").focusout();
	$("#policy").focusout();
	if(_tag == 1){
		$("#reg_form").submit();
	}
	return false;
});


 



</script>
  <jsp:include page="/WEB-INF/public/foot.jsp"/>