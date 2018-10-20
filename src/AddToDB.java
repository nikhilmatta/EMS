import javafx.application.Application;
import models.Database;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

@WebServlet(name = "AddToDB", value="/addToDB.jsp")
public class AddToDB extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
    private static String LIST_USER = "/formcontroller.jsp";


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String eventname = request.getParameter("eventname");
        System.out.println("Event name: "+eventname);
        String department = request.getParameter("department");
        String incharge = request.getParameter("incharge");
        String eventdate = request.getParameter("eventdate");
        String attendees = request.getParameter("attendees");
        String isfor = request.getParameter("isfor");
        String eventtype = request.getParameter("eventtype");
        String category = request.getParameter("category");
        String description = request.getParameter("description");
        String awards = request.getParameter("awards");
        System.out.println();

        Connection connection;
        connection = Database.getConnection();
        int uid = (int) request.getSession().getAttribute("uid");
        if(eventname != null) {
            String query = "insert into form(user_id,  event_name, event_department, event_incharge, date_of_event, attendees, activity_for, type, category, description, awards) VALUES (?,?,?,?,?,?,?,?,?,?,?)";

            try {
                PreparedStatement preparedStmt = connection.prepareStatement(query);
                preparedStmt.setInt(1,uid);
                preparedStmt.setString(2,eventname);
                preparedStmt.setString(3,department);
                preparedStmt.setString(4,incharge);
                preparedStmt.setString(5,eventdate);
                preparedStmt.setString(6,attendees);
                preparedStmt.setString(7,isfor);
                preparedStmt.setString(8,eventtype);
                preparedStmt.setString(9,category);
                preparedStmt.setString(10,description);
                preparedStmt.setString(11,awards);
                preparedStmt.execute();


            }
                catch (SQLException e) {
                e.printStackTrace();
            }
        }
        RequestDispatcher view = request.getRequestDispatcher(LIST_USER);


        view.forward(request, response);

    }


}
