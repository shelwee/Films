<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

    <jsp:include page="head.jsp"></jsp:include>
    <div class="wrap">
  		<div class="content">
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
  				<div class="col_c">
					<div class="info">
						<div class="box_t over">
							<div class="box_l"></div>
							<div class="box_r"></div>
						</div>
						<dl class="bk">
							<dt>
								<a href="<%=path %>/userspace.do?flag=goUserInfo" title="点击修改头像"><img src="<%=path %>/upload/Gravator/${loginUser.uid}/${loginUser.uphoto}" style="width: 126px; height: 122px"></a>
							</dt>
							<dd class="ban">
								<strong>欢迎您，
								<c:choose>
									<c:when test="${loginUser.uname==null }">${loginUser.uemail }</c:when>
									<c:otherwise>${loginUser.uname } </c:otherwise>
								</c:choose>
								
								
								</strong>
							</dd>		   
										
											<dd>
												<label>
													绑定手机：
												</label>
												尚未绑定手机|<a href="javascript:void(0)" title="暂未开通">立即绑定</a>
												
												
											</dd>							

						</dl>
						<ul class="bk">
							<li>
								<label>交易提醒：</label>
								<c:if test="${NPC!=0 }">您有<a href="<%=path %>/userspace.do?flag=goUserOrder" title="查看我的订单">${NPC }</a>笔订单等待支付！</c:if>
							</li>
						</ul>
						<div class="box_b over">
							<div class="box_l"></div>
							<div class="box_r"></div>
						</div>
					</div>
					<div class="recomm">
						<div class="cap">
							<div class="cap_l"></div>
							<i class="ico">&nbsp;</i>
							<b>近期影片推荐</b>
							<div class="cap_r"></div>
							<a href="#" title="更多热门电影" class="more">更多热门电影</a>
						</div>
						
							<c:forEach var="rt" items="${quicktt }">
								<dl class="bk">
									<dt>
										<a href="<%=path %>/movie.do?flag=goSingle&fid=${rt.film.fid }" title="${rt.film.ffilmName }"><img height="93" width="159" title="${rt.film.ffilmName }" src="<%=path %>/upload/movie/${rt.film.fphoto}" alt="${rt.film.ffilmName }"> </a>
										<a class="btn" href="<%=path %>/movie.do?flag=goSingle&fid=${rt.film.fid }" title="立即购票">立即购票</a>
									</dt>
									<dd>
										<a class="title" href="<%=path %>/movie.do?flag=goSingle&fid=${rt.film.fid }" title="${rt.film.ffilmName }">${rt.film.ffilmName }</a>
										<span>上映日期：${rt.film.fdate }
										</span>
									</dd>
									<dd>
										主演：${rt.film.fplay }
									</dd>
									<dd class="con">
										<p>${rt.film.fintro }</p>
									</dd>
								</dl>
							</c:forEach>
							
						<div class="box_b over">
							<div class="box_l"></div>
							<div class="box_r"></div>
						</div>
					</div>			
				</div>
  		</div>
  	<jsp:include page="../public/side.jsp"></jsp:include>
  	</div>  
    <jsp:include page="../public/foot.jsp"></jsp:include>
