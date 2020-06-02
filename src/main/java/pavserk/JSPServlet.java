package pavserk;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(urlPatterns = {"/temp-ser", "/ts"})
public class JSPServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       // resp.sendRedirect("/my-app/first-jsp.jsp"); через клиента
        ArrayList<User> users = new ArrayList<User>() {{
            add(new User("Mike", "Nepal", 24));
            add(new User("Bob", "Thailand", 45));
            add(new User("Joe", "Morocco", 32));
        }};

        req.setAttribute("users", users);
        getServletContext().getRequestDispatcher("/first-jsp.jsp").forward(req, resp);

    }
}
