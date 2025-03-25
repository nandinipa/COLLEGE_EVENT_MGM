<%-- 
    Document   : viewfeddback.jsp
    Created on : 3 Feb, 2023, 4:55:30 AM
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
                <th>Srno</th>
                <th>Student Name</th>
                <th>Class</th>
                <th>Roll Number</th>
                <th>Email</th>
                <th>Mobile Number</th>
                <th>Feedback</th>
            </tr>
    
<%
   try{
       Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/clgemagsys","root","");
        Statement st=con.createStatement();
        ResultSet rs = st.executeQuery("select * from feedback ");
        
        while(rs.next())
        {
            out.println("<tr>");
            int p = rs.getInt(1);
            out.println("<td>"+rs.getInt(1));
            out.println("<td>"+rs.getString(2));
            out.println("<td>"+rs.getString(3));
            out.println("<td>"+rs.getInt(4));
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
        <br><br><br>
        <p align="center">
        <a href="admindashboard.jsp" class="btn btn-primary">Dashboard</a></p>

</body>
</html>

