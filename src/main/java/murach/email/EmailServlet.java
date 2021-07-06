package murach.email;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import murach.business.LineItem;
import murach.business.Product;
import murach.business.User;
import murach.data.UserIO;

import java.io.IOException;
import java.time.LocalDate;
import java.util.List;

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

        String email = request.getParameter("email");
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");

        ServletContext application = getServletContext();
        String path = application.getRealPath("/WEB-INF/UserList.txt");

        if (email != null || firstName != null || lastName != null ||
                !email.isBlank() || !firstName.isBlank() || !lastName.isBlank()) {

            User user = new User(firstName, lastName, email);
            session.setAttribute("user", user);
            UserIO.add(user,path);
            url = "/thanks.jsp";
        }

        //scope implicit EL objects - pageScope , requestScope, sessionScope, applicationScope
        LocalDate currentDate = LocalDate.now();
        request.setAttribute("currentDate", currentDate);

        //[] operator
        String[] colors = {"Red", "Green", "Blue"};
        application.setAttribute("colors", colors);

        List<User> users = UserIO.getUsers(path);
        session.setAttribute("users" , users);

        //nested property
        Product p = new Product();
        p.setCode("pf01");
        LineItem lineItem = new LineItem(p,10);
        session.setAttribute("item",lineItem);

        application.getRequestDispatcher(url).forward(request, response);
    }
}