<%@ page language="java" import="java.util.*,com.films.utils.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String filePath=getServletContext().getRealPath("/");
%>

<jsp:include page="/WEB-INF/public/head_seat.jsp"/>

	<div class="wrap">
	<div class="content">
		<h2>
			<a href="<%=path %>" title="首页">首页</a> &gt;
			<a href="<%=path %>/index.do?flag=filmIndex" title="电影">电影</a>
			&gt;
			<a class="c_on" title="${mtt.film.ffilmName }">${mtt.film.ffilmName }</a>
		</h2>
	        <div class="box">
          <div class="box_t"></div>
          <div class="box_m">
              <h3>选座位</h3>
              <div class="choose_nav clearfix">
                  <div class="choose_info"> <span id="showInf"><span>康美电影城</span></span> &gt;  <span>${mtt.film.ffilmName }</span>  &gt; <span>${mtt.ttime }</span>&gt;<span>${mtt.hall.hhall }</span></div>
                  <a class="choose_edit" href="#" title="进入时刻表">进入时刻表</a>
              </div>              
              <div class="choose">
                  <div class="remainder"></div>
                  <div class="choose_box">
                  <form action="<%=path %>/tickets.do?flag=submitSeat&tid=${mtt.tid }" method="post" id="submitTicket">
                      <div class="choose_exp clearfix">
                          <span class="li">可选的座位</span>
                          <span class="check">已售出的座位</span>
                          <span class="selected">您选择的座位</span>                    
                      </div>
                      <img src="images/screen.gif" alt="屏幕">
                      <div class="screen_des"></div>
                      <div class="c_box">                    
                      <div class="c_content">  
                                          
                      <c:forEach var="row" begin="1" end="13">
                      	<dl class="clearfix"><dt>${row }</dt>                       	
                      	<dd><ol>
                      		<input type="checkbox" name="rows" value="${row }" style="display: none;" />
	                      	<c:forEach var="num" begin="1" end="20">	                      			                      		
	                      		<li <c:forEach var="checks" items="${checked }">
	                      			<c:if test="${checks.senum==num&&checks.serow==row }">class="check"</c:if>
	                      			</c:forEach>
	                      		title="${num }">${num }<input type="checkbox" id="nums" name="nums" value="${num }" style="display: none;"/></li>
	                      		
	                      	</c:forEach>     
                      	</ol></dd>
                      	<dt class="r">${row }</dt></dl>                
                      </c:forEach>                    
                      </div>
                      </div>
					  <div class="section">
                         
                      </div>
					  
                      
					  <div class="dashed">
					  	<img src="images/dashed_1.gif" width="1" height="1" border="0">
					  </div>
					    <div style="border: 1px solid #CCCCCC;margin-top: 5px;padding: 10px 0px 10px 0px;font-size: 14px;color: black;font-family: 微软雅黑;width: 98%;">
					  		
					  		<p>友情提示：一次只能购买两张票，如果您拥有优享卡，每日仅有4张影票可以使用优享卡享受五折优惠或者优惠票价，其余影票不享受。</p>
					  		</div>
					   <div class="data clearfix">
                          <span><img src="images/choosed.gif">您选择了</span> 
						  <ol>						 
                          </ol>
                          <a class="reset" href="<%=path %>/index.do?flag=time" title="返回时刻表">返回时刻表</a>
                          <a id="t_submit" class="submit" href="javascript:void(0)" title="选好了，下一步">选好了，下一步</a>
                          <a class="reset reset_bt" href="#" title="重选座位">重选座位</a>
                      </div>
					  	</form>                    				 
					 
                  </div>
              </div>
          </div>
          <div class="box_b"></div>
        </div>
    </div>
    <!--E content-->		
	</div> 
	<script type="text/javascript" >
var $_lis = $(".c_content").find("li");
$_lis.click(function(){
	var $_li = $(this);
    $_li.addClass("selected");
    $_li.children().attr("checked","checked");
    $_li.parent().children().attr("checked","checked");
    var row = $_li.parent().children().val();
    var num = $_li.children().val();
    $(".data ol").append("<li>"+row+"排"+num+"座"+"</li>");
	});
	
$(".check").click(function(){
	alert("座位已售出，请重新选择！");
	$(".data ol li").remove();
	$(".c_content li.selected").removeClass("selected");
	$(".c_content li.check").addClass("selected");
	$(".c_content ol input").removeAttr("checked");
	$(".c_content li").removeAttr("checked");
	return false;
});	
	
$(".reset_bt").click(function(){
	$(".data ol li").remove();
	$(".c_content li.selected").removeClass("selected");
	$(".c_content li.check").addClass("selected");
	$(".c_content ol input").removeAttr("checked");
	$(".c_content li").removeAttr("checked");
	return false;
	
});

$("#t_submit").click(function(){
	if($(".data ol li").length>0 && $(".data ol li").length<=2){
		$("#submitTicket").submit();
	}else if($(".data ol li").length>2){
		alert("一次最多只能购买两张影票！");
	}else{
		alert("请选择一个座位！");
	}	
});
</script>
	
<jsp:include page="/WEB-INF/public/foot.jsp"/>
