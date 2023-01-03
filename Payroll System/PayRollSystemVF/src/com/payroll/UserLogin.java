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

@WebServlet("/UserLogin")
public class UserLogin extends HttpServlet {
	
	/**
     * @Author: PRAMOD
     */
	private static final long serialVersionUID = 1L;

protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException{
	
	loginRequest(request,response);
}

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException{
	
	loginRequest(request,response);
}

private void loginRequest(HttpServletRequest request,
		HttpServletResponse response) throws ServletException,IOException {
	
	
	response.setContentType("text/html;charset=UTF-8");
	HttpSession session = request.getSession();
	PrintWriter out = response.getWriter();
	
	try{
		String email1 = request.getParameter("email");
		String passwords = request.getParameter("password");
		
		System.out.println("Username");
		
		Connection con = ConnectionProvider.getConn();
		Statement st = con.createStatement();
		
		ResultSet rs = st.executeQuery("select * from user where email='"+email1+"'");
		
		if(rs.next()){
			
			String email = rs.getString("email");
			String user_id = rs.getString("id");
			String fname = rs.getString("fname");
			String p = rs.getString("password");
			
			if(passwords.equalsIgnoreCase(p)){
				
				
				session.setAttribute("email", email);
				session.setAttribute("fname", fname);
				session.setAttribute("userId", user_id);
				response.sendRedirect("userhome.jsp");
				
			}else{
				
				response.sendRedirect("userlogin.jsp?user='incorrect'");
			}
			
			
		}
		
		
	}catch(Exception e){
		out.println(e);
	}finally{
		
		out.close();
	}
	
	
}
	

}
