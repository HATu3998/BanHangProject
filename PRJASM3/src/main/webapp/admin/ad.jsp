<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
   <style type="text/css">
  <%@include file="/CSS/admin.css" %>
 </style>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>

<body > <div style="float:right">
<form name="logoutform" action="/PRJ-ASM3/Logout" method="post">
              <span><%= session.getAttribute("user") %></span>
              <input type ="submit" value="Logout"></form>   
</div> 
 <div class="container"><h2>Welcome admin</h2>
	<div class="row">
		  <div class="table-responsive">          
  <table class="table">
    <thead>
      <tr>
        <th>#</th>
        <th>Name</th>
        <th>Student ID</th>
        <th>Class</th>
      
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>1</td>
        <td>Member</td>
      <td>Member 1</td>
        <td>Class 1</td>
       
      </tr>
    </tbody>
  </table>
  </div>
		
		
		<hr/>
	
		 <div id="wrapper">
      
        
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav" style="margin-left:0;">
                <li class="sidebar-brand">
                    
                        <a href="#menu-toggle"  id="menu-toggle" style="margin-top:20px;float:right;" > <i class="fa fa-bars " style="font-size:20px !Important;" aria-hidden="true" aria-hidden="true"></i> 
                    
                </li>
                <li>
                    <a href="#"><i class="fa fa-sort-alpha-asc " aria-hidden="true"> </i> <span style="margin-left:10px;">Section</span>  </a>
                </li>
                <li>
                    <a href="#"> <i class="fa fa-play-circle-o " aria-hidden="true"> </i> <span style="margin-left:10px;"> Section</span> </a>
                </li>
                <li>
                    <a href="#"> <i class="fa fa-puzzle-piece" aria-hidden="true"> </i> <span style="margin-left:10px;"> Section</span> </a>
                </li>
                <li>
                    <a href="#"> <i class="fa fa-font" aria-hidden="true"> </i> <span style="margin-left:10px;"> Section</span> </a>
                </li>
                <li>
                    <a href="#"><i class="fa fa-info-circle " aria-hidden="true"> </i> <span style="margin-left:10px;">Section </span> </a>
                </li>
                <li>
                    <a href="#"> <i class="fa fa-comment-o" aria-hidden="true"> </i> <span style="margin-left:10px;"> Section</span> </a>
                </li>
            </ul>
        </div>
        <!-- /#sidebar-wrapper -->

        <!-- Page Content -->
        <div id="page-content-wrapper">
            <div class="container-fluid">
                <div class="row">
                   
                        
                    
                        
</a>

	
       

    
    <script>
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
    </script>


    


      </div>
              
      
</body>

</html>