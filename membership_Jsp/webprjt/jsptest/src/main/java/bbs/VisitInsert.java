package bbs;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class VisitInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String writer;
	private String memo;

	public VisitInsert() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// request에 데이터 받는다. 패턴검색까지 해야한다.
		writer = request.getParameter("writer");
		memo = request.getParameter("memo");
		System.out.println(writer);
		System.out.println(memo);

		// 테이터 베이스에 저장 insert
		StringBuffer query = new StringBuffer();
		query.append("INSERT into VISIT(NO, WRITER, MEMO, REGDATE) values(visit_seq.nextval, ?,?, sysdate)");
		Connection con = null;
		PreparedStatement ps = null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr", "hr");
			ps = con.prepareStatement(query.toString());
			ps.setString(1, writer);
			ps.setString(2, memo);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} finally {
			if (ps != null) {
				 try {
	                    ps.close();
	                } catch (SQLException e) {  
	                    e.printStackTrace();
	                }
	            }
	            if(con != null) {
	                try {
	                    con.close();
	                } catch (SQLException e) {
	                    e.printStackTrace();
	                }
	            }
	        }
		//화면설계된 페이지 요청
		response.sendRedirect("VisitList");
		
	}

	

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
