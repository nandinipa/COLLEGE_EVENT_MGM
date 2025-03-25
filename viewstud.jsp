<%-- 
    Document   : viewstud.jsp
    Created on : 11 Feb, 2023, 3:09:03 PM
    Author     : Nandini pavale
--%>

<%-- 
    Document   : viewevent
    Created on : 28 Jan, 2023, 2:35:36 AM
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

  
    
    </head>
    <body bgcolor="white">
        <table class="table table-stripped">
            <tr class="text-primary">
                
                <th>Student Name</th>
                <th>Class</th>
                <th>Roll No.</th>
                <th>Mobile No.</th>
                <th>Email</th>
                <th>Aadhaar No.</th>
                <th>Address</th>
                
            </tr>
            
            <%
   try{
       Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/clgemagsys","root","");
        Statement st=con.createStatement();
        ResultSet rs = st.executeQuery("select * from student");
        
        while(rs.next())
        {
            out.println("<tr>");
           // int p = rs.getInt(1);
            
            out.println("<td>"+rs.getString(1));
            out.println("<td>"+rs.getString(2));
            out.println("<td>"+rs.getString(3));
            out.println("<td>"+rs.getString(4));
            out.println("<td>"+rs.getString(5));
            out.println("<td>"+rs.getString(6));
            out.println("<td>"+rs.getString(7));
            
            
            
        }
        
   }
    catch(Exception e)
    {
        out.println(e);
    }
%>
        </table>
    </body>
    <br><br><br>
        <p align="center">
        <a href="facultydashboard.jsp" class="btn btn-primary">Dashboard</a></p>

</body>
</html>


