<%@ page session="true" %>
<%
  session.invalidate();
  response.sendRedirect("admin-login.jsp");
%>
