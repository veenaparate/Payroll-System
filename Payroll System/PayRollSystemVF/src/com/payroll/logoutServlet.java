package com.payroll;


import java.io.IOException;  
import java.io.PrintWriter;  
  


import javax.servlet.ServletException;  
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
import javax.servlet.http.HttpSession;

@WebServlet("/logoutServlet")
public class logoutServlet extends HttpServlet {  
	/**
     * @Author: PRAMOD
     */
	private static final long serialVersionUID = 1L;

		protected void doGet(HttpServletRequest request, HttpServletResponse response)  
                                throws ServletException, IOException {  
            response.setContentType("text/html");  
            PrintWriter out=response.getWriter();  
              
           // request.getRequestDispatcher("link.html").include(request, response);  
            HttpSession session=request.getSession(); 
              
           
            
           
            session.invalidate();
            response.sendRedirect("index.jsp?logout=successfully logout");
           // out.print("You are successfully logged out!");  
              
            out.close();  
    }  
}  