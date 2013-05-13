<%@ page language="java" import="java.util.*,com.films.utils.*,com.films.domain.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String filePath=getServletContext().getRealPath("/");
%>

<jsp:include page="/WEB-INF/public/head_single.jsp"/>

	<div class="wrap">
	<div class="content">
		<h2>
			<a href="<%=path %>" title="首页">首页</a> &gt;
			<a href="<%=path %>/index.do?flag=filmIndex" title="电影">电影</a>
			&gt;
			<a class="c_on" title="${movie.ffilmName }">${movie.ffilmName }</a>
		</h2>
		<div class="box">
		<div class="topleft"></div>
					<div class="topmiddle">
						<h2 class="pinglun">
							影片信息
							<span></span>
						</h2>
					</div>
		<div class="topright"></div>
		<div class="box_m clearfix">

				<div id="imgnav" class="film_left">
					<div id="img">
						<img src="<%=path %>/upload/movie/${movie.fphoto}" class="img196">
					</div>
				</div>
				<div class="film_center">
							<div class="film_centertop" title="${movie.ffilmName }">
								<span class="blue">${movie.ffilmName } </span><br/><br/>
								<ul>
								<li title="${movie.fdiretor }">
									<strong>导演：</strong>${movie.fdiretor }
									
								</li>
								<li title="${movie.fplay }">
									<strong>主演：</strong>${movie.fplay }
									
								</li>
								<li title="${movie.sort.ssort }">
									<strong>类型：</strong>${movie.sort.ssort }
									
								</li>
								<li title="${movie.area.azone }">
									<strong>国家：</strong>${movie.area.azone }
									
								</li>
								<li>
									<strong>片长：</strong>${movie.flong}分钟
								</li>
								<li>
									<strong>上映日期：</strong>
									${movie.fdate}
									 <span class="greyTxt">(<span id="numOfAttention">359</span>人关注&nbsp;&nbsp;)</span>
								</li>
								<li title="${movie.fintro}">
									<strong>剧情简介：</strong>${movie.fintro}
									
								</li>
								</ul>
							</div>
				</div>
				<div class="film_right">
							<h4 title="${movie.ffilmName }">
								${movie.ffilmName }预告片
							</h4>
							<ul>
								<li>
								<a class="player" href="http://images.wandafilm.com/uploadServer/resource/videos/2012/08/20120824164657810335.flv" title="《${movie.ffilmName }》中文版先行预告片"><img src="<%=path %>/upload/movie/${movie.fphoto}" width="169" height="63" alt="《${movie.ffilmName }》预告片"> </a>
								</li>
							</ul>
				</div>
								
		</div>
		<div class="box_b"></div>
		</div>
		<div class="col_2 clearfix">
			<div class="col_2_left">
			<div class="tab tab1 idTabs">
							<ul class="tab_nav clearfix">
								<li>
									<a href="#one" title="影片排期" class="selected">影片排期</a>
								</li>								
								<li>
									<a href="#two" title="万人评影">万人评影</a>
								</li>
							</ul>
													<div class="items one clearfix" style="display: block;">
								<dl class="choose clearfix">
									<dt>
										影城：
									</dt>
									<dd class="show_cinema"><a class="on" href="javascript:void(0);" tt="823" title="康美电影城">康美电影城</a></dd>
								</dl>
								<dl class="choose clearfix">
									<dt>
										日期：
									</dt>
									<dd class="show_time">								
								
										<a class="on" href="javascript:void(0);" tt="1">今天（<script type="text/javascript">									
										var today = new Date();
										var date;
										date = ((today.getMonth() + 1 ) + "月" + today.getDate()+"日") ;
										document.write(date);																
									</script>）</a><a href="javascript:void(0);" tt="2">明天（<script type="text/javascript">									
										var today = new Date();
										today.setDate(today.getDate()+1);
										var date;
										date = ((today.getMonth() + 1 ) + "月" + today.getDate() +"日") ;
										document.write(date);																
									</script>）</a>
										
									</dd>
								</dl>
														
								<h3 class="h3_cinema">
									<span>康美电影城</span>
								</h3>
								<table id="tb_time" width="100%" border="0" cellspacing="0" cellpadding="0" class="table">
									<tbody><tr class="table_1">
										<td colspan="2">
											放映时间
										</td>
										<td colspan="2">
											影厅空位
										</td>
										<td colspan="2">
											语言
										</td>
										<td colspan="2">
											版本
										</td>
										<td colspan="2">
											票价
										</td>
										<td width="15%">
											购票
										</td>
									</tr>									
									<c:forEach var="mtt" items="${mtt }">
										<tr class="table_2"><td width="15%">${mtt.ttime }</td><td width="1%"><img src="images/film_no3_42.jpg" width="3" height="64"></td><td width="20%">余${mtt.hall.hnum }/${mtt.hall.hnum }总</td><td width="1%"><img src="images/film_no3_42.jpg" width="3" height="64"></td><td width="13%">${movie.flanguage }</td><td width="1%"><img src="images/film_no3_42.jpg" width="3" height="64"></td><td width="13%">${movie.ftype }</td><td width="1%"><img src="images/film_no3_42.jpg" width="3" height="64"></td><td width="19%">${mtt.tticketPrice }元</td><td width="1%"><img src="images/film_no3_42.jpg" width="3" height="64"></td><td><a href="<%=path %>/tickets.do?flag=goStep2&tid=${mtt.tid }" class="buttondc1">我要购票</a></td></tr>
									</c:forEach>
									
									</tbody></table>
			</div>
			<div class="items two clearfix" style="display: none;">
								<div class="topmian clearfix">
								<form id="comm_form" action="<%=path %>/movie.do?flag=submitComm&fid=${movie.fid}" method="post">
								    <div class="submitCommentTitle">&nbsp;&nbsp;我要评论：</div>
									&nbsp;&nbsp;<textarea name="content" id="content" cols="88" rows="6" style="margin-top: 10px;"></textarea>
									<div class="greyTxt">&nbsp;&nbsp;您最多可以输入<span id="counter">140</span>字</div><br>
									    
									  <div class="btns clearfix">
                                          <a href="javascript:void(0);" style="margin-left: 310px;" class="commentBtn" id="comment_submit">发表</a>
                                      </div>
                                </form>
								</div>
							</div>
							<div class="tab_b"></div>
			</div>
			<div class="topleft"></div>
						<div class="topmiddle1">
							<h2 class="pinglun" title="${movie.ffilmName }的影评">
								${movie.ffilmName }的影评
								</h2>
						</div>
						<div class="topright"></div>
						<div class="t_box_m clearfix">
						
						<div class="searchresult">
						<table width="100%" border="0" cellpadding="0" cellspacing="0" class="commentBox">
						<tbody>
						<c:forEach var="comms" items="${comm }">
						<tr><td colspan="3" class="top"></td></tr>
						<tr>
						<td rowspan="2" nowrap="nowrap" class="member"><img title="头像" height="64" width="64" class="img64" alt="null" src="<%=path %>/upload/Gravator/${comms.users.uid}/${comms.users.uphoto}"><br>${comms.users.uname }</td>
						<td id="20121115112041335486" colspan="2" class="comment" style="word-break:break-all">${comms.comments}</td>
						</tr>
						<tr>
						<td class="msgFrom">${comms.ctime}&nbsp;&nbsp;&nbsp;&nbsp; <span class="greyTxt">来自: </span><span class="blueTxt">康美电影网</span></td>
						</tr>
						</c:forEach>
						</tbody>
						</table>
						</div>
						
						</div>
						<div class="tabb_b"></div>
						</div>
						<div class="col_2_right">
						<h3 class="other_t">
							其他正在上映影片
						</h3>
						<div class="right_m clearfix">
						<c:forEach var="tts" items="${tt }" begin="0" end="2">
							<div class="right_m1">
								<div class="right_left">
									<a href="<%=path %>/movie.do?flag=goSingle&fid=${tts.film.fid }" title="${tts.film.ffilmName }"><img src="<%=path %>/upload/movie/${tts.film.fphoto}" class="img111" alt="${tts.film.ffilmName }" width="111" height="154"> </a>
								</div>
										<div class="right_right">
											<ul>
												<li>
													<a href="<%=path %>/movie.do?flag=goSingle&fid=${tts.film.fid }" class="link4"><strong>${tts.film.ffilmName }</strong>
													</a>
												</li>
												<li title="${tts.film.fplay }">
													主演：${tts.film.fplay }
													
												</li>
												<li title="${tts.film.sort.ssort }">
													类型：${tts.film.sort.ssort }
													
												</li>
												<li title="${tts.film.area.azone }">
													国家：${tts.film.area.azone }
													
												</li>
												<li>
												</li>
											</ul>
										</div>
							</div>
							<div class="line"></div>
						</c:forEach>
					</div>
						<div class="right_b"></div>
						<a class="t_sina1" href="http://weibo.com/901019520" target="_blank" title="康美电影微博"> 
						<img src="images/weibo.jpg" alt="康美微博" width="258px" height="93px">
						 </a>
					</div>												
		</div>
	</div>
	</div>
<script type="text/javascript">
$("#comment_submit").click(function(){
	if($("#content").val()!=""){
		$("#comm_form").submit();
	}else{
		alert("评论字数应不小于1个字！");
	}
});

</script>
<jsp:include page="/WEB-INF/public/foot.jsp"/>
