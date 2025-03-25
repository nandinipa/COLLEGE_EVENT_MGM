<%-- 
    Document   : admindashboard
    Created on : 24 Dec, 2022, 10:33:58 PM
    Author     : Nandini pavale
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Online College Event management system</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

  <script type="text/javascript"></script>
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
        <h1><center><font><u><b>Welcome to Admin Dashboard</b></u></center></h1>
        <div class='logout'>
        <a href="Alogout.jsp" class="btn btn-">
            <button>logout</button>
        </a>
        </div>
        
        <br><br>
        
            <br>
            <div class="buttons">
            <div class="row">
                <div class="col-lg-1"></div>
                <div class="col-lg-3"><a href="event.html"> <button>Add Event</button></a> </div>
                <div class="col-lg-3"><a href="editevent.jsp"> <button>Edit Event</button></a></div>
                <div class="col-lg-3"><a href="assignevent.jsp" > <button>Assign Event</button></a></div>
                <div class="col-lg-2"></div>

            </div>
        <br><br>
        
        <div class="row">
                <div class="col-lg-1"></div>
                <div class="col-lg-3"><a href="addfaculty.jsp" > <button>Add Faculty</button></a></div>
                <div class="col-lg-3"><a href="editfaculty.jsp"  > <button>Edit Faculty</button></a> </div>
                <div class="col-lg-3"></div>
                <div class="col-lg-2"></div>
                
            </div>
        <br><br>
        <div class="row">
                <div class="col-lg-1"></div>
                <div class="col-lg-3"><a href="approvereject.jsp" > <button>Approve Faculty</button></a></div>
                <div class="col-lg-3"><a href="enrollapprovereject.jsp" > <button>Approve student for event</button></a> <br><br> </div>
                <div class="col-lg-3"></div>
                <div class="col-lg-2"></div>
        </div>
        <br>
        <div class="row">
            <div class='col-lg-1'></div>
            <div class="col-lg-3"><font><u><h2><b>Report:-</b></h2></u></div>
            <div class="col-lg-3"></div>
            <div class="col-lg-3"></div>
            <div class="col-lg-2"></div>
        </div>
        <div class="row">
            <div class='col-lg-1'></div>
            <div class="col-lg-3"><a href="viewfaculty.jsp" > <button>View Faculty</button></a></div>
            <div class="col-lg-3"><a href="viewstudent.jsp" > <button>View Student</button></a></div>
            <div class="col-lg-3"><a href="viewfeddback.jsp" > <button>View Feedback</button></a></div>
            <div class="col-lg-2"></div>
        </div>
        <br><br>
        <div class="row">
            <div class='col-lg-1'></div>
            <div class="col-lg-3"><a href="vieweventadmin.jsp" > <button>View Event</button></a></div>
            <div class="col-lg-3"><a href="viewentrolledstudent.jsp" > <button>Enrolled Student</button></a></div>
            <div class="col-lg-3"><a href="viewassigneevent.jsp" > <button>Assigned Event</button></a></div>
            <div class="col-lg-2"></div>
        </div>
          
            </div>
    </body>
</html>
