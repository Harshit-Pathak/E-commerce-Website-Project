<%
{
session.invalidate();
response.sendRedirect("Admin.jsp");
return;
}
%>