<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String tabIndex = request.getParameter("tabIndex");
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

    <jsp:include page="head_info.jsp"></jsp:include>
    <div class="wrap">
  		<div class="cont">
  			<div class="coll">
  				<div class="cap">
  				<a href="<%=path %>/relogin.do?flag=goUserHome"><img alt="user" src="images/userHome.jpg" ></a>
  				</div>
  				<ul class="bk">
				<li style="padding-top: 3px;">
				<a href="<%=path %>/userspace.do?flag=goUserOrder" title="我的订单">我的订单</a>
				</li>
				<li>
				<a href="<%=path %>/userspace.do?flag=goUserInfo" title="编辑个人资料">编辑个人资料</a>
				</li>
				<li>
				<a href="<%=path %>/userspace.do?flag=goUserPwd" title="修改密码">修改密码</a>
				</li>
				<li>
				<a href="<%=path %>/userspace.do?flag=goUserComment" title="我的评论">我的评论</a>
				</li>
				</ul>
  			</div>
  							<div class="col_r">
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
							<div class="tab_box" id="tabBox">
								<ul class="tab">
								  
								  <li class="cur">
								  
								 
										<b>基本信息</b>
									</li>
							
								  <li class="">
								 
										<b>详细信息</b>
									</li>
								
								  
								  <li class="">
								 
										<b>修改头像</b>
									</li>
								</ul>

								  <div class="tab_body" style="display: block; ">
		
									<dl>
										<dt>
											<img id="headImg" src="<%=path %>/upload/Gravator/${loginUser.uid}/${loginUser.uphoto}?ran=<%=Math.random() %>" style="width: 125px; height: 125px">
										</dt>
										<dd>
											<table border="0" cellpadding="0" cellspacing="0">
											    <tbody><tr>
													<th>
														<label>
															昵称：
														</label>
													</th>
													<td>
														<input name="nickName" id="nickName" type="text" size="30" maxlength="15" class="ipt" value="${loginUser.uname }">
													</td>
												</tr>
												
												
												<tr>
													<th>
														<label>
															性别：
														</label>
													</th>
													<td>
														<input name="sex" value="男" <c:if test="${loginUser.usex=='男' }">checked='checked'</c:if> type="radio" />
														男&nbsp;&nbsp;&nbsp;&nbsp;
														<input name="sex" value="女" <c:if test="${loginUser.usex=='女' }">checked='checked'</c:if> type="radio" />
														女
													</td>
												</tr>
												<tr>
													<th>
														<label>
															出生日期：
														</label>
													</th>
													<td>
								    
												    	<input id="birthDay" name="birthDay" class="text1 hasDatepicker" style="width: 100px" value="${loginUser.ubirth }" onclick="Calendar('birthDay');" readonly="readonly">
													    														 
														<br>
														<span class="cd">出生日期填写后将不可修改，请认真填写。在你生日来临之际，万达电影会为您奉上更多惊喜</span>
													</td>
												</tr>
												<tr>
													<th>
														&nbsp;
													</th>
													<td>
														<a class="btn" id="modifyMemberBtn" href="javascript:void(0)" title="保存修改">保存修改</a>
													</td>
												</tr>
											</tbody></table>
										</dd>
									</dl>
								</div>	
							
								  <div class="tab_body" style="display: none; ">
								
									<table border="0" cellpadding="0" cellspacing="0">
										<tbody>
										<tr>
											<th width="160">
														<label>
															真实姓名：
														</label>
													</th>
													<td>
														<input id="trueName" type="text" size="30" class="ipt" maxlength="10" value="${loginUser.urealName }"><span class="err_red"></span>
													</td>
												</tr>
										<tr>
											<th>
												<label>
													手机：
												</label>
											</th>
											<td>
												<input id="linkMobile" onkeyup="value=value.replace(/[^1\d{10}]/g)" name="linkMobile" type="text" size="30" maxlength="11" class="ipt" value="${loginUser.uphone }"><span class="err_red"> 仅用于核实兑票</span>
											</td>
										</tr>
										<tr>
													<th>
														<label>
															QQ：
														</label>
													</th>
													<td>
														<input id="uqq" type="text" name="uqq" size="30" value="${loginUser.uqq }"/>
													</td>
												</tr>
										<tr>
											<th>
												<label>
													身份证号码：
												</label>
											</th>
											<td>
												<input id="IDNumber" name="IDNumber" type="text" size="30" maxlength="18" class="ipt" value="${loginUser.uidcard }">
												<span>请务必填写真实正确的证件号码，方便后期密码找回及其他会员服务</span>
											</td>
										</tr>			
										
									

										<tr>
											<th>
												&nbsp;
											</th>
											<td>
												<a class="btn" id="modifyAddressBtn" href="javascript:void(0)" title="保存修改">保存修改</a>
											</td>
										</tr>
									</tbody></table>
								</div>
									
								  
								  <div class="tab_body" style="display: none; ">
								
									<dl id="headPicCut" class="card_user">
										<dt class="txbg">
											<span id="preview">
											<c:if test="${loginUser.uphoto!=null }">
											<img id="imghead" width="125" height="125" src="<%=path %>/upload/Gravator/${loginUser.uid}/${loginUser.uphoto}?ran=<%=Math.random() %>" style="margin-left: 0px; margin-top: 0px; ">
											</c:if>											
											</span>
										</dt>
										<dd>
											<form id="uploadPhotoForm" action="<%=path %>/userInfo.do?flag=savaPhoto" method="post" enctype="multipart/form-data" >
												<ul class="ulist">
													<li>
													
													<div class="line">
														<label>上传头像：</label>
														<input type="file" id="memberPhoto" name="memberPhoto" title="请上传大小为125*125的图片" class="ipt" onchange="previewImage2(this)"/>
														<br/>													
														<a id="uploadPhotoBtn" class="btn" style="margin-left: 65px; margin-top: 40px; margin-right: 20px;" title="保存" href="javascript:void(0)">保 存</a><span id="err_type" style="color: #EC51B4;"></span>
													</div>
													

													</li>
												</ul>
																									
											</form>
										</dd>
									</dl>
							
								</div>
							</div>
						</div>
						<div class="box_b over">
							<div class="box_l"></div>
							<div class="box_r"></div>
						</div>
					</div>
				</div>

<script type="text/javascript">
  	
//  var curTab = 0; 
//	var tabLi = $("#tabBox .tab li");
//	var tabBody = $("#tabBox .tab_body");
//	tabLi.each(function(i){		
//		this.index = i;
//		$(this).find("b").click(function(){
//			tabLi[curTab].className = "";
//			tabBody[curTab].style.display = "none";
//			curTab = this.parentNode.index;
//			this.parentNode.className = "cur";
//			tabBody[this.parentNode.index].style.display = "block";
//		});
		
//	});
   

	//初始化date控件
	//$("#birthDay" ).datepicker({changeYear:true,shortYearCutoff:10,yearRange:'1900:2012'});

  /*
    修改用户信息按钮点击时触发修改用户信息
  */
  $("#modifyMemberBtn").click(function()
  {
      var nickName=$("#nickName").val();
    //  var trueName = $("#trueName").val();
      var sex = $("input[name='sex']:checked").val();
      var birthDay = $("#birthDay").val();
      	
      	if(nickName!='' && nickName.length>20)
      	{
      		$("#nickName").parent().children(".err_red").text("真实姓名的最大长度不能超过20个字符!");
      	}
      	else
      	{
      		var dataMap = {"nickName":nickName,"sex":sex,"birthDay":birthDay};
	    
		    //提交信息到后台
		    $.ajax
		    ({
                 type : "post",
                 url : "<%=path %>/userInfo.do?flag=baseInfo",
                 dataType: "html",
                 data: dataMap,
                 timeout: "60000",
                 error: function (XMLHttpRequest, textStatus, errorThrown) {
                 } ,
                 beforeSend : function(XMLHttpRequest) {
                 },
                 success : function(data) {
                   alert(data, null, {title: "提示信息"});
                 }
		                                
		   });
  
      	}  
      
  });
  
  /**
  修改地址按钮点击时触发，修改联系地址
**/
$("#modifyAddressBtn").click(function()
{
   var trueName = $("#trueName").val();
   var mobile = $.trim($("#linkMobile").val());
   var uqq = $("#uqq").val();
   var IDNumber = $("#IDNumber").val();
   var dataMap = {"trueName":trueName,"mobile":mobile,"uqq":uqq,"IDNumber":IDNumber};
      $.ajax( {
			type : "post",
			url : "<%=path %>/userInfo.do?flag=detailInfo",
			dataType: "html",
			data: dataMap,
			timeout: "60000",
			error: function (XMLHttpRequest, textStatus, errorThrown) {
			} ,
			beforeSend : function(XMLHttpRequest) {
			},
			success : function(data) {
			  alert(data, null, {title: "提示信息"});
			}
			
		});
});	
     	

 /*
     点击确定时，上传图片
   */
   $("#uploadPhotoBtn").click(
	   
	    function()
      {
      	  var img = $("#memberPhoto").val();
      	  $("#memberPhoto").parent().children(".err_red").text("");
      
   	 	 if($.trim(img) != "")
   	 	 {  	   	     
   	   	     var fileType = "jpg,bmp,png";
   	   	     var extendFileName = img.split(".");
   	   	     var types = fileType.split(",");
   	   	     var imgFlag = false;
   	   	     
   	   	      for(var i=0,j=types.length;i<j;i++)
   	   	      {
        			if(extendFileName[1].toLowerCase()==types[i])
        			{
        			   imgFlag=true;
        			}
    					
   			   }
   			   if(imgFlag)
   			   {
   					 $("#uploadPhotoForm").submit();
   				}
   				else
   				{
   				   $("#err_type").text("您上传的不是图片类型，只能上传jpg,bmp,png类型!");
   				}
   	  	 }
   	 	 else
   	 	 {
   	 	      $("#err_type").text("请先点击‘选择文件’，选择你要上传的图片!");
   	  	 }
   	  	 return false;
      	}
   );
 
 
   
    $("input[name='trueName']").focusout(function()
    {
        if($.trim($("input[name='trueName']").val())!="")
      {
         $("input[name='trueName']").parent().children(".err_red").text("");
      }
    });

    
      $("input[name='linkMobile']").focusout(function()
    {
          var reg = /^0{0,1}1[0-9]{10}$/;
   		   if(!reg.test($("input[name='linkMobile']").val())&& $.trim($("input[name='linkMobile']").val())!=""){
   		      $("input[name='linkMobile']").parent().children(".err_red").text("");
   		      }
    });
    
    
   /**
     校验地址信息
   **/
   function checkAddressInfo(linkMan,province,city,street,postCode,linkMobile,phoneNumber)
   {
   
      if($.trim(linkMan)=="")
      {
         $("input[name='trueName']").parent().children(".err_red").text("联系人信息不能为空！");
         $("input[name='trueName']").focus();
        return false;
      }
      if($.trim(province)== "" )
      {
       $("select[name='province']").parent().children(".err_red").text("所在地区的省份信息不能为空！");
         $("select[name='province']").focus();
        return false;
      }
      if($.trim(city)=="" )
      {
       $("select[name='city']").parent().children(".err_red").text("所在地区的城市信息不能为空！");
        $("select[name='city']").focus();
        return false;
      }
      
      if($.trim(street)=="")
      {
           $("textarea[name='street']").parent().children(".err_red").text("街道地址不能为空！");
            $("textarea[name='street']").focus();
        return false;
      }
      
      if($.trim(postCode)=="")
      {
            $("input[name='postCode']").parent().children(".err_red").text("邮政编码不能为空！");
             $("input[name='postCode']").focus();
        return false;
      }
      else
      {
         if($("input[name='postCode']").val().length !=6)
         {
            $("input[name='postCode']").parent().children(".err_red").text("邮政编码为六位数！");
               $("input[name='postCode']").focus();
             return false;
         }
      }
      
      if($.trim(linkMobile)=="" && $.trim(phoneNumber)=="")
      {
         $("input[name='linkMobile']").parent().children(".err_red").text("手机号码和电话号码至少必须填写一个！");
          $("input[name='linkMobile']").focus();
         return false;
      }
      if($.trim(linkMobile)!="")
      {
   		   var reg = /^0{0,1}1[0-9]{10}$/;
   		   if(!reg.test(linkMobile)){
   		      $("input[name='linkMobile']").parent().children(".err_red").text("请填写正确手机号码！");
   		      $("input[name='linkMobile']").focus();
   		   	
   		   	return false;
   		}
      }
       $("input[name='linkMobile']").parent().children(".err_red").text("");
      
      return true;
   }
 
</script>
  			</div>
  			</div>
    <jsp:include page="../public/foot.jsp"></jsp:include>