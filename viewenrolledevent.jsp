<%-- 
    Document   : viewenrolledevent
    Created on : 6 Feb, 2023, 3:51:24 PM
    Author     : Nandini pavale
--%>

<%-- 
    Document   : enrollapprovereject
    Created on : 1 Feb, 2023, 4:11:41 AM
    Author     : Nandini pavale
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
         <title>Online College Event management system</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

  <script type="text/javascript"></script>
    </head>
    <body>
        <table class="table table-stripped">
            <tr class="text-primary">
                <th>eid</th>
                <th>Event Name</th>
                <th>Event Fees</th>
                <th>Student Name</th>
                <th>Roll Number</th>
                <th>Email</th>
                <th>Class</th>
                <th>Transaction type</th>
                <th>Transaction Id</th>
                <th>Mobile number</th>
                
            </tr>
    
<%
   try{
       String cname="'"+(String)session.getAttribute("cname")+"'";
       //out.println(cname);
       Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/clgemagsys","root","");
        Statement st=con.createStatement();
        ResultSet rs1=st.executeQuery("select Name from student where email="+cname+" ");
        rs1.next();
        String namen="'"+rs1.getString(1)+"'";
        ResultSet rs = st.executeQuery("select * from enroll where name="+namen+" ");
        
        while(rs.next())
        {
            out.println("<tr>");
            int p = rs.getInt(1);
            out.println("<td>"+rs.getInt(1));
            out.println("<td>"+rs.getString(2));
            out.println("<td>"+rs.getInt(3));
            out.println("<td>"+rs.getString(4));
            out.println("<td>"+rs.getString(5));
            out.println("<td>"+rs.getString(6));
            out.println("<td>"+rs.getString(7));
            out.println("<td>"+rs.getString(8));
            out.println("<td>"+rs.getString(9));
            out.println("<td>"+rs.getString(10));
           
        }
        
   }
    catch(Exception e)
    {
        out.println(e);
    }
%>
        </table>
        <br><br><br>
        <p align="center">
        <a href="studentdashboard.jsp" class="btn btn-primary">Dashboard</a></p>

</body>
</html>