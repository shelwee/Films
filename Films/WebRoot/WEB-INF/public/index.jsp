<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String filePath=getServletContext().getRealPath("/");
%>
  <jsp:include page="/WEB-INF/public/head.jsp"/>
  <div class="wrap">
  <div class="content">
    <div class="js" id="topflash">
								<div class="js_img" id="listImgs">										
													<a href="<%=path %>/movie.do?flag=goSingle&fid=23" target="_blank"><img src="images/1.png" width="631" height="208" alt="《倾城》" style="display: none; " >
													</a>
													<a href="<%=path %>/movie.do?flag=goSingle&fid=26" target="_blank"> <img src="images/4.png" width="631" height="208" alt="《遗落战境》" style="display: block; ">
													</a>																	
													<a href="<%=path %>/movie.do?flag=goSingle&fid=25" target="_blank"> <img src="images/3.png" width="631" height="208" alt="亲爱" style="display: none; ">
													</a>
													<a href="<%=path %>/movie.do?flag=goSingle&fid=24" target="_blank"> <img src="images/2.png" width="631" height="208" alt="天机．富春山居图" style="display: none; ">
													</a>	

								</div>
								<div class="js_font" id="tabName">
											<div class="f_1">
												<table width="108" height="43" border="0" cellspacing="0" cellpadding="0">
													<tbody><tr>
														<td class="fhall">
															《倾城》
														</td>
													</tr>
												</tbody></table>
											</div>				
											<div class="f_c">
												<table width="108" height="43" border="0" cellspacing="0" cellpadding="0">
													<tbody><tr>
														<td class="fhall">
															《遗落战境》
														</td>
													</tr>
												</tbody></table>
											</div>	
											<div class="f_2">
												<table width="108" height="43" border="0" cellspacing="0" cellpadding="0">
													<tbody><tr>
														<td class="fhall">
															《亲爱》
														</td>
													</tr>
												</tbody></table>
											</div>			
											<div class="f_2">
												<table width="108" height="43" border="0" cellspacing="0" cellpadding="0">
													<tbody><tr>
														<td class="fhall">
															《天机．富春山居图》
														</td>
													</tr>
												</tbody></table>
											</div>
																					
								</div>
									
							</div>
						<div class="tab idTabs">
								<ul class="tab_nav clearfix">
									<li>
										<a href="#one" title="正在热映" class="selected">正在热映<span></span>
										</a>
									</li>
									<li class="jiang">
										<a href="#two" title="即将上映" >即将上映<span></span>
										</a>
									</li>
								</ul>
								<!-----B card1 one----->
								<div class="items one" style="display: block; ">
									<div class="i_f_more clearfix" style="float: right;">
										<a href="<%=path %>/index.do?flag=filmIndex" title="更多">更多</a>
									</div>
									<ul class="clearfix">
											<c:forEach var="tts" items="${tt }" begin="0" end="7">
												<li>
													<a class="img" href="<%=path %>/movie.do?flag=goSingle&fid=${tts.film.fid }" title="${tts.film.ffilmName }"><img src="<%=path %>/upload/movie/${tts.film.fphoto}" alt="${tts.film.ffilmName }" >
													</a>
													<dl>
														<dt class="clearfix">
															<a href="<%=path %>/movie.do?flag=goSingle&fid=${tts.film.fid }" title="${tts.film.ffilmName }"> ${tts.film.ffilmName }
															</a>
														</dt>
														<br/>
														<dd class="clearfix">
															<strong class="iebug">${tts.film.fdate } </strong>
															
															<c:if test="${tts.film.ftype=='3D' }">
																<span class="ico_bg_v">${tts.film.ftype }</span>
															</c:if>
															
														</dd>
														<dd class="role" title="${tts.film.fplay }">
															主演：${tts.film.fplay }
															
														</dd>
														<dd>
															<a href="<%=path %>/movie.do?flag=goSingle&fid=${tts.film.fid }" title="我要购票">我要购票</a>
														</dd>
													</dl>
												</li>
											</c:forEach>
												
											
										
									</ul>
								</div>
								<!-----E card1 one----->
								<!-----B card1 two----->
								<div class="items two" style="display: none; ">
									<div class="i_f_more clearfix" style="float: right;">
										<a href="<%=path %>/index.do?flag=upcoming" title="更多">更多</a>
									</div>
									<ul class="clearfix">
										
									<c:forEach var="films" items="${film }" begin="0" end="7">
												<li>
													<a class="img" href="<%=path %>/movie.do?flag=goSingle&fid=${films.fid }" title="${films.ffilmName }"><img src="<%=path %>/upload/movie/${films.fphoto}" alt="${films.ffilmName }" >
													</a>
													<dl>
														<dt class="clearfix">
															<a href="5" title="${films.ffilmName }"> ${films.ffilmName }
															</a>
														</dt>
														<br/>
														<dd class="clearfix">
															<strong class="iebug">${films.fdate } </strong>
															
															<c:if test="${films.ftype=='3D' }">
																<span class="ico_bg_v">${films.ftype }</span>
															</c:if>
															
														</dd>
														<dd class="role" title="${films.fplay }">
															主演：${films.fplay }
															
														</dd>
													</dl>
												</li>
											</c:forEach>	
									</ul>
								</div>
								<div class="tab_b"></div>
							</div>	
					
						
		</div>
			<jsp:include page="/WEB-INF/public/side.jsp"/>
		</div>
		<div class="clear"></div>
	<script type="text/javascript">
	$("#topflash").TopScroll();
			$(function(){
			 var index = 0;
			 $("#tabtn li").mouseover(function(){
				index  =  $("#tabtn li").index(this);
				showImg(index);
			});	
			 //滑入 停止动画，滑出开始动画.
			 $('#HotBox').hover(function(){
					  if(MyTime){
						 clearInterval(MyTime);
					  }
			 },function(){
					  MyTime = setInterval(function(){
					    showImg(index)
						index++;
						if(index==3){index=0;}
					  } , 2600);
			 });
			 //自动开始
			 var MyTime = setInterval(function(){
				showImg(index)
				index++;
				if(index==3){index=0;}
			 } , 2600);
		})
		//关键函数：通过控制i ，来显示不通的幻灯片
		function showImg(i){
				$("#testdiv div")
					.eq(i).stop(true,true).css("display","block");
				$("#tabtn li")
					.eq(i).addClass("cur")
					.siblings().removeClass("cur");
				$("#testdiv div")
					.eq(i).siblings().css("display","none");	
		}
	</script>
	<jsp:include page="/WEB-INF/public/foot.jsp"/>
