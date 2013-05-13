<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<table width="147" height="100%" border="0" align="left" cellpadding="0" cellspacing="0">
  <tr>
    <td height="23" background="images/admin/main_34.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="9%">&nbsp;</td>
        <td width="83%"><div align="center" class="STYLE4"><a href="<%=basePath%>adminspace.do?flag=goAdminUI">后台管理</a></div></td>
        <td width="8%">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  
  <tr>
    <td valign="top"><div align="center">
      <table width="82%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="38"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="33" height="28"><img src="images/admin/movie.png" width="28" height="28"></td>
              <td width="99"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td height="23" class="STYLE4" style="cursor:hand" onMouseOver="this.style.backgroundImage='url(images/admin/tab_bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'"><a href="<%=basePath%>adminspace.do?flag=goMovieUI">电影管理</a></td>
                  </tr>
              </table></td>
            </tr>
          </table></td>
        </tr>
        <tr>
          <td height="38"><table width="100%" border="0" cellspacing="0" cellpadding="0">             
            <tr>
              <td width="33" height="28"><img src="images/admin/main_40.gif" width="28" height="28"></td>
              <td width="99"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td height="23" class="STYLE4" style="cursor:hand" onMouseOver="this.style.backgroundImage='url(images/admin/tab_bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'"><a href="<%=basePath%>adminspace.do?flag=goPostUI">发布电影</a></td>
                  </tr>
              </table></td>
            </tr>
          </table></td>
        </tr>
        
        <tr>
          <td height="38"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="33" height="28"><img src="images/admin/main_46.gif" width="28" height="28"></td>
              <td width="99"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td height="23" class="STYLE4" style="cursor:hand" onMouseOver="this.style.backgroundImage='url(images/admin/tab_bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'"><a href="<%=basePath%>adminspace.do?flag=goFilmUI">放映管理</a></td>
                  </tr>
              </table></td>
            </tr>
          </table></td>
        </tr>
        <tr>
          <td height="38"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="33" height="28"><img src="images/admin/main_48.gif" width="28" height="28"></td>
              <td width="99"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td height="23" class="STYLE4" style="cursor:hand" onMouseOver="this.style.backgroundImage='url(images/admin/tab_bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'"><a href="<%=basePath%>adminspace.do?flag=goUserUI">用户管理</a></td>
                  </tr>
              </table></td>
            </tr>
          </table></td>
        </tr>
        <tr>
          <td height="38"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="33" height="28"><img src="images/admin/main_52.gif" width="28" height="28"></td>
              <td width="99"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td height="23" class="STYLE4" style="cursor:hand" onMouseOver="this.style.backgroundImage='url(images/admin/tab_bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'"><a href="<%=basePath%>adminspace.do?flag=goTicketUI">售票管理</a></td>
                  </tr>
              </table></td>
            </tr>
          </table></td>
        </tr>
        <tr>
          <td height="38"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="33" height="28"><img src="images/admin/main_50.gif" width="28" height="28"></td>
              <td width="99"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td height="23" class="STYLE4" style="cursor:hand" onMouseOver="this.style.backgroundImage='url(images/admin/tab_bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'"><a href="<%=basePath%>adminspace.do?flag=goPwdUI">密码管理</a></td>
                  </tr>
              </table></td>
            </tr>
          </table></td>
        </tr>
        <tr>
          <td height="38">&nbsp;</td>
        </tr>
      </table>
    </div></td>
  </tr>

  <tr>
    <td height="19" background="images/admin/main_69.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="24%">&nbsp;</td>
        <td width="76%" valign="bottom"><span class="STYLE11">版本：2012 v1.0</span></td>
      </tr>
    </table></td>
  </tr>
</table>
