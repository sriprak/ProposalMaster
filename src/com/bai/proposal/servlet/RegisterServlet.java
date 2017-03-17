package com.bai.proposal.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String dbURL = "jdbc:mysql://localhost:3306/proposaldb";
	private String dbUser = "root";
	private String dbPass = "root";   
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
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
		String firstName = request.getParameter("fName");
		String lastName = request.getParameter("lName");
		String email = request.getParameter("eMail");
		String userName = request.getParameter("uName");
		String passWord = request.getParameter("passWord");
		String rPassWord = request.getParameter("rPassWord");
		
		Connection conn = null;
		String message = null;

		try {
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			conn = DriverManager.getConnection(dbURL, dbUser, dbPass);
			
			String sql1 = "Select username,email from users where username='"+userName+"' or email='"+email+"'";
			Statement stmt = conn.createStatement(); 
			ResultSet rs = stmt.executeQuery(sql1);
			if(rs.next()){
				message = "Please use a different Username or Email Address."
						+"The Specified Username or Email Address already exists in the system.";
			}
			else{
				String sql2 = "Insert into users(firstname,lastname,email,username, password,rpassword) values (?,?,?,?,?,?)";
				PreparedStatement stmt2 = conn.prepareStatement(sql2);
				stmt2.setString(1, firstName);
				stmt2.setString(2, lastName);
				stmt2.setString(3, email);
				stmt2.setString(4, userName);
				stmt2.setString(5, passWord);
				stmt2.setString(6, rPassWord);
				
				int result = stmt2.executeUpdate();
				
				if(result > 0){
					message = "User registered successfully.";
				}
				stmt2.close();
			}
			
			stmt.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		finally {

			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}

			request.setAttribute("message", message);
			getServletContext().getRequestDispatcher("/login.jsp")
			.forward(request, response);
		}
	}

}
