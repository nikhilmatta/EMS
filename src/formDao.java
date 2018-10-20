import models.Database;
import models.form;

import java.sql.*;
import java.util.*;

public class formDao {

    private Connection connection;


    public formDao() {
        connection = Database.getConnection();

    }
        models.form form = new form();
        //models.Database database = new models.Database();


    public List getAllForms(int uid) {

            List<form> forms = new ArrayList<form>();
            try {
                Statement statement = connection.createStatement();
                ResultSet rs = statement.executeQuery("select * from form");
                while (rs.next()) {
                    form.setUser_id(rs.getInt("user_id"));
                    form.setDate_of_creation(rs.getString("date_of_creation"));
                    form.setEvent_name(rs.getString("event_name"));
                    form.setEvent_department(rs.getString("event_department"));
                    form.setEvent_incharge(rs.getString("event_incharge"));
                    form.setDate_of_event(rs.getString("date_of_event"));
                    form.setAttendees (rs.getString("attendees"));
                    form.setActivity_for(rs.getString("activity_for"));
                    form.setType(rs.getString("type"));
                    form.setCategory(rs.getString("category"));
                    forms.add(form);
                    System.out.println(rs.getString("date_of_event"));


                }
            } catch (SQLException e) {
                e.printStackTrace();
            }

            return forms;
        }


    }
 