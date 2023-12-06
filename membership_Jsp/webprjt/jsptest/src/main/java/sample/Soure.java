package sample;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;


public class Soure extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public Soure() {
        super();

    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	System.out.println("start point");
	//값 들고옴 디비(curd)함 Forward 방식
//	request.setAttribute("back", "hey");
//	request.setAttribute("age", 10);
	//화면에 뿌려줄 콜한다(코드방법)
//	RequestDispatcher rd = request.getRequestDispatcher("Dstination");
//	rd.forward(request, response);
	
	//값을 전달 Redirect 방식
	HttpSession session = request.getSession();
	String age = request.getParameter("age");
	session.setAttribute("name", "back");
	session.setAttribute("age", age);
	
	response.sendRedirect("Dstination?age2=32");
	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
