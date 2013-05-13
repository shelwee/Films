<%@ page language="java" import="java.util.*,com.films.utils.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String filePath=getServletContext().getRealPath("/");
%>

<jsp:include page="/WEB-INF/public/head_time.jsp"/>

	<div class="wrap">
	<div class="content">
		<h2>
			<a href="<%=path %>" title="首页">首页</a> &gt; 放映时刻表
		</h2>
		<div class="col_2 clearfix">
					<div class="col_2_l">
						<ul class="tips_info">
							<li>温馨提示：</li>
							<li>尊敬的康美影院会员，由于网站改版升级，如果您在购票过程中遇到问题，<span style="color:#F00">请您通过右边的的康美影院官方微博进行反馈，或者直接到康美影院。</span></li>
							<li>感谢您对康美影城的一贯支持！</li>
						</ul>
						<div class="tab idTabs">
							<ul class="tab_nav clearfix" id="ntabs">
								<li>
								<a class="selected" href="#1" tt="1" title="今日上映">今天上映（<script type="text/javascript">									
										var today = new Date();
										var date;
										date = ((today.getMonth() + 1 ) + "月" + today.getDate()+"日") ;
										document.write(date);																
									</script>）</a>
								</li>
								<li>
								<a href="#2" tt="2"  title="明日上映">明天上映<span>（<script type="text/javascript">									
										var today = new Date();
										today.setDate(today.getDate()+1);
										var date;
										date = ((today.getMonth() + 1 ) + "月" + today.getDate() +"日") ;
										document.write(date);																
									</script>）</span></a>
								</li>
								
							</ul>
							<!-----B card1 one----->
							<div class="items 1" style="display: block;">
								<dl class="clearfix">
									<dt>
										影城：
									</dt>
									<dd class="show_cinema"><a class="on" href="<%=path %>" tt="823" title="康美电影城">康美电影城</a></dd>
								</dl>
								<dl class="clearfix">
									<dt>
										影片：
									</dt>
									<dd class="show_film_2012_12_03">
									<a class="all on" href="javascript:void(0);" title="全部" tt="0">[全部]</a>
									<c:forEach var="tts" items="${tt }">
										<a href="javascript:void(0);" title="${tts.film.ffilmName }">${tts.film.ffilmName }</a>
									</c:forEach>
								</dl>
							
								<h3 class="h3_cinema_2012_12_03">
									<span>康美电影城</span>
								</h3>
								<table class="tb_film_2012_12_04">
								<colgroup><col class="col_film">
									<col class="col_time">
									<col class="col_remain">
									<col class="col_lan">
									<col class="col_ver">
									<col class="col_value">
									<col class="col_option">
									</colgroup><thead>
										<tr>
											<th>影片</th>
											<th>时间</th>
											<th>影厅空位</th>
											<th>语言</th>
											<th>版本</th>
											<th>价格</th>
											<th>购票</th>
										</tr>
									</thead>
								<c:forEach var="tts" items="${tt }">
								<tbody title="${tts.film.ffilmName }" style="">
								<tr>
								<td class="td_film"><a href="<%=path %>/movie.do?flag=goSingle&fid=${tts.film.fid }" title="${tts.film.ffilmName }">${tts.film.ffilmName }</a><br>(${tts.film.sort.ssort })<br>${tts.film.flong }分钟</td>
								<td colspan="6"><table class="data"><colgroup><col class="col_time_2"><col class="col_remain"><col class="col_lan"><col class="col_ver"><col class="col_value"><col class="col_option"></colgroup>
								<tbody>
									<tr style="">
									<td class="td_time">${tts.ttime}</td>
									<td>余${tts.hall.hnum }/${tts.hall.hnum }总</td><td>${tts.film.flanguage }</td>
									<td class="td_ver">${tts.film.ftype }</td>
									<td>￥${tts.tticketPrice }元</td>
									<td class="td_op"><a href="<%=path %>/tickets.do?flag=goStep2&tid=${tts.tid }" title="我要购票">我要购票</a></td>
								</tbody></table>
								</td>
								</tr>
								</tbody>
								</c:forEach>
								</table>
								</div>
								
							<!-----E card1 one----->
							<!-----B card1 two----->
							
							
							<div class="items 2" style="display: none;">
								<dl class="clearfix">
									<dt>
										影城：
									</dt>
									<dd class="show_cinema"><a class="on" href="javascript:void(0);" tt="823" title="康美电影城">康美电影城</a></dd>
								</dl>
								<dl class="clearfix">
									<dt>
										影片：
									</dt>
									<dd class="show_film_2012_12_04">
									<a class="all on" href="javascript:void(0);" title="全部" tt="0">[全部]</a>
									<c:forEach var="mtts" items="${mtt }">
										<a href="javascript:void(0);" title="${mtts.film.ffilmName }">${mtts.film.ffilmName }</a>
									</c:forEach>
									</dd>
								</dl>
							
								<h3 class="h3_cinema_2012_12_04">
									<span></span>
								</h3>
								<table class="tb_film_2012_12_04">
								<colgroup><col class="col_film">
									<col class="col_time">
									<col class="col_remain">
									<col class="col_lan">
									<col class="col_ver">
									<col class="col_value">
									<col class="col_option">
									</colgroup><thead>
										<tr>
											<th>影片</th>
											<th>时间</th>
											<th>影厅空位</th>
											<th>语言</th>
											<th>版本</th>
											<th>价格</th>
											<th>购票</th>
										</tr>
									</thead>
								<c:forEach var="mtts" items="${mtt }">
								<tbody title="${mtts.film.ffilmName }" style="">
								<tr>
								<td class="td_film"><a href="<%=path %>/movie.do?flag=goSingle&fid=${mtts.film.fid }" title="${mtts.film.ffilmName }">${mtts.film.ffilmName }</a><br>(${mtts.film.sort.ssort })<br>${mtts.film.flong }分钟</td>
								<td colspan="6"><table class="data"><colgroup><col class="col_time_2"><col class="col_remain"><col class="col_lan"><col class="col_ver"><col class="col_value"><col class="col_option"></colgroup>
								<tbody>
									<tr style="">
									<td class="td_time">${mtts.ttime}</td>
									<td>余${mtts.hall.hnum }/${mtts.hall.hnum }总</td><td>${mtts.film.flanguage }</td>
									<td class="td_ver">${mtts.film.ftype }</td>
									<td>￥${mtts.tticketPrice }元</td>
									<td class="td_op"><a href="<%=path %>/tickets.do?flag=goStep2&tid=${mtts.tid }" title="我要购票">我要购票</a></td>
								</tbody></table>
								</td>
								</tr>
								</tbody>
								</c:forEach>
								</table>
							</div>
						</div>
					</div>
					<div class="col_2_r">
					<a class="t_sina1" href="http://weibo.com/901019520" target="_blank" title="康美电影微博"> 
						<img src="images/weibo.jpg" alt="康美微博" width="258px" height="93px">
					 </a>
					</div>
	</div>
	</div>
	</div>
	
<jsp:include page="/WEB-INF/public/foot.jsp"/>
