
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>FINAL YEAR PROJECT</title>
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/icon" href="assets/images/logo1.png"/>
    <!-- Font Awesome -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet">
    <!-- Bootstrap -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <!-- Slick slider -->
    <link href="assets/css/slick.css" rel="stylesheet">
    <!-- Gallery Lightbox -->
    <link href="assets/css/magnific-popup.css" rel="stylesheet">
    <!-- Theme color -->
    <link id="switcher" href="assets/css/theme-color/lite-blue-theme.css" rel="stylesheet">

    <!-- Main Style -->
    <link href="style.css" rel="stylesheet">

    <!-- Fonts -->

    <!-- Open Sans for body font -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,400i,600,700,800" rel="stylesheet">
    <!-- Poppins for Title -->
  	<link href="https://fonts.googleapis.com/css?family=Poppins" rel="stylesheet">
 
 
	
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
  	
  	<!-- Start Header          class="" role="banner" -->
	
<header class="jumbotron">
        <div class="container">
            <div class="row row-header">
                <div class="col-md-3">
                    <a href="index.jsp"><img src="assets/images/logo1.png"/>  </a>
                </div>
                <div class="col-12 col-sm-6 align-self-center">
                    <br><br><br>
                    <h3>Securing The Records Of Legal Complaint Using Multi Authority Attribute Based Encryption</h3> 
                </div>
               
                <div class="col-12 col-sm col-md-3 align-self-center">
                    <br><br><br><br>
                    <a role="button" class="btn btn-warning" data-toggle="modal" data-target="#adminmodal" >Admin Login</a>
                    
                </div></div>
        </div>
    

        <div class="row row-content align-items-center">
            <div class="col-md-4"></div>
            <div class="col-md-2">
                <a role="button" class="btn btn-primary offset-1" data-toggle="modal" data-target="#policemodal">Police Login</a>
            </div>
            <div class="col-md-2">
                 <a role="button" class="btn btn-primary" data-target="#authoritymodal" data-toggle="modal"> Authority Login</a>
            </div>
            <div class="col-md-2">
                <a role="button" class="btn btn-primary" data-target="#clerkmodal" data-toggle="modal">Clerk Login</a>
		   
            </div>
            <div class="col-md-2"></div>
        </div>

	</header>
        <div id="policemodal" class="fade modal" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
            <div class="modal-header">
                <h3> Police Login</h3>
            </div>
            <div class="modal-content">
                <div class="col-12">
                <form action="User_Verify" method="POST">
                    <br><br>
                    <div class="row">
                         <div class="col-md-3"></div>
                        <div class="col-md-3">
                            <label>Username</label></div>
                     <div class="col-md-6">
                         <input type="text" name="username" required=""></div><br><br></div>
                    <div class="row">
                        <div class="col-md-3"></div>
                        <div class="col-md-3">
                            <label>Password</label></div>
                         <div class="col-md-6">
                             <input type="password" name="password" required=""></div><br><br></div>
								<div class="row">
                                                                    <div class="col-md-5"></div>
                                                                    <div class="col-md-4">
                                                                        <input type="submit" class="btn btn-primary" value="LOGIN" name="Login"></div><br>
						</div>
                    
                </form>
                     
                  
                    
                    <br><br>
                    <div class="row">
                        <div class="col-md-2"></div>
                        <div class="col-md-10">
                            <i > If you are new to this portal, please   </i><a style="text-decoration:underline;color: red;" data-toggle="modal" data-target="#policeregistermodal">Register</a>  <i>here</i></div>
                             <br><br>
                         </div>
                </div></div></div></div>
            
        </div>
        
        <div id="authoritymodal" class="fade modal" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
            <div class="modal-header">
                <h3> Authority Login</h3>
            </div>
            <div class="modal-content">
                <div class="col-12">
                <form action="doctor_Verify" method="POST">
                    <br><br>
                    <div class="row">
                         <div class="col-md-3"></div>
                        <div class="col-md-3">
                            <label>Username</label></div>
                     <div class="col-md-6">
                         <input type="text" name="username" placeholder="Username" required=""></div><br><br></div>
                    <div class="row">
                        <div class="col-md-3"></div>
                        <div class="col-md-3">
                            <label>Password</label></div>
                         <div class="col-md-6">
                             <input type="password" name="password" placeholder="Password" required=""></div><br><br></div>
								<div class="row">
                                                                    <div class="col-md-5"></div>
                                                                    <div class="col-md-4">
                                                                        <input type="submit" class="btn btn-primary" value="LOGIN" name="Login"></div><br>
						</div>
                    
                </form>
                     
                  
                    
                    <br><br>
                    <div class="row">
                        <div class="col-md-2"></div>
                        <div class="col-md-10">
                            <i > If you are new to this portal, please   </i><a style="text-decoration:underline;color: red;" data-target="#authorityregistermodal" data-toggle="modal" >Register</a>  <i>here</i></div>
                             <br><br>
                         </div>
                </div></div></div></div>
            
        </div>
                <div id="clerkmodal" class="fade modal" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
            <div class="modal-header">
                <h3> Clerk Login</h3>
            </div>
            <div class="modal-content">
                <div class="col-12">
                <form action="Login_Action1">
                    <br><br>
                    <div class="row">
                         <div class="col-md-3"></div>
                        <div class="col-md-3">
                            <label>Username</label></div>
                     <div class="col-md-6">
                         <input type="text" name="username" placeholder="Username" required=""></div><br><br></div>
                    <div class="row">
                        <div class="col-md-3"></div>
                        <div class="col-md-3">
                            <label>Password</label></div>
                         <div class="col-md-6">
                             <input type="password" name="password" placeholder="Password" required=""></div><br><br></div>
								<div class="row">
                                                                    <div class="col-md-5"></div>
                                                                    <div class="col-md-4">
                                                                        <input type="submit" class="btn btn-primary" value="LOGIN" name="Login"></div><br>
						</div>
                    
                </form>
                     
                  
                    
                    <br><br>
                   
                </div></div></div></div>
            
        </div>
        <div id="adminmodal" class="fade modal" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
            <div class="modal-header">
                <h3> Admin Login</h3>
            </div>
            <div class="modal-content">
                <div class="col-12">
                <form action="Login_Action1">
                    <br><br>
                    <div class="row">
                         <div class="col-md-3"></div>
                        <div class="col-md-3">
                            <label>Username</label></div>
                     <div class="col-md-6">
                         <input type="text" name="username" placeholder="Username" required=""></div><br><br></div>
                    <div class="row">
                        <div class="col-md-3"></div>
                        <div class="col-md-3">
                            <label>Password</label></div>
                         <div class="col-md-6">
                             <input type="password" name="password" placeholder="Password" required=""></div><br><br></div>
								<div class="row">
                                                                    <div class="col-md-5"></div>
                                                                    <div class="col-md-4">
                                                                        <input type="submit" class="btn btn-primary" value="LOGIN" name="Login"></div><br>
						</div>
                    
                </form>
                     
                  
                    
                    <br><br>
                   
                </div></div></div></div>
            
        </div>
        
        <div role="dialog" id="policeregistermodal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h3>Police Register</h3>
                    </div>
                    <div class="modal-content">
                        <form action="Register_Action" method="POST">
                        <div class="col-12">
                            <br><br>
                            <div class="row">
                                <div class="col-md-3"></div>
                                <div class="col-md-3">
                                    <label>Username</label></div>
                                <input type="text" name="username" required=""></div><br>
                             <div class="row">
                                 <div class="col-md-3"></div>
                                 <div class="col-md-3">
                                     <label>Password</label></div>
                                  
                                 <input type="password" name="password" required=""></div><br>
                             <div class="row">
                                 <div class="col-md-3"></div>
                                 <div class="col-md-3">
                                     <label>Mobile</label></div>
                                 <input type="num" name="mobile" required=""></div><br>
                             <div class="row">
                                 <div class="col-md-3"></div>
                                 <div class="col-md-3">
                                     <label>Email id</label></div>
                                 <input type="email" name="email" required=""></div><br>
                             <div class="row">
                                 <div class="col-md-3"></div>
                                 <div class="col-md-3">
                                     <label>Police station</label></div>
                                  <input type="text" name="address" required=""></div><br>
												
											      <div class="row">
                                                                    <div class="col-md-5"></div>
                                                                    <div class="col-md-4">
                                                                        <input type="submit" class="btn btn-primary" value="REGISTER" name="Login"></div><br>
						</div><br><br>
											   
                        </div> 
                        </form>
                       </div>
                </div>
            </div>
        </div>
        
        
        <div role="dialog" id="authorityregistermodal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h3>Authority Register</h3>
                    </div>
                    <div class="modal-content">
                        <form action="Action_Doctor" method="POST">
                        <div class="col-12">
                            <br><br>
                            <div class="row">
                            <div class="col-md-3"></div>
                            <div class="col-md-3">
                                <label>Authority id</label></div>
                            <input type="text" name="doctorid" required=""></div><br>
                            <div class="row">
                                
                           <div class="col-md-3"></div>
                           <div class="col-md-3">
                               <label>Username</label></div>
                           <input type="text" name="username" required=""></div><br>
                             <div class="row">
                             <div class="col-md-3"></div>
                             <div class="col-md-3">
                                 <label>Password</label></div>
                             
                             <input type="password" name="password" required="">
                             </div><br>
                              <div class="row">
                             <div class="col-md-3"></div>
                             <div class="col-md-3">
                                 <label>Mobile</label></div>
                             <input type="num" name="mobile" required=""></div><br>
                              <div class="row">
                              <div class="col-md-3"></div>
                              <div class="col-md-3">
                                  <label>Email</label></div>
                              <input type="email" name="email" required=""></div><br>
                              <div class="row">
                                <div class="col-md-3"></div>
                                <div class="col-md-3">
                                    <label>Office address</label></div>
                                <input type="text" name="address" required=""></div><br>
                              <div class="row">
                                 <div class="col-md-3"></div>
                                 <div class="col-md-3">
                                     <label>Office location</label></div>
                                 <input type="text" name="hospital" required=""> </div><br>
                                 <div class="row">
                                      <div class="col-md-3"></div>
                                      <div class="col-md-3">
                                     <label>Select Type</label></div>
                                 <select name="specialist">
                                 <option  value="Inspector">INSPECTOR</option>
                                <option  value="Commissioner">COMMISSIONER</option>
                                <option  value="Assistant Commissioner">ASSISTANT COMMISSIONER</option>
                                 <option  value="Deputy Commissioner">DEPUTY COMMISSIONER</option>
                                 <option value="Lawyer">LAWYER</option>
                                 <option value="Judge">JUDGE</option>           
                                   </select>
                                 </div>		       <br>
                                <div class="row">
                                                                    <div class="col-md-5"></div>
                                                                    <div class="col-md-4">
                                                                        <input type="submit" class="btn btn-primary" value="REGISTER" name="Login"></div><br>
						</div><br><br>
						</div><br><br>
				                        </form>
							   
                        </div> 
                       </div>
                </div>
            </div>
        </div>
        
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <!-- Bootstrap -->
    <script src="assets/js/bootstrap.min.js"></script>
	<!-- Slick slider -->
    <script type="text/javascript" src="assets/js/slick.min.js"></script>
    <!-- Filterable Gallery js -->
    <script type="text/javascript" src="assets/js/jquery.filterizr.min.js"></script>
    <!-- Gallery Lightbox -->
    <script type="text/javascript" src="assets/js/jquery.magnific-popup.min.js"></script>
    <!-- Ajax contact form  -->
    <script type="text/javascript" src="assets/js/app.js"></script>
	<!-- Featured Slider -->
    <script type="text/javascript" src="assets/js/typed.min.js"></script>
    <!-- On scroll JS  -->
    <script src="assets/js/jquery.appear.js"></script>
	<!-- Progress Bar -->
    <script type="text/javascript" src="assets/js/jquery.lineProgressbar.js"></script>
    
	
    <!-- Custom js -->
	<script type="text/javascript" src="assets/js/custom.js"></script>

	
	
    
  </body>
</html>