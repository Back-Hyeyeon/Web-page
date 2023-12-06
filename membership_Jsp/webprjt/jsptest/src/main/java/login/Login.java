package login;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.websocket.Session;

import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class Login
 */
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Login() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		try {
			HttpSession session = request.getSession(false);
			if (session != null) {
				String sessionId = session.getId();
				System.out.println(sessionId);
				String user = (String) session.getAttribute("user");
				out.print("<html>");
				out.print("<body>");
				out.print("<table border='1' width='300'>");
				out.print("<tr>");
				out.print("<td width='300' align='center'>" + user + "님이 로그인 되었습니다.");
				out.print("</td>");
				out.print("</tr>");
				out.print("<tr><td align='center'><a href='#'>회원정보</a> &nbsp <a href='LgOUT'>로그아웃</a></td>");
				out.print("</tr>");
				out.print("</table> ");
				out.print("</body>");
				out.print("</html>");
			} else {
				out.print("<html>");
				out.print("<body>");
				out.print("<form method='post' action='LgCheck'>");
				out.print("<table border='1' width='300'>");
				out.print("<tr>");
				out.print("<th width='100'>아이디</th>");
				out.print("<td  width='200'>&nbsp<input type='text' name='id'></td>");
				out.print("</tr>");
				out.print("<tr>");
				out.print("<th width='100'>비번</th>");
				out.print("<td  width='200'>&nbsp<input type='password' name='pwd'></td>");
				out.print("</tr>");
				out.print("<tr>");
				out.print(
						"<td colspan='2' align='center'>&nbsp<input type='button' value='회원가입'>&nbsp<input type='submit' value='로그인'></td>");
				out.print("</tr>");
				out.print("</table>");
				out.print("</form>");
				out.print("</body>");
				out.print("</html>");
			}
		} finally {
			out.close();
		}
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
