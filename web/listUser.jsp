<%@ page import="java.util.List" %>
<%@ page import="models.form" %><%--
  Created by IntelliJ IDEA.
  User: nikhilmatta
  Date: 17/09/18
  Time: 9:48 AM
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Table V01</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--===============================================================================================-->
    <link rel="icon" type="image/png" href="Table_Responsive_v1/images/icons/favicon.ico"/>
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="Table_Responsive_v1/vendor/bootstrap/css/bootstrap.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="Table_Responsive_v1/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="Table_Responsive_v1/vendor/animate/animate.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="Table_Responsive_v1/vendor/select2/select2.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="Table_Responsive_v1/vendor/perfect-scrollbar/perfect-scrollbar.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="Table_Responsive_v1/css/util.css">
    <link rel="stylesheet" type="text/css" href="Table_Responsive_v1/css/main.css">
    <!--===============================================================================================-->
</head>
<body>

<div class="limiter">
    <div class="container-table100">
       <div style="text-align:Center">
           <h3>Welcome <%=application.getAttribute("fname")%> <%=application.getAttribute("lname")%>!</h3>

           <%
           int uid = (int) session.getAttribute("uid");
               session.setAttribute("uid", uid );
           %>
           <hr>
           <h6><a href='logout.jsp'>Log out</a></h6>
           <hr>
           <h5><a href="form.html"> Add Form</a></h5>
           <hr>
           <%--<fieldset><input type="radio" name="filter" value="all" id="all">--%>
               <%--<label for ="all">All &nbsp &nbsp &nbsp &nbsp</label>--%>
               <%--<input type="radio" name="filter" value="department" id="department">--%>
               <%--<label for ="department">Department &nbsp &nbsp &nbsp &nbsp</label>--%>
               <%--<input type="radio" name="filter" value="all" id="all">--%>
               <%--<label for ="all">All &nbsp &nbsp &nbsp &nbsp</label>--%>
               <%--<input type="radio" name="filter" value="all" id="all">--%>
               <%--<label for ="all">All &nbsp &nbsp &nbsp &nbsp</label>--%>
               <%--<input type="radio" name="filter" value="all" id="all">--%>
               <%--<label for ="all">All &nbsp &nbsp &nbsp &nbsp</label>--%>
           <%--</fieldset>--%>
       </div>

        <div class="wrap-table100">
            <div class="table100">
                <table class="css-serial">
                    <thead>
                    <tr class="table100-head">
                        <th class="column3">Serial No.</th>
                        <%--<th class="column3">Date of Creation</th>--%>
                        <th class="column3">Event Name</th>
                        <th class="column3">Event Department</th>
                        <th class="column3">Event Incharge</th>
                        <th class="column3">Date of Event</th>
                        <th class="column3">Attendees</th>
                        <th class="column3">Activity For</th>
                        <th class="column3">Type</th>
                        <th class="column3">Category</th>
                    </tr>
                    </thead>

                    <tbody>
                    <%--<c:forEach items="${forms}" var="models.form">--%>
                        <%--<tr>--%>
                            <%--<td><c:out value="${models.form.user_id}" /></td>--%>
                            <%--<td><c:out value="${models.form.date_of_creation}" /></td>--%>
                            <%--<td><c:out value="${models.form.event_name}" /></td>--%>
                            <%--<td><c:out value="${models.form.event_department}" /></td>--%>
                            <%--<td><c:out value="${models.form.event_incharge}" /></td>--%>
                            <%--<td><c:out value="${models.form.date_of_event}" /></td>--%>
                            <%--<td><c:out value="${models.form.attendees}" /></td>--%>
                            <%--<td><c:out value="${models.form.activity_for}" /></td>--%>
                            <%--<td><c:out value="${models.form.type}" /></td>--%>
                            <%--<td><c:out value="${models.form.category}" /></td>--%>
                        <%--</tr>--%>
                    <%--</c:forEach>--%>
                    <%
                        int i=1;
                        List<form> forms = (List)request.getAttribute("forms");
                        response.setContentType("text/html");
                        for(form f : forms)
                        {
                            out.println("<tr>");
                            out.println("<td>"+i+"</td>");
//                            out.println("<td>"+f.getDate_of_creation()+"</td>");
                            out.println("<td>"+f.getEvent_name()+"</td>");
                            out.println("<td>"+f.getEvent_department()+"</td>");
                            out.println("<td>"+f.getEvent_incharge()+"</td>");
                            System.out.println(f.getDate_of_event());
                            out.println("<td>"+f.getDate_of_event()+"</td>");
                            out.println("<td>"+f.getAttendees()+"</td>");
                            out.println("<td>"+f.getActivity_for()+"</td>");
                            out.println("<td>"+f.getType()+"</td>");
                            out.println("<td>"+f.getCategory()+"</td>");
                            out.println("</tr>");
                            i++;



                        }

                    %>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>




<!--===============================================================================================-->
<script src="Table_Responsive_v1/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
<script src="Table_Responsive_v1/vendor/bootstrap/js/popper.js"></script>
<script src="Table_Responsive_v1/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
<script src="Table_Responsive_v1/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
<script src="Table_Responsive_v1/js/main.js"></script>

</body>
</html>
