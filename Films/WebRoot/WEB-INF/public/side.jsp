<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
%>
  	<div class="sider">
  		<div class="t_buy">
  			<h2>今日购票</h2>
  			
  			<div class="s_o">
				<h3>康美电影城</h3>  					
	  		</div>
  			<div class="s_o">
		
  					<select id="qSelect" class="s_o_w" onchange="qselect()">
  					<c:forEach var="quicks" items="${quicktt }">
  						<option value="${quicks.tid}">${quicks.film.ffilmName }</option>
  					</c:forEach>
	  				</select>
	  		</div>

			<div class="s_o">
  					<select class="s_o_w">
	  				<c:forEach var="quicks" items="${quicktt }">
  						<option>${quicks.hall.hhall }(${quicks.hall.hnum }座)</option>
  					</c:forEach>
	  				</select>
	  		</div>
	  		<a id="quickBuy" href="" class="bt_submit" title="立即购票">立即购票</a>
  		</div>
  		
  		<a href="http://weibo.com/901019520" target="_blank" title="康美电影微博">														
			<img src="images/weibo.jpg" alt="万达微博" width="229px" height="93px">
		 </a>
  		
  		<div class="comment">
  			<h2>热门影评</h2>
  			<div class="c_2 clearfix">    
  			<c:forEach var="coms" items="${sidecom }" >
		        <div class="bbs">
					<div class="bbsimg">   
						<img src="<%=path %>/upload/Gravator/${coms.users.uid}/${coms.users.uphoto}" alt="用户头像" class="img60">
		
						</div>
						<div class="bbsa">
							<a href="javascript:void(0);" target="_blank">${coms.users.uname }</a> 评
							<a href="<%=path %>/movie.do?flag=goSingle&fid=${coms.film.fid}" target="_blank">${coms.film.ffilmName }</a>
							<p title="${coms.comments }">
								<strong>影片评论：</strong><a href="<%=path %>/movie.do?flag=goSingle&fid=${coms.film.fid}" target="_blank">${coms.comments }
							</a></p>
						</div>
					</div>
		       </c:forEach> 
					<div class="zazhi_b"></div>        
				</div>
  		</div>
  	</div>
<script type="text/javascript">
function qselect(){
	return $("#qSelect").val();
}
$("#quickBuy").click(function(){
	$(this).attr("href","<%=path %>/tickets.do?flag=goStep2&tid="+qselect());
});
</script>