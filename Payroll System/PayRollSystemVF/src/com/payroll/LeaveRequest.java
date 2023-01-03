package com.payroll;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * @Author: PRAMOD
 */
@WebServlet("/LeaveRequest")
public class LeaveRequest extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LeaveRequest() {
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
		
	HttpSession session = request.getSession();	
	String date = 	request.getParameter("date");
	String useremail =  (String)session.getAttribute("email");
	
	Connection con = ConnectionProvider.getConn();
	try {
		PreparedStatement ps = con.prepareStatement("INSERT INTO `leasverequest`(`id`, `useremail`, `leavedate`, `count`) VALUES (null,'"+useremail+"','"+date+"','1')");
		int r = ps.executeUpdate();
		if(r>0)
		{
			System.out.println("request send");
		}
		response.sendRedirect("userhome.jsp");
		
	} catch (SQLException e) {
		
		e.printStackTrace();
	}
		
		
	}

}
