package com.bai.proposal.servlet;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
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
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class FileUploadPostRegServlet
 */
@WebServlet("/FileUploadPostRegServlet")
public class FileUploadPostRegServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String dbURL = "jdbc:mysql://localhost:3306/proposaldb";
	private String dbUser = "root";
	private String dbPass = "root";   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FileUploadPostRegServlet() {
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
		HttpSession session = request.getSession();
		String shortName = (String) session.getAttribute("shortName");
		String userName = (String) session.getAttribute("userName");
		String name = "Post_Registration_"
							+ shortName + ".docx";
		int user_id = 0;

		File file = new File("C:\\Users\\BAI-MUM\\Desktop\\Reports\\Post Registration Reports\\Post_Registration_"
							+ shortName + ".docx");
		
		InputStream fin = new FileInputStream(file);
		
		Connection conn = null;
		String message = null;

		try {
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			conn = DriverManager.getConnection(dbURL, dbUser, dbPass);
			
			String sql1 = "Select user_id from users where username='"+ userName +"'";
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql1);
			while(rs.next()){
				 user_id = rs.getInt("user_id");
			
			String sql2 = "Insert into files(file_name,file,user_id) values (?,?,?)";

			PreparedStatement stmt2 = conn.prepareStatement(sql2);
			stmt2.setString(1, name);
			stmt2.setBlob(2, fin);
			stmt2.setInt(3, user_id);

			int result = stmt2.executeUpdate();

			if (result > 0) {
				message = "File uploaded and saved into the database";
			}
			stmt2.close();
		}
			stmt.close();
		}
		catch(Exception e){
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
			getServletContext().getRequestDispatcher("/success.jsp")
			.forward(request, response);
		}
	}

}
