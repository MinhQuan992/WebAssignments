import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "TestServlet")
public class TestServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");

        String url = ""; // url to forward to

        // Get the parameter values from the request
        String name = request.getParameter("customerName");
        String email = request.getParameter("customerEmail");
        String quantity = request.getParameter("quantity");

        // If any are empty, set the url to forward to the error page.
        // Ortherwise, forward to the normal receipt
        if (name.equals("") || email.equals("") || quantity.equals("")) {
            url = "/Week02/Exercise01/error.jsp";
            System.out.println("Going to error page");
        } else {
            double pricePerUnit = 9.95;
            int quantityNumber = Integer.parseInt(quantity);
            double totalCost = pricePerUnit * quantityNumber;
            request.setAttribute("pricePerUnit", "" + pricePerUnit);
            request.setAttribute("cost", "" + totalCost);
            url = "/Week02/Exercise01/receipt.jsp";
        }

        // Create the dispatcher from the url and perform the forward
        RequestDispatcher dispatcher = request.getRequestDispatcher(url);
        dispatcher.forward(request, response);
    }
}
