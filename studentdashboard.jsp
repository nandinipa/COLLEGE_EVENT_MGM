<%-- 
    Document   : studentdashboard
    Created on : 23 Jan, 2023, 7:13:07 AM
    Author     : Nandini pavale
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online College Event Management System</title>
        
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style>
    body{
   		
   		background-image: url('bgimg17.jpg');
   		background-size: cover;
   	}
      
      .logout{
      position:absolute;
      right:34px;
      top:20px;
      display: inline-block;
      
      
      
      
}
.logout button{
    padding: 9px 14px;
    border-radius: 25px;
    color:black;
    background-color:pink;
    font-weight: bold;
    font-size: 15px;
    margin: 0 3px;
    cursor: pointer;
}
.logout button:hover{
    color: white;
    background-color:black;
}
.buttons button{
    padding: 9px 50px;
    border-radius: 7px;
    color:black;
    background-color:pink;
    font-weight: bold;
    font-size: 15px;
    margin: 0 3px;
    cursor: pointer;
}
.buttons button:hover{
    color: white;
    background-color:black;
}
    
  </style>
    </head>
    
    
    <body>
        <h1><center><font><u><b>Welcome Student Dashboard</b></u></center></h1>
        <div class='logout'>
        <a href="logout.jsp" class="btn btn-">
            <button>logout</button>
        </a>
        </div>
        
        <br><br> 
            <div class="buttons">
            <div class="row">
                <div class="col-lg-1"></div>
                <div class="col-lg-3"><a href="viewevent.jsp"> <button>View Event</button></a> </div>
                <div class="col-lg-3"><a href="feedback.jsp"> <button>Give Feedback</button></a></div>
                <div class="col-lg-3"><a href="viewenrolledevent.jsp" > <button>View enrolled Event</button></a></div>
                <div class="col-lg-2"></div>

            </div>
        <br><br>
        </div>
    </body>
</html>
    
 
