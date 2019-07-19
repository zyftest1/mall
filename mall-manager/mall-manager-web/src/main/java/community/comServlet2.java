package community;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;

public class comServlet2 extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String m = req.getParameter("_method");
        switch (m){

            case "selectAll":
                add(req,resp);
                break;
                case "insert":
                add(req,resp);
                break;
                case "delate":
                add(req,resp);
                break;
                case "update":
                add(req,resp);
                break;

        }
    }
    protected void select(HttpServletRequest req, HttpServletResponse resp){

    }
    protected void add(HttpServletRequest req, HttpServletResponse resp){}
    protected void update(HttpServletRequest req, HttpServletResponse resp){}
    protected void delete(HttpServletRequest req, HttpServletResponse resp){}
}
