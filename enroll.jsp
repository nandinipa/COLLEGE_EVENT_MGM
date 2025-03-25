<%-- 
    Document   : enroll
    Created on : 28 Jan, 2023, 2:48:37 AM
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
  <script type="text/javascript">
  
   function validate()
    {
     var f=document.forms[0].tid.value;
    
      if(f==null || f=="")
      {
        document.getElementById("f").innerHTML="<font color=red>Fill Transaction Id";
        return false;
      }
      
      return true;
   }
  	</script>

  <style>
      form{
          border-style: solid;
          border-left-width: 200px;
          border-right-width:200px;
          border-left-color: graytext;
          border-right-color:graytext;
      }
      .right{
          display: inline-block;
      
      position:absolute;
      right:220px;
      top:23px;
      }
  </style>
  
    </head>
    
<%! ResultSet rs=null;
    ResultSet rs1=null;
%>
<%
    int id=Integer.parseInt(request.getParameter("id"));
    
    try
    {
       Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/clgemagsys","root","");
        Statement st=con.createStatement();
        rs = st.executeQuery("select * from event where id="+id+"");
        rs.next();
    }
    catch(Exception e)
            {
                out.println(e);
            }
%>
<%
    String suname="'"+(String)session.getAttribute("cname")+"'";
try
    {
       Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/clgemagsys","root","");
        Statement st=con.createStatement();
        rs1 = st.executeQuery("select name,rollnumber,email,mobilenumber from student where email="+suname+"");
        rs1.next();
    }catch(Exception e){}
%>
    <body>
         <form action="enrollinput.jsp" method="get" onsubmit="return validate()">
        <div class="right">
            <img src="gpay.jpeg" height="120px" width="120px">
        </div>
        
            <center><h2>All payments accepted on 9022836919 or  </center>
            
            <h3><center>Welcome student to the Sangameshwar College , Solapur ...</center></h3><h4><center>Thank you student for enrolling
                    yourself to the Event . <br>Fill the form below to complete the registration process for event</center></h4><br>
                    
       
            <br>
                        <center>Event Id : <input type="text" name="txtid" value="<%=rs.getInt(1)%>" readonly=""><br><br>
            
                        Event Name : <input type="text" name="txtname" value="<%=rs.getString(2)%>" readonly=""><br><br>
            
                        Event Fees : <input type="text" name="txtfees" value="<%=rs.getString(9)%>" readonly=""><br><br></center>
           
                        <div class="row">
		<div class="col-lg-2"></div>
                <div class="col-lg-8"><input type="text" name="name" class="form-control" value="<%=rs1.getString(1)%>" readonly="">
         <p id="a"></p></div>
         <div class="col-lg-2"> </div>
	</div>
                        
                        
            <div class="row">
                <div class="col-lg-2"></div>
                <div class="col-lg-4"><input type="text" name="rn" class="form-control" value="<%=rs1.getInt(2)%>" readonly="">
			<p id="b"></p>
		</div>
                <div class="col-lg-4"><input type="email" name="email" class="form-control" value="<%=rs1.getString(3)%>" readonly="">
			<p id="c"></p></div>
                <div class="col-lg-2"></div>
            </div>
                        
                        
            <div class="row">
                <div class="col-lg-2"></div>
                <div class="col-lg-4">
                    <select name="class">
			<option>BCA-I</option>
			<option>BCA-II</option>
			<option>BCA-III</option>
			<option>BBA-I</option>
			<option>BBA-II</option>
			<option>BBA-III</option>
			<option>Bsc-ECS-I</option>
			<option>Bsc-ECS-II</option>
			<option>Bsc-ECS-III</option>
			
		</select>
                    <p id="d"></p>
                </div>
                <div class="col-lg-4">
                    <select name="type" value="Select payment type">
			<option>G pay</option>
			<option>Phone pay</option>
			<option>paytm</option>
			</select>
                    <p id="e"></p>
                </div>
                <div class="col-lg-2"></div>
            </div>
                        
                        
            <div class="row">
                <div class="col-lg-2"></div>
                <div class="col-lg-4"><input type="text" name="tid" class="form-control" placeholder="Enter Transaction ID">
			<p id="f"></p></div>
                        <div class="col-lg-4"><input type="text" name="mn" class="form-control" value="<%=rs1.getString(4)%>" readonly="">
			<p id="g"></p></div>
                        <div class="col-lg-2"></div> <br>
                
            </div>
                        <br>
                        
            <div align="center">
     		<input type="submit" value="Submit" class="btn btn-primary">
    
     &nbsp;&nbsp;&nbsp;&nbsp;	<a href="studentdashboard.jsp"  class="btn btn-primary"> Dashboard</a>
     
     </div>
                        <br>             
            
        </form>
    </body>
</html>
