package jdbc;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import java.sql.*;
import java.util.*;

public class TempMemberDAO {

	public Connection getConnection() {
		Connection conn = null;
		try {
			Context init = new InitialContext();
			DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/myOracle");
			conn = ds.getConnection();
//			System.out.println("데이터소스 Connection pool"); 작동되는지 확인
		} catch (Exception e) {
			System.err.println("Connection 생성실패");
		}
		return conn;
	}

	public TempMemberDAO() {
	}

	public Vector<TempMemberVO> getMemberList() {
//		ConnectionPool pool = null;
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		Vector<TempMemberVO> vecList = new Vector<TempMemberVO>();
		try {
//			pool = ConnectionPool.getInstance();
			conn = this.getConnection();
			String strQuery = "select * from TempMember";
			stmt = conn.createStatement();
			rs = stmt.executeQuery(strQuery);
			while (rs.next()) {
				TempMemberVO vo = new TempMemberVO();
				vo.setId(rs.getString("id"));
				vo.setPasswd(rs.getString("passwd"));
				vo.setName(rs.getString("name"));
				vo.setMem_num1(rs.getString("mem_num1"));
				vo.setMem_num2(rs.getString("mem_num2"));
				vo.setEmail(rs.getString("e_mail"));
				vo.setPhone(rs.getString("phone"));
				vo.setZipcode(rs.getString("zipcode"));
				vo.setAddress(rs.getString("address"));
				vo.setJob(rs.getString("job"));
				vecList.add(vo);
			}
		} catch (Exception ex) {
			System.out.println("Exception" + ex);
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException e) {
				}
			if (stmt != null)
				try {
					stmt.close();
				} catch (SQLException e) {
				}
			if (conn != null)
				try {
					conn.close();
				} catch (SQLException e) {
				}
		}
		return vecList;
	}
}