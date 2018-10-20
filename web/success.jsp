<%--
  Created by IntelliJ IDEA.
  User: nikhilmatta
  Date: 16/09/18
  Time: 9:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
You are not logged in<br/>
<a href="index.jsp">Please Login</a>
<%} else {
%>
Welcome <%=session.getAttribute("userid")%>
<a href='logout.jsp'>Log out</a>
<%
    }
%>
