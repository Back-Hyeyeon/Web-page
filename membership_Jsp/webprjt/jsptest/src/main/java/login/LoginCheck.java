package login;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

/**
 * Servlet implementation class LoginCheck
 */
public class LoginCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LoginCheck() {
		super();

	}

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
	
		if(id.equals(id) && pwd.equals(pwd)) {
			HttpSession session = request.getSession();
			session.setAttribute("user", id);
		}
		response.sendRedirect("LOG");
		
	}
	

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request, response);
//		doGet(request, response);
	}

}
