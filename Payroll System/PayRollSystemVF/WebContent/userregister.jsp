<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
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
                    <h2>Employee Registration</h2>
                    <br>
                    <form action="Registration" method="post">
                    <table>
                    
                    <tr>
                    <td>First Name</td>
                    <td><input type="text" name="fname" required="required"> </td>
                    </tr>
                    <tr>
                    <td>Last Name</td>
                    <td><input type="text" name="lname" required="required"> </td>
                    </tr>
                    <tr>
                    <td>Gender</td>
                    <td>
                    <select name="gender">
                    <option  value="male">Male</option>
                    <option value="female">FeMale</option>
                    </select>
                    
                    </td>
						
                    </tr>
                     <tr>
                    <td>Email Id</td>
                    <td><input type="email" name="email" required="required"> </td>
                    </tr>
                    <tr>
                    <td>Mobile No.</td>
                    <td><input type="text" name="mobile" required="required"> </td>
                    </tr>
                    <tr>
                    <td>Date Of Joining</td>
                    <td><input type="text" name="doj" required="required"></td>
                    </tr>
                    <tr>
                    <td>Designation</td>
                    <td>
                    <select name="designation">
                    <option  value="accountant">Accountant</option>
                    <option value="developer">Developer</option>
                    <option value="tester">Tester</option>
                    </select>
                    
                    </td>
                    </tr>
                    <tr>
                    <td>Salery</td>
                    <td><input type="text" name="salery" required="required"> Per month in RS.</td>
                    </tr>
                    <tr>
                    <td>Password</td>
                    <td><input type="password" name="password" required="required"> </td>
                    </tr>
                    </table>
                    <table align="center">
                    <tr align="center">
                    <td><input type="submit" value="Register"></td><td><input type="reset"> </td>
                    </tr>
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
