<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.payroll.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title></title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width">
       
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/bootstrap-responsive.css">
        <link rel="stylesheet" href="css/custom-styles.css">
        <link rel="stylesheet" href="css/font-awesome.css">
        <link rel="stylesheet" href="css/component.css">
        <link rel="stylesheet" href="css/font-awesome-ie7.css">

        <script src="js/modernizr.custom.js"></script>
        <script src="js/modernizr-2.6.2-respond-1.1.0.min.js"></script>
        
        <%
if(request.getParameter("success")!=null){
	   out.println("<script>alert('Successfully registred...');</script>"); 
	}

if(request.getParameter("Exist")!=null){
   out.println("<script>alert('Email already exists...'); document.uRegister.email.focus();</script>"); 
}
%>
        
    </head>
    <body>
        <!--[if lt IE 7]>
            <p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>
        <![endif]-->

        <!-- This code is taken from http://twitter.github.com/bootstrap/examples/hero.html -->
            <div class="header-wrapper">
                <div class="container">
                    <div class="row-fluid">
                    
                        <div class="site-name">
                            <h1>Pay_Roll System</h1>
                        </div>
                    
                    
                        <div class="menu-icons">
                            <ul>
                                <li><a href="#"><i class="fw-icon-facebook i"></i></a> </li>
                                <li><a href="#"><i class="fw-icon-twitter i"></i></a> </li>
                                <li><a href="#"><i class="fw-icon-linkedin i"></i></a> </li>
                                <li>
                                    <form id="custom-search-form" class="form-search form-horizontal pull-right">
                                        <div class="input-append">
                                            <input type="text" class="search-query">
                                            <button type="submit" class="btn"><i class="fw-icon-search"></i></button>
                                        </div>
                                    </form>
                                </li>
                            </ul>
                        </div>
                        <div class="cust-form">
                            <form id="custom-search-form" class="form-search form-horizontal pull-right">
                                
                                    <input type="text" class="search-query">
                                    <button type="submit" class="btn"><i class="fw-icon-search"></i></button>
                                
                            </form>
                        </div>
                    
                    </div>
                </div>
            </div>
            <div class="container">
            <div class="menu">
                
                        <div class="navbar">
                            <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                                <i class="fw-icon-th-list"></i>
                            </a>
                            <div class="nav-collapse collapse">
                                <ul class="nav">
                                    <li class="active"><a href="adminhome.jsp">Home</a></li>
                                    <li><a href="adminhome.jsp">Back</a></li>
                                    <li><a href="logoutServlet">Logout</a></li>
                                </ul>
                            </div><!--/.nav-collapse -->
                        </div>
						
                    
            </div>
            </div>
            <div class="container bg-white">
                <div class="row-fluid">
                    <div class="span12 ">
                        
                    </div>
                 </div>
                <div class="row-fluid">
                    <div align="center">
                    <h2>Genarate Employee Salery</h2>
                    <br>
                    <form action="Registration" method="post">
                    <table border="1" width="500px">
                    
                    <tr>
                    <td><strong><font color="black">First Name</font></strong></td>
                    <td><strong><font color="black">Last Name</font></strong></td>
                    <td><strong><font color="black">Email Id</font></strong></td>
                    <td><strong><font color="black">Mobile No.</font></strong></td>
                    <td><strong><font color="black">Designation</font></strong></td>
                    <td><strong><font color="black">Salery</font></strong></td>
                    <td><strong><font color="black">Deduction</font></strong></td>
                    <td><strong><font color="black">Final Salery</font></strong></td>
                    <td><strong><font color="black">Send to Employee</font></strong></td>
                    </tr>
                    
                    <%
                    String email = request.getParameter("email");
                    String salary = request.getParameter("salary");
                    String leave= request.getParameter("count");
                    double leavecount = Double.parseDouble(leave);
                    
                    System.out.println("Email id=="+email);
                    System.out.println("Salary=="+salary);
                    System.out.println("Leave count=="+leavecount);
                    
                    double salarynew = Double.parseDouble(salary);
                    double onedaysalary = (salarynew/30);
                    double deduction = onedaysalary*leavecount;
                    System.out.println("One day salary=="+onedaysalary);
                    
                    double finalsalery = (salarynew-(onedaysalary*leavecount));
                    System.out.println("Generated Salary =="+finalsalery);
                    
                    Connection con = ConnectionProvider.getConn();
                    
                    PreparedStatement ps1 = con.prepareStatement("DELETE FROM `empsalery`");
                    int t = ps1.executeUpdate();
                    
                    
                    PreparedStatement ps = con.prepareStatement("SELECT * FROM `user` where email='"+email+"'");
                    ResultSet rs = ps.executeQuery();
                    while(rs.next())
                    {
                    	String fname = rs.getString("fname");
                    	String lname = rs.getString("lname");
                    	
                    	String mobile = rs.getString("mobile");
                    	String salery = rs.getString("salery");
                    	String designation = rs.getString("designation");
                    	
                    	
                    	
                    	PreparedStatement ps2 = con.prepareStatement("INSERT INTO `empsalery`(`id`, `empemail`, `leavecount`, `deduction`, `finalsalary`) VALUES (null,'"+email+"','"+leavecount+"','"+deduction+"','"+finalsalery+"')");
                    	int r = ps2.executeUpdate();
                    	if(r>0)
                    	{
                    		System.out.println("sent...");
                    	}
                    	
                    	
                    	%>
                    	<tr>
                    	<td><%=fname %></td>
                    	<td><%=lname %></td>
                    	<td><%=email %> </td>
                    	<td><%=mobile %> </td>
                    	<td><%=designation%> </td>
                    	<td><%=salary %> </td>
                    	<td><%=deduction %> </td>
                    	<td><%=finalsalery %></td>
                    	<td><a href="adminhome.jsp">Send</a> </td>
                    	</tr>
                    	
                    	<%
                    }
                    
                    %>
                    
                    
                    </table>
                    
                    </form>
                    </div>
                </div>
            </div>

            
                    <div class="wrap bg-black">
                      <div class="container ">
                        <div class="row-fluid">
                          <div class="span12">
                            <div class="copy-rights">
							Pay Roll                           
							</div>
                          </div>
                        </div>
                      </div>
                    </div>
        
       <script src="js/jquery-1.9.1.js"></script> 
<script src="js/bootstrap.js"></script>
<script src="js/masonry.pkgd.min.js"></script>
    <script src="js/imagesloaded.js"></script>
    <script src="js/classie.js"></script>
    <script src="js/AnimOnScroll.js"></script>
    
    <script>
      new AnimOnScroll( document.getElementById( 'grid' ), {
        minDuration : 0.4,
        maxDuration : 0.7,
        viewportFactor : 0.2
      } );
    </script>
<script>
$('#myCarousel').carousel({
    interval: 1800
});
</script>
    </body>
</html>
