package register;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/LoginController")
public class LoginServlet extends HttpServlet {

    private final String userID = "admin";
    private final String password = "password";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String user = request.getParameter("user");
        String passwd = request.getParameter("passwd");
        request.getRequestDispatcher("link.html").include(request, response);
        if(userID.equals(user) && password.equals(passwd)){
            HttpSession session = request.getSession();
            session.setAttribute("user", "Aslan");
            //setting session to expiry in 30 min
            session.setMaxInactiveInterval(30*60);
            Cookie userName = new Cookie("user", user);
            userName.setMaxAge(30*60);
            response.addCookie(userName);
            response.sendRedirect("/login.jsp");
        }else{
            RequestDispatcher rd = getServletContext().getRequestDispatcher("/loginPage.jsp");
            out.println("<font color=red>Incorrect user name or password is wrong!! Please try again!</font>");
            rd.include(request, response);
        }
    }


}

