import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "HelloWorldServlet", urlPatterns = "/hello")
public class HelloWorldServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        try {
            String name = request.getParameter("name");
            out.println("<h1>Hello, " + name + " World!</h1>");
        }catch (NullPointerException e){
            out.println("<h1>Hello World!</h1>");
        }

//    Fer's example. Both are correct:

//        if(name == null){
//            String name = request.getParameter("name");
//            out.println("<h1>Hello, " + name + " World!</h1>");
//        }else{
//            out.println("<h1>Hello World!</h1>");
//        }

    }
}
