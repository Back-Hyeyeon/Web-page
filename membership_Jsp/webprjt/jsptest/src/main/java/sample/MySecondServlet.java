package sample;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

public class MySecondServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public MySecondServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {response.getWriter().append("Served at: ").append(request.getContextPath());
	//화면 문자셋
	response.setContentType("text/html;charset=utf-8");
	//화면출력 객체생성
	PrintWriter pw = response.getWriter();
	//출력 데이터
	Date date = new Date();
	String toDate = date.toString();
	
	//화면출력
	pw.println("<!DOCTYPE html>");
	pw.println("<html>");
	pw.println("<head>");
	pw.println("<meta charset=\"UTF-8\">");
	pw.println("<title>Insert title here</title>");
	pw.println("</head>");
	pw.println("<body>");
	pw.println("<h2>내가버림 살려주세ㅇ..ㅛ "+ toDate +" </h2>");
	pw.println("</body>");
	pw.println("</html>");
	pw.println("");
	pw.println("");
	pw.println("");


	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
