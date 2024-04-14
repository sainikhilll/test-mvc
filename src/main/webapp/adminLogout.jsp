<%
session.setAttribute("role", "admin");
session.invalidate();
response.sendRedirect("index.jsp");
%>