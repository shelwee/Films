<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

    <jsp:include page="head_comment.jsp"></jsp:include>
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
							<div class="comment_box">
								<div class="comment_box_panel">
										<c:forEach var="mycoms" items="${mycom}">
											<dl>
												<dt>
													<img src="<%=path %>/upload/Gravator/${mycoms.users.uid}/${mycoms.users.uphoto}" alt="" style="width: 60px;height: 60px;">
												</dt>
												<dd><b>${mycoms.users.uname}</b>&nbsp;&nbsp;发表于：${mycoms.ctime }</dd>
												<dd>${mycoms.comments }</dd>
												<dd>来自：<a href="<%=path%>/movie.do?flag=goSingle&fid=${mycoms.film.fid}" title="${mycoms.film.ffilmName }">${mycoms.film.ffilmName }</a></dd>
											</dl>
										</c:forEach>
								</div>
							</div>
							<div id="Pagination_Comment" class="page_nav"><b>${now }</b>共${pageCount}页 <span> 到第<input id="forpage" type="text" size="2" value=""> 页<input type="button" id="btn_Pagination_Comment" onclick="gotoPage()" class="btn" value="确定"></span></div>
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
function gotoPage(){
		var pageNow = document.getElementById('forpage');
		var page = ${pageCount};
		if((pageNow.value>0)&&(pageNow.value<page+1)){
			window.open('<%=path %>/userspace.do?flag=goUserComment&pageNow='+pageNow.value,'_self');
		}else{
			alert("输入超出范围，请重新输入！");
		}
	}
</script>
    <jsp:include page="../public/foot.jsp"></jsp:include>