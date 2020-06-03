import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "CounterServlet", urlPatterns = "/count")
public class CounterServlet extends HttpServlet {

int counter = 0;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        counter ++;
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();
        out.println("Counter: <strong>" + counter + "</strong>");

        try{
            if(req.getParameter("reset").equals("1")){
                counter = 0;
            }
        }catch(NullPointerException ex){
            ex.printStackTrace();
        }

        counter++;
        out.println("Counter: <strong>" + counter + "</strong>");
    }
}

