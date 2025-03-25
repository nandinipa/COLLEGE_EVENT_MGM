<%-- 
    Document   : feedback
    Created on : 30 Jan, 2023, 4:31:17 AM
    Author     : Nandini pavale
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <title>College event management system</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script type="text/javascript"></script>
        
    </head>
    
<%! //ResultSet rs=null;
    ResultSet rs1=null;
%>

<%
    String suname="'"+(String)session.getAttribute("cname")+"'";
try
    {
       Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/clgemagsys","root","");
        Statement st=con.createStatement();
        rs1 = st.executeQuery("select name,rollnumber,email,mobilenumber,Class from student where email="+suname+"");
        rs1.next();
    }catch(Exception e){}
%>
    <body>
        
        <form action="feedbackinsert.jsp" method="post" onsubmit="return validate()">
            <br>
            <h5> <center>Thank You Student for visiting and enrolling yourself for the event!!! <br>
                    Give your Feedback so that we can work on your queries</center></h5>
            <br>
             Name : <br>
                <input type="text" name="name" class="form-control" value="<%=rs1.getString(1)%>" readonly="">
         <p id="a"></p>
         Class :<br>
         <input type="text" name="class" class="form-control" value="<%=rs1.getString(5)%>" readonly=""><br>
         <p id="b"></p>
         
                
         Roll number :<br> <input type="text" name="rn" class="form-control" value="<%=rs1.getInt(2)%>" readonly="">
			<p id="c"></p>
		
                        Email :<br> <input type="email" name="email" class="form-control" value="<%=rs1.getString(3)%>" readonly="">
			<p id="d"></p>
                        Mobile Number :<br> <input type="text" name="mn" class="form-control" value="<%=rs1.getString(4)%>" readonly="">
			<p id="e"></p>
                        Feedback:<br>
                        <input type="textarea" name="feedback" class="form-control">
                       
                        <p id="f"></p>
                        
                         <div align="center">
     		<input type="Submit" value="Submit" class="btn btn-primary">
     
     &nbsp;&nbsp;&nbsp;&nbsp;	<a href="studentdashboard.jsp"  class="btn btn-primary"> Dashboard</a>
     
     </div>
            
                        
        </form>
    </body>
</html>