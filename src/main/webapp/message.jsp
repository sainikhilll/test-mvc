<%
	String role = (String)session.getAttribute("role");
if(role == null){%>
	<%@ include file="head.jsp"%>
<%}else if(role.equalsIgnoreCase("Admin")){%>
	<%@ include file="adminHead.jsp"%>
<%}else if(role.equalsIgnoreCase("Customer")){%>
	<%@ include file="customerHead.jsp"%>
<%}%>
<%
	String msg = request.getParameter("msg");
%>
<div class="row">
	<div class="col-md-4"></div>
		<div class="col-md-4 mt-5">
			<div class="alert alert-info">
		    	<strong><%=msg%></strong>
		   	</div>
	   	</div>
	 </div>
<div class="col-md-4"></div>