<%@ page language="java" import="java.util.*,com.films.utils.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String filePath=getServletContext().getRealPath("/");
%>

<jsp:include page="/WEB-INF/public/head_help.jsp"/>

	<div class="wrap">
		 <div class="content">
   		<h2><a href=<%=path %> title="首页">首页</a> &gt; <a class="c_on" href="#" title="帮助中心">帮助中心</a></h2>
        <div class="s_box">
          <div class="s_box_t"></div>
          <div class="s_box_m">
       			<ul class="clearfix">
        			<li class="s_1">
            			<h5>在线提交您对万达电影网站的建议和意见，帮助我们更好的完善网站。</h5>
                		<a href="#" class="service_bt" title="点击了解更多">点击了解更多</a>
            		</li>
                    <li class="s_2">
            			<h5>在这里有最全的影城相关信息，帮助您快速到达影城，了解影城的一切。</h5>
                		<a href="#" class="service_bt city_i" title="点击了解更多">点击了解更多</a>
            		</li>
                    <li class="s_3">
            			<h5>如果在使用网站过程遇到问题请拨打网站客服热线，我们提供如下业务咨询：注册登录、订单支付、交易查询。服务时间：9：00-23:00</h5>
						<a href="#" class="service_bt" title="点击了解更多">点击了解更多</a>
            		</li>
                    <li class="s_4">
            			<h5>我们为您解答网站常见问题，帮助您更好的使用康美院线全新电子商务网站。</h5>
                		<a href="#" class="service_bt" title="点击了解更多">点击了解更多</a>
            		</li>
                    <li class="s_5">
            			<h5>帮您解答购票相关问题，使您能够更方便快捷的完成网上购票操作。</h5>
                		<a href="#" class="service_bt" title="点击了解更多">点击了解更多</a>
            		</li>
            		
            		
            			
            			
	            		    <li class="s_6_1">
		            			<h5>帮助您解决会员相关问题，包括会员的注册和权益的维护。</h5>
		                		<a href="#" title="建设中" class="service_bt_1">建设中</a>
	            			</li>
            			
            		
            		
                 
       			</ul>
          </div>
          <div class="s_box_b"></div>
        </div>
    </div>
	</div>
	
<jsp:include page="/WEB-INF/public/foot.jsp"/>
