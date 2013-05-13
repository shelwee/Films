<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <td valign="top">
    
<script>
var  highlightcolor='#d5f4fe';
//此处clickcolor只能用win系统颜色代码才能成功,如果用#xxxxxx的代码就不行,还没搞清楚为什么:(
var  clickcolor='#51b2f6';
function  changeto(){
source=event.srcElement;
if  (source.tagName=="TR"||source.tagName=="TABLE")
return;
while(source.tagName!="TD")
source=source.parentElement;
source=source.parentElement;
cs  =  source.children;
//alert(cs.length);
if  (cs[1].style.backgroundColor!=highlightcolor&&source.id!="nc"&&cs[1].style.backgroundColor!=clickcolor)
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor=highlightcolor;
}
}

function  changeback(){
if  (event.fromElement.contains(event.toElement)||source.contains(event.toElement)||source.id=="nc")
return
if  (event.toElement!=source&&cs[1].style.backgroundColor!=clickcolor)
//source.style.backgroundColor=originalcolor
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor="";
}
}

function  clickto(){
source=event.srcElement;
if  (source.tagName=="TR"||source.tagName=="TABLE")
return;
while(source.tagName!="TD")
source=source.parentElement;
source=source.parentElement;
cs  =  source.children;
//alert(cs.length);
if  (cs[1].style.backgroundColor!=clickcolor&&source.id!="nc")
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor=clickcolor;
}
else
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor="";
}
}

function selectall() 
{ 
var a = document.getElementsByTagName("input"); 
for (var i=0; i<a.length; i++) 
if (a[i].type == "checkbox") a[i].checked =!a[i].checked; 
} 

function gotoPage(){
		var pageNow = document.getElementById('forpage');
		var page = ${pageCount};
		if((pageNow.value>0)&&(pageNow.value<page+1)){
			window.open('<%=path %>/adminspace.do?flag=goUserUI&pageNow='+pageNow.value,'_self');
		}else{
			alert("输入超出范围，请重新输入！");
		}
	}
</script>
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="24" bgcolor="#353c44"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="3%" height="19" valign="bottom"><div align="center"><img src="images/admin/tb.gif" width="14" height="14" /></div></td>
                <td width="94%" valign="bottom"><span class="STYLE1"> 用户基本信息列表</span></td>
              </tr>
            </table></td>
            <td><div align="right"><span class="STYLE1">
            &nbsp;&nbsp;<img src="images/admin/add.gif" width="10" height="10" /> <a href="<%=path%>/userCenter.do?flag=addUser">添加   &nbsp;</a> </span><span class="STYLE1"> &nbsp;</span></div></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#a8c7ce" onmouseover="changeto()"  onmouseout="changeback()">
      <tr>
       
        <td width="25%" height="35" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">电子邮箱</span></div></td>
        <td width="15%" height="35" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">姓名</span></div></td>
        <td width="10%" height="35" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">用户名</span></div></td>
        <td width="10%" height="35" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">角色</span></div></td>
        <td width="14%" height="35" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">会员身份证号</span></div></td>
        <td width="14%" height="35" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">基本操作</span></div></td>
      </tr>
      
      <c:forEach var="users" items="${user }">
      <tr>
        <td height="30" bgcolor="#FFFFFF" class="STYLE6"><div align="center"><span class="STYLE19">${users.uemail }<input type="hidden" name="ttid" value="${users.uid }" /></span></div></td>
        <td height="30" bgcolor="#FFFFFF" class="STYLE19"><div align="center">${users.urealName }</div></td>
        <td height="30" bgcolor="#FFFFFF" class="STYLE19"><div align="center">${users.uname }</div></td>
        <td height="30" bgcolor="#FFFFFF" class="STYLE19"><div align="center"><c:choose><c:when test="${users.urole  =='user' }">普通用户</c:when><c:otherwise>管理员</c:otherwise></c:choose></div></td>
        <td height="30" bgcolor="#FFFFFF" class="STYLE19"><div align="center">${users.uidcard } </div></td>
        <td height="30" bgcolor="#FFFFFF"><div align="center" class="STYLE21"><a href="<%=path%>/userCenter.do?flag=delUser&uid=${users.uid }">删除</a> | <a href="<%=path%>/userCenter.do?flag=editUser&uid=${users.uid }">编辑</a></div></td>
      </tr>
      </c:forEach>
    </table></td>
  </tr>
 
  <tr>
    <td height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="33%"><div align="left"><span class="STYLE22">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;当前第<strong> ${now}</strong> 页，共 <strong id="pc">${pageCount }</strong> 页</span></div></td>
        <td width="67%"><table width="312" border="0" align="right" cellpadding="0" cellspacing="0">
          <tr>
         
            <td width="49"><div align="center"><c:if test="${now!=1 }"><a href="<%=path %>/adminspace.do?flag=goUserUI&pageNow=1" title="上一页"><img src="images/admin/main_54.gif" width="40" height="15" /></a></div></td>
            <td width="49"><div align="center"><a href="<%=path %>/adminspace.do?flag=goUserUI&pageNow=${now-1}" title="上一页"><img src="images/admin/main_56.gif" width="45" height="15" /></a> </c:if></div></td>
            <td width="49"><div align="center"><c:if test="${now!=pageCount }"><a href="<%=path %>/adminspace.do?flag=goUserUI&pageNow=${now+1}" title="下一页"><img src="images/admin/main_58.gif" width="45" height="15" /></a></div></td>
            <td width="49"><div align="center"><a href="<%=path %>/adminspace.do?flag=goUserUI&pageNow=${pageCount}" title="尾页"><img src="images/admin/main_60.gif" width="40" height="15" /></c:if></div></td>
            <td width="37" class="STYLE22"><div align="center">转到</div></td>
            <td width="22"><div align="center">
              <input type="text" name="forpage" id="forpage"  style="width:30px; height:17px; font-size:12px; border:solid 1px #7aaebd;"/>
            </div></td>
            <td width="22" class="STYLE22"><div align="center">页</div></td>
            <td width="35"><input type="image" src="images/admin/main_62.gif" width="26" height="15" onclick="gotoPage()" /></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
</table>

    </td>
    <td width="8" bgcolor="#353c44">&nbsp;</td>
  </tr>
</table>

<jsp:include page="down.jsp"></jsp:include>