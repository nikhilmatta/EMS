import models.form;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(value = "/formcontroller.jsp")
public class formController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static String LIST_USER = "/listUser.jsp";
    private formDao dao;
    formDao formDao = new formDao();
    form form = new form();


    public formController() {
        super();
        dao = new formDao();
    }



    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        models.form models.form = new models.form();
//        models.form.setUser_id(request.getIntHeader("user_id"));
//        models.form.setDate_of_creation(request.getParameter("date_of_creation"));
//        models.form.setEvent_name(request.getParameter("event_name"));
//        models.form.setEvent_department(request.getParameter("event_department"));
//        models.form.setEvent_incharge(request.getParameter("event_incharge"));
//        models.form.setDate_of_event(request.getParameter("date_of_event"));
//        models.form.setAttendees (request.getParameter("attendees"));
//        models.form.setActivity_for(request.getParameter("activity_for"));
//        models.form.setType(request.getParameter("type"));
//        models.form.setCategory(request.getParameter("category"));

//


        RequestDispatcher view = request.getRequestDispatcher(LIST_USER);
        int uid = (int) request.getSession().getAttribute("uid");
        request.setAttribute("forms", dao.getAllForms(uid));

        view.forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }
}
