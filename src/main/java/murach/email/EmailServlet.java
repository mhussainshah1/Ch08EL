package murach.email;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import murach.business.LineItem;
import murach.business.Product;
import murach.business.User;
import murach.data.UserIO;

import java.io.IOException;
import java.time.LocalDate;
import java.util.List;
import java.util.Map;

@WebServlet(name = "EmailServlet", value = "/emailList")
public class EmailServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url = "/index.jsp";

        HttpSession session = request.getSession();

        // get current action
        String action = request.getParameter("action");
        String email = request.getParameter("email");
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");

        ServletContext application = getServletContext();

        if (action == null) {
            action = "join";  // default action
        } else if (action.equals("join")) {
            // perform action and set URL to appropriate page
            url = "/index.jsp";    // the "join" page
        } else if (action.equals("add")) {

            String path = application.getRealPath("/WEB-INF/UserList.txt");

            User user = new User(firstName, lastName, email);
            session.setAttribute("user", user);

            // validate the parameters
            String message = null;
            if (firstName == null || lastName == null || email == null ||
                    firstName.isBlank() || lastName.isBlank() || email.isBlank()) {
                message = "Please fill out all three text boxes.";
                url = "/index.jsp";
            } else {
                url = "/thanks.jsp";
                UserIO.add(user, path);

                //scope implicit EL objects - pageScope , requestScope, sessionScope, applicationScope
                LocalDate currentDate = LocalDate.now();
                request.setAttribute("currentDate", currentDate);

                //[] operator
                String[] colors = {"Red", "Green", "Blue"};
                application.setAttribute("colors", colors);

                List<User> users = UserIO.getUsers(path);
                session.setAttribute("users", users);

                //nested property
                Product p = new Product();
                p.setCode("pf01");
                LineItem lineItem = new LineItem(p, 10);
                session.setAttribute("item", lineItem);

                //[] operator
                Map<String, User> usersMap = UserIO.getUserMap(path);
                session.setAttribute("usersMap", usersMap);

                email = request.getParameter("email");
                session.setAttribute("email", email);
            }
            request.setAttribute("user", user);
            request.setAttribute("message", message);

        } else if (action.equals("implicitELObject")) {
            url = "/thanks.jsp";
            //nested [] operator
            String[] emails = {"jsmith@gmail.com", "joel@murach.com"};
            session.setAttribute("emails", emails);
        }
        Cookie c = new Cookie("emailCookie", email);
        c.setMaxAge(60 * 60);
        c.setPath("/");
        response.addCookie(c);

        application.getRequestDispatcher(url).forward(request, response);
    }
}