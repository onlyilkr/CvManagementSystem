<!DOCTYPE html>
<%@tag description="Simple Template" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
 
<%@attribute name="title"%>
<%@attribute name="head_area" fragment="true" %>
<%@attribute name="body_area" fragment="true" %>
 
 <%
	 response.setHeader("Cache-Control","no-cache");
	  response.setHeader("Cache-Control","no-store");
	  response.setHeader("Pragma","no-cache");
	  response.setDateHeader ("Expires", 0);
	if(request.getSession().getValue("isLoggedIn")!="true") {
	%>
		<c:redirect url="login.jsp"/>	<%
	}
	
	%>
	
<html>
 <head>
 <title>${title}</title>
<script src="js/jquery-1.11.0.min.js"></script>
<script src="js/jquery.js"></script>

<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.dataTables.min.js"></script>

<script src="js/dataTables.bootstrap.min.js"></script>
<script src="js/bootstrap-select.min.js"></script>


	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
	<link rel="stylesheet" type="text/css" href="css/dataTables.bootstrap.min.css"/>
	<link rel="stylesheet" type="text/css" href="css/buttons.bootstrap.min.css"/>
	<link rel="stylesheet" type="text/css" href="css/bootstrap-select.min.css"/>
	
	<script type="text/javascript">
		$(document).ready(function() {
		    $('#cvTable').DataTable();
		} );


		
</script>
     <jsp:invoke fragment="head_area"/>
 </head>
 <body>



 <nav class="navbar navbar-default">
  <div class="container">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="index.jsp"><img src="images/32bitHomeBanner.png"></a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li><a href="addcv.jsp"><span class="glyphicon glyphicon-plus"></span> Add CV</a></li>
        
               
         <%

	if(request.getSession().getAttribute("loggedMemberRole").equals("Manager")) {
	%>
		 <li><a href="MembersList"><span class="glyphicon glyphicon-th-list"></span> List Members</a></li>	<%
	}
	
	%>
	
	
      </ul>
  <!--      <form class="navbar-form navbar-left">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="Search">
        </div>
        <button type="submit" class="btn btn-default">Submit</button>
      </form>-->
      <ul class="nav navbar-nav navbar-right">
         <!--  <li><a href="#"><span class="glyphicon glyphicon-user"></span> Profile</a></li> -->
          <li><a href="Logout"><span class="glyphicon glyphicon-log-out"></span> Log out</a></li>	
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>

 


<jsp:invoke fragment="body_area"/>

 </body>
</html>