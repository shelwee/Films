<%@ page language="java" import="java.util.*,com.films.utils.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String filePath=getServletContext().getRealPath("/");
%>

<jsp:include page="/WEB-INF/public/head.jsp"/>

 <div id="container">
    <header>
      <h1>您是否想找下面的影片？</h1>
      <p>总共为您找到了${size }个相关资源！</p>
    </header>
    <div id="main">

      <ul id="tiles">
        <!-- These are our grid blocks -->
        <c:forEach var="film" items="${film }">
        <li><img src="<%=path %>/upload/movie/${film.fphoto}" width="200" height="<% out.println(MyTools.getRandom(350));  %>"><p>影片名：${film.ffilmName }</p><p>上映日期：${film.fdate }</p><p><a href="<%=path %>/movie.do?flag=goSingle&fid=${film.fid }" title="我要购票">我要购票</a></p></li>
        </c:forEach>
        <!-- End of grid blocks -->
      </ul>

    </div>
    <footer>

    </footer>
  </div>

  <!-- include jQuery -->
  <script src="js/jquery-1.4.4.min.js"></script>
  
  <!-- Include the plug-in -->
  <script src="js/jquery.wookmark.js"></script>
  
  <!-- Once the page is loaded, initalize the plug-in. -->
  <script type="text/javascript">
    $(document).ready(new function() {
      // Prepare layout options.
      var options = {
        autoResize: true, // This will auto-update the layout when the browser window is resized.
        container: $('#main'), // Optional, used for some extra CSS styling
        offset: 2, // Optional, the distance between grid items
        itemWidth: 210 // Optional, the width of a grid item
      };
      
      // Get a reference to your grid items.
      var handler = $('#tiles li');
      
      // Call the layout function.
      handler.wookmark(options);
      
      // Capture clicks on grid items.
      handler.click(function(){
        // Randomize the height of the clicked item.
        var newHeight = $('img', this).height() + Math.round(Math.random()*300+30);
        $(this).css('height', newHeight+'px');
        
        // Update the layout.
        handler.wookmark();
      });
    });
  </script>
  

<jsp:include page="/WEB-INF/public/foot.jsp"/>
