import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@WebServlet(name = "Validate", urlPatterns = {"/Validate"})
public class Validate extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = (request.getParameter("customerName")).trim();
        String phone = (request.getParameter("customerPhone")).trim();
        String email = (request.getParameter("customerEmail")).trim();
        String quantity = (request.getParameter("quantity")).trim();
        String cardNumber = (request.getParameter("cardNumber")).trim();
        int month = Integer.parseInt(request.getParameter("month"));
        int year = Integer.parseInt(request.getParameter("year"));

        request.setAttribute("name", "" + name);
        request.setAttribute("phone", "" + phone);
        request.setAttribute("email", "" + email);
        request.setAttribute("quantity", "" + quantity);
        request.setAttribute("cardNumber", "" + cardNumber);
        request.setAttribute("month", "" + month);
        request.setAttribute("year", "" + year);

        boolean hasError = false;

        if (name.equals(""))
        {
            request.setAttribute("nameError", "You must enter a name");
            hasError = true;
        }

        Pattern phonePattern = Pattern.compile("\\d{3}-\\d{3}-\\d{4}");
        Matcher phoneMatcher = phonePattern.matcher(phone);
        if (!phoneMatcher.matches())
        {
            request.setAttribute("phoneError", "Phone number must be in right format");
            hasError = true;
        }

        if (!email.equals(""))
        {
            Pattern emailPattern = Pattern.compile("\\w+@\\w+(.\\w+)*");
            Matcher emailMatcher = emailPattern.matcher(email);
            if (!emailMatcher.matches())
            {
                request.setAttribute("emailError","Email address is not valid");
                hasError = true;
            }
        }

        Pattern quantityPattern = Pattern.compile("\\d+");
        Matcher quantityMatcher = quantityPattern.matcher(quantity);
        if (!quantityMatcher.matches())
        {
            request.setAttribute("quantityError","You must enter a number for quantity");
            hasError = true;
        }
        else
        {
            try
            {
                int quantityNumber = Integer.parseInt(quantity);
                if (quantityNumber <= 0)
                {
                    request.setAttribute("quantityError", "At least 1");
                    hasError = true;
                }
            }
            catch (NumberFormatException ex)
            {
                request.setAttribute("quantityError","You must enter a number for quantity");
                hasError = true;
            }
        }

        Pattern cardPattern = Pattern.compile("\\d{16}");
        Matcher cardMatcher = cardPattern.matcher(cardNumber);
        if (!cardMatcher.matches())
        {
            request.setAttribute("cardError","Credit card number must contain 16 digits");
            hasError = true;
        }

        GregorianCalendar calendar = new GregorianCalendar();
        int yearNow = calendar.get(Calendar.YEAR);
        int monthNow = calendar.get(Calendar.MONTH);
        if (year < yearNow || (year == yearNow && month < monthNow))
        {
            request.setAttribute("monthYearError","Your card has expired");
            hasError = true;
        }

        String url;
        if (hasError)
        {
            url = "/Week04/Assignment05/index.jsp";
        }
        else
        {
            url = "/Week04/Assignment05/confirmation.jsp";
        }
        RequestDispatcher dispatcher = request.getRequestDispatcher(url);
        dispatcher.forward(request, response);
    }
}
