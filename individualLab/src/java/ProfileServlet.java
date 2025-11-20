import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ProfileServlet", urlPatterns = {"/ProfileServlet"})
public class ProfileServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String studentID = request.getParameter("studentID");
        String program_code = request.getParameter("program_code");
        String program = request.getParameter("program");
        String hobbies = request.getParameter("hobbies");
        String selfIntroduction = request.getParameter("selfIntroduction");

        // Set attributes for JSP
        request.setAttribute("name", name);
        request.setAttribute("email", email);
        request.setAttribute("studentID", studentID);
        request.setAttribute("program_code", program_code);
        request.setAttribute("program", program);
        request.setAttribute("hobbies", hobbies);
        request.setAttribute("selfIntroduction", selfIntroduction);

        // Forward to JSP
        RequestDispatcher rd = request.getRequestDispatcher("profile.jsp");
        rd.forward(request, response);
    }
}
