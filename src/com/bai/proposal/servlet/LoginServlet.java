package com.bai.proposal.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String dbURL = "jdbc:mysql://localhost:3306/proposaldb";
	private String dbUser = "root";
	private String dbPass = "root";    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String userName = request.getParameter("userName");
		String passWord = request.getParameter("passWord");
		
		Connection conn = null;
		String message = null;

		try {
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			conn = DriverManager.getConnection(dbURL, dbUser, dbPass);
			
			String sql1 = "Select username,rpassword from users where username='"+userName+"' and rpassword='"+passWord+"'";
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql1);
			while(rs.next()){
				if(rs.getString("username").equalsIgnoreCase(userName) && rs.getString("rpassword").equals(passWord)){
					request.setAttribute("userName", userName);
					getServletContext().getRequestDispatcher("/dashboard.jsp")
					.forward(request, response);
				}
				else{
					message = "No such user in the System."
							+"Please register first!!!";
					request.setAttribute("message", message);
					getServletContext().getRequestDispatcher("/login.jsp")
					.forward(request, response);
				}
			}
			stmt.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		finally{
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
	}

}
