<%--
  Created by IntelliJ IDEA.
  User: nikhilmatta
  Date: 16/09/18
  Time: 9:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%
    session.setAttribute("userid", null);
    session.invalidate();
    response.sendRedirect("index.jsp");
%>