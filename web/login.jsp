<%--
  Created by IntelliJ IDEA.
  User: nikhilmatta
  Date: 16/09/18
  Time: 9:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import ="java.sql.*" %>
<%
    String userid = request.getParameter("username");
    String pwd = request.getParameter("password");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/EMS",
            "root", "Nikhil-0925");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from user where username='" + userid + "' and password='" + pwd + "'");


    if (rs.next()) {
        String f_name = rs.getString("first_name");
        String l_name = rs.getString("last_name");
        int uid = rs.getInt("user_id");

        application.setAttribute("userid", userid);
        application.setAttribute("fname",f_name);
        application.setAttribute("lname",l_name);
        session.setAttribute("uid",uid);
        //out.println("welcome " + f_name + " " + l_name);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("formcontroller.jsp");
    } else {
        out.println("Invalid password <a href='index.jsp'>try again</a>");
    }
%>