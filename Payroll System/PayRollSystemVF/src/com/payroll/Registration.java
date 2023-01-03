package com.payroll;



import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;



import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Registration")
public class Registration extends HttpServlet {
	/**
     * @Author: PRAMOD
     */
	private static final long serialVersionUID = 1L;

	@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    private void processRequest(HttpServletRequest request,
			HttpServletResponse response) throws ServletException,IOException {
    	
    	response.setContentType("text/html;charset=UTF-8");
    	PrintWriter out = response.getWriter();
    	HttpSession session = request.getSession();
    	try{
    		
    		DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
            Date date = new Date();            
            String Addeddate=dateFormat.format(date); 
    		
    		
    		String fname = request.getParameter("fname");
    		String lname = request.getParameter("lname");
    		String email = request.getParameter("email");
    		String gender = request.getParameter("gender");
    		String password = request.getParameter("password");
    		String contactNo = request.getParameter("mobile");
    		String datofjoining = request.getParameter("doj");
    		String designation = request.getParameter("designation");
    		String salery = request.getParameter("salery");
    		
    		
    		 Connection con = ConnectionProvider.getConn(); 
             Statement st = con.createStatement();
             Statement stat = con.createStatement();
           
             ResultSet rs = st.executeQuery("select * from user where email='"+email+"'");
            
          
             if(rs.next())
             {
                  
                 response.sendRedirect("userregister.jsp?Exist=Exist");
             }else{
                 
            	 
                 int r = st.executeUpdate("INSERT INTO `user`(`id`, `fname`, `lname`, `gender`, `email`, `mobile`, `doj`, `designation`, `salery`, `password`) VALUES"
                		 						+ " (null,'"+fname+"','"+lname+"','"+gender+"','"+email+"','"+contactNo+"','"+datofjoining+"','"+designation+"','"+salery+"','"+password+"')");
                 if(r>0){
                     
                 
                 }
                 response.sendRedirect("adminhome.jsp?success=success");
            
             }
         } catch (Exception e) { e.getMessage();
         }finally{
    		out.close();
    		
    	}
	}

	/**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
	

}
