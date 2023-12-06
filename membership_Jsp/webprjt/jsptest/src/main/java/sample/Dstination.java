package sample;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;


public class Dstination extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public Dstination() {
        super();
        
    }
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//    	String back = (String) request.getAttribute("back");
//    	String age = request.getParameter("age");
    	
    	HttpSession session=request.getSession(false);
    	String name = (String) session.getAttribute("name");
    	String age = (String) session.getAttribute("age");
    	String age2 = request.getParameter("age2");
    	
    	response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Destination</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1> Destination Servlet 입니다</h1>");
            out.println("<h1> "+ name + age+ age2+" </h1>");
            out.println("</body>");
            out.println("</html>");
        } finally { 
            out.close();
        }
    	
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
//		doGet(request, response);
	}

}
