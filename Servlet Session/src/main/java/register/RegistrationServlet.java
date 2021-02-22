package register;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/RegistrationController")
public class RegistrationServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String Fname = request.getParameter("firstname");
        String Lname = request.getParameter("lastname");
        String age = request.getParameter("age");
        String Email = request.getParameter("email");
        String Password = request.getParameter("password");
        String Confirm = request.getParameter("confirm");
        request.getRequestDispatcher("link.html").include(request, response);
        if (Fname.isEmpty() || Lname.isEmpty() || age.isEmpty() || Email.isEmpty() || Password.isEmpty() || Confirm.isEmpty()) {
            RequestDispatcher rd = request.getRequestDispatcher("registration.jsp");
            out.println("<font color=red>Please fill all the fields!! Please try again</font>");
            rd.include(request, response);
        } else {
            RequestDispatcher rd = request.getRequestDispatcher("register.jsp");
            rd.forward(request, response);
        }
    }


}
