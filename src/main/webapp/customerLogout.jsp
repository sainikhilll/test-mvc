<%
session.setAttribute("role", "Customer");
session.invalidate();
response.sendRedirect("index.jsp");
%>