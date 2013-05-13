<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
   <jsp:include page="head.jsp"></jsp:include>
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
                    <i class="ico2">&nbsp;</i>
						<div class="my_film"><a href="javascript:void(0)">我的电影订单</a></div>
                    <div class="cap_r"></div>
                </div>
                <div class="tab_box" id="tabBox">
                	<ul class="tab">
                	   
                	      <li id="order_li_1" class="cur"><b>全部订单</b></li>
                	              	
                	      <li id="order_li_2" class=""><b>已付款</b></li>
            
                	      <li id="order_li_3" class=""><b>未付款</b></li>
        
                    </ul>
     
                	       <div id="order_div_1" class="tab_body" style="display: block; ">
                	   
                	      
                        <div class="table">
                        <table width="100%" border="0" cellpadding="0" cellspacing="0">
                            <tbody><tr>
                            	<th>订单编号</th>
                            	<th width="120">电影名称</th>
                            	<th>支付方式</th>
                            	<th>订单时间</th>
                            	<th>订单金额</th>
                            	<th>订单状态</th>
                            	<th>已选座位</th>
                            	<th width="200">操  作</th>
                            </tr>
                            	
							<c:forEach var="orders" items="${order }">			   
							<tr title="放映时间：${orders.playdate } ${orders.playtime}">
                            	<td><b class="handler">${orders.id }</b></td>
                                <td>${orders.fname }</td>
                                <td>网银</td>
                                <td>${orders.date }</td>
                                <td><em>${orders.money }元</em></td>
                                <td>
                                <c:choose>
                                	<c:when test="${orders.state=='no-pay' }">未付款</c:when>
                                	<c:otherwise>已付款</c:otherwise>
                                </c:choose>
                                </td>
                                <td>${orders.serow }排 ${orders.senum }座</td>
                                <td>
                                <c:choose>
                                	<c:when test="${orders.state=='no-pay' }">
									<a class="btn" href="<%=path %>/tickets.do?flag=submitOrder&oid=${orders.id }" title="立即支付">立即支付</a>
									<a href="<%=path %>/tickets.do?flag=reseat&oid=${orders.id }" class="btn">重新选座</a>
		                     		</c:when>
		                     		<c:otherwise>
		                     		</c:otherwise>
		                     	</c:choose>
                                </td>
                            </tr>
							</c:forEach>				   
											   
						
                           
                        </tbody></table>
                        </div>
                        <div id="Pagination_All" class="page_nav"> <b>${now }</b>共${pageCount}页<span> 到第<input id="forpage" type="text" size="2" value=""> 页<input type="button" id="btn_Pagination_All" onclick="gotoPage()" class="btn" value="确定"></span></div>
                    </div>
                       
                	      
                	        <div id="order_div_2" class="tab_body" style="display: none; ">
                	   
                        <div class="table">
                       <table width="100%" border="0" cellpadding="0" cellspacing="0">
                            <tbody><tr>
                            	<th>订单编号</th>
                            	<th width="120">电影名称</th>
                            	<th>支付方式</th>
                            	<th>订单时间</th>
                            	<th>订单金额</th>
                            	<th>订单状态</th>
                            </tr>
                            	
							<c:forEach var="orderP" items="${orderP }">			   
							<tr>
                            	<td><b class="handler">${orderP.id }</b></td>
                                <td>${orderP.fname }</td>
                                <td>网银</td>
                                <td>${orderP.date }</td>
                                <td><em>${orderP.money }元</em></td>
                                <td><c:if test="${orderP.state=='payed' }">已付款</c:if> </td>
                            </tr>
							</c:forEach>				   
											   
						
                           
                        </tbody></table>
                        </div>
                        <div id="Pagination_Pay" class="page_nav"><b>${now }</b> <span> 到第<input id="forpage" type="text" size="2" value=""> 页<input type="button" id="btn_Pagination_Pay" onclick="gotoPage()" class="btn" value="确定"></span></div>
                    </div>
                       
                	      
                	        <div id="order_div_3" class="tab_body" style="display: none; ">
                	   
                        <div class="table">
                         <table width="100%" border="0" cellpadding="0" cellspacing="0">
                            <tbody><tr>
                            	<th>订单编号</th>
                            	<th width="120">电影名称</th>
                            	<th>支付方式</th>
                            	<th>订单时间</th>
                            	<th>订单金额</th>
                            	<th>订单状态</th>
                            	<th>剩余支付时间</th>
                            	<th width="200">操  作</th>
                            </tr>
                            	
							<c:forEach var="orders" items="${order }">	
							<c:choose>
                                	<c:when test="${orders.state=='no-pay' }">
                                		<tr>
			                            	<td><b class="handler">${orders.id }</b></td>
			                                <td>${orders.fname }</td>
			                                <td>网银</td>
			                                <td>${orders.date }</td>
			                                <td><em>${orders.money }元</em></td>
			                                <td>未付款</td>
			                                <td><em>&nbsp;</em></td>
			                                <td>
											 <a class="btn" href="<%=path %>/tickets.do?flag=submitOrder&oid=${orders.id }" title="立即支付">立即支付</a>
											 <a href="<%=path %>/tickets.do?flag=reseat&oid=${orders.id }" class="btn">重新选座</a>
					                     
			                                </td>
			                            </tr>
                                	</c:when>
                                	<c:otherwise></c:otherwise>
                            </c:choose>		 
							</c:forEach>				   
											   
						
                           
                        </tbody></table>
                        </div>
                        <div id="Pagination_Unpay" class="page_nav"><b>${now }</b>  <span> 到第<input id="forpage" type="text" size="2" value=""> 页<input type="button" id="btn_Pagination_Unpay" onclick="gotoPage()" class="btn" value="确定"></span></div>
                      
                      </div>
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
function gotoPage(){
		var pageNow = document.getElementById('forpage');
		var page = ${pageCount};
		if((pageNow.value>0)&&(pageNow.value<page+1)){
			window.open('<%=path %>/userspace.do?flag=goUserOrder&pageNow='+pageNow.value,'_self');
		}else{
			alert("输入超出范围，请重新输入！");
		}
	}
</script>
    <jsp:include page="../public/foot.jsp"></jsp:include>
