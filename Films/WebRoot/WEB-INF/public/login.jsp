<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
  <jsp:include page="/WEB-INF/public/head_login.jsp"/>
  <div class="wrap">
 <div class="content">
   		<div class="login_bg">
   		<div class="tp">	
   		</div>
        	<form name="login2Form" id="login_form" method="post" action="/Films/login.do?flag=loginOK">
        	 
        	<input id="validator" name="validator" value="1" type="hidden">
        	
        		
            	<fieldset class="clearfix">
                	<label for="email">用户名</label>
                	<input name="email" maxlength="50" value="请输入邮箱地址" id="email" type="text">
                	
                </fieldset>
                <fieldset class="clearfix">
                	<label for="password">密&nbsp;&nbsp;&nbsp;&nbsp;码</label>
                     <input name="password" id="password" maxlength="20" type="password">
                </fieldset>
                <fieldset class="clearfix at">
					<label class="auto" for="auto">
					<input name="autoLogin" id="autoLogin" type="checkbox">下次自动登录</label>
				</fieldset>
           
            	<div class="sub clearfix">
                	<a href="javascript:void(0);" id="login_submit" title="登录">登录</a><a href="#" title="忘记密码？">忘记密码？</a>
                </div>
      
            </form>
                <div class="reg">
                	您还没有康美电影的帐号，<a href="/Films/relogin.do?flag=goReg" title="立即注册">立即注册</a>
                </div>                                    
         </div>
    </div>
  </div>
  <script type="text/javascript">

$("input:text").focusin(function(){
	$(this).addClass("on");
	if($(this).val() == "请输入邮箱地址"){
		$(this).val("");
	}
}).focusout(function(){
	$(this).removeClass("on");
	if($(this).val() == ""){
		$(this).val("请输入邮箱地址");
	} 
});
$("input:password").focusin(function(){
	$(this).addClass("on");
}).focusout(function(){
	$(this).removeClass("on");
});


//回车登陆
document.onkeydown=function(event){ 
	e = event ? event :(window.event ? window.event : null); 
	if(e.keyCode==13){ 
		$("#login_submit").click(); 
	} 
};

$("#login_submit").click(function(){
	$("#login_form").submit();
});

//预加载
$(document).ready(function () {
	 if($("#email").val() == ""){
		$("#email").val("请输入邮箱地址");
	 }
});

 </script>
  <jsp:include page="/WEB-INF/public/foot.jsp"/>