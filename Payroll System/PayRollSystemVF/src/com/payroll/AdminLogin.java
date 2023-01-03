package com.payroll;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * Servlet implementation class UserLogin
 */
@WebServlet("/AdminLogin")
public class AdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @Author: PRAMOD
     */
    public AdminLogin() {
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		response.setContentType("text/html;charset=UTF-8");
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
		
		try{
			String username = request.getParameter("username");
			String passwords = request.getParameter("password");
			
			Connection con = ConnectionProvider.getConn();
			Statement st = con.createStatement();
			
			ResultSet rs = st.executeQuery("select * from admin where username='"+username+"' and password='"+passwords+"'");
			
			if(rs.next()){
				
				/*String email = rs.getString("email");
				String user_id = rs.getString("id");
				//String fname = rs.getString("fname");
				String p = rs.getString("password");*/
				
				
					
				
					response.sendRedirect("adminhome.jsp");
					
				}else{
					
					response.sendRedirect("admin.jsp?user='incorrect'");
				}
				
				
			
			
			
		}catch(Exception e){
			out.println(e);
		}finally{
			
			out.close();
		}
		
		

	
	}

}
