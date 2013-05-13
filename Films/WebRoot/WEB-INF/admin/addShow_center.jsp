<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<jsp:include page="top.jsp"></jsp:include>
<table width="100%" height="85%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="8" bgcolor="#353c44">&nbsp;</td>
    <td width="147" valign="top"><jsp:include page="left.jsp"></jsp:include></td>
    <td width="10" bgcolor="#add2da">&nbsp;</td>
    <td valign="top" width="1092">
    <div class="content">
    <div class="main">
        <div class="eidtor">
            <div class="box_t over">
                <div class="box_l"></div>
                <div class="box_r"></div>
            </div>
            <div class="bk">
                <div class="cap">
                    <div class="cap_l"></div>
                    <i class="ico">&nbsp;</i>
        			<span class="h3">电影放映</span>                  
                    <div class="cap_r"></div>
                </div>
				
                <div class="input_form reg_form">
				<form name="movieform" id="reg_form" method="post" action="<%=path %>/showCenter.do?flag=postShow" >
                   <input id="validator" name="validator" value="1" type="hidden">
                    <fieldset class="clearfix">
                        <label for=""><em>*</em>电影名称</label>
                        <select name="tFID">
                        <c:forEach var="films" items="${film }">                       
                        <option value="${films.fid }">${films.ffilmName }</option>      
                        </c:forEach>                    
                        </select>
                        <span class="err_red"></span> 
                    </fieldset>
                        <br/>
                    <fieldset class="clearfix">
                        <label for=""><em>*</em>放映日期</label>
                        <input id="tDate" name="tDate" maxlength="20" size="30" class="ipt" type="text" readonly="readonly" onclick="Calendar('tDate');">
                        <span class="err_red"></span>
                    </fieldset>                
                    <br/>
                    <fieldset class="clearfix">
                        <label for=""><em>*</em>放映时间</label>
                        <input id="tTime" name="tTime" maxlength="20" size="30" class="ipt" type="text">
                        <span class="err_red"></span>
                    </fieldset>                
                    <br/>
                    <fieldset class="clearfix">
                        <label for=""><em>*</em>&nbsp;价&nbsp;&nbsp;格&nbsp;</label>
                        <input id="tTicketPrice" name="tTicketPrice" maxlength="5" size="30" class="ipt" type="text">
                        <span class="err_red"></span>
                    </fieldset>                
                    <br/>
                    <fieldset class="clearfix">
                        <label for=""><em>*</em>放映大厅</label>
                        <select name="tHallID">
                        <c:forEach var="halls" items="${hall }">
                        <option value="${halls.hid }">${halls.hhall}</option>
                        </c:forEach>
                        </select>
                        <span class="err_red"></span>
                    </fieldset>
                    <br/>
              		<div class="btns clearfix">
                        <a title="立即发布" id="reg_sumit" class="btn big" href="javascript:void(0);">立即发布</a>
                   </div>
				  </form>
				 
                </div>
            </div>       
        </div>
    </div>
</div>  
    </td>
    <td width="8" bgcolor="#353c44">&nbsp;</td>
  </tr>
</table>
<script type="text/javascript">
//回车登陆
document.onkeydown=function(event){ 
	e = event ? event :(window.event ? window.event : null); 
	if(e.keyCode==13){ 
		$("#reg_sumit").click(); 
	} 
};

$("#reg_sumit").click(function(){
	$("#reg_form").submit();
});
</script>
<script type="text/javascript" src="<%=path %>/js/Imgpreview.js"></script>
<jsp:include page="down.jsp"></jsp:include>