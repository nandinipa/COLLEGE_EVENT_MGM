<%-- 
    Document   : viewassign
    Created on : 12 Feb, 2023, 10:06:17 AM
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
    <body>
        <table class="table table-stripped">
            <tr class="text-primary">
                <th>id</th>
                <th>Event Name</th>
                <th>Event Venue</th>
                <th>Start date</th>
                <th>End Date</th>
                <th>Start Time</th>
                <th>End Time</th>
                <th>Chief Guest</th>
                <th>Event Fees</th>
                <th>Description</th>
                <th>Faculty</th>
                
                
            </tr>
            
            <%
   try{
       String fname="'"+(String)session.getAttribute("fname")+"'";
       
       Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/clgemagsys","root","");
        Statement st=con.createStatement();
        ResultSet rs1=st.executeQuery("select name from faculty where email="+fname+" ");
        rs1.next();
        String namen="'"+rs1.getString(1)+"'";
        
        ResultSet rs = st.executeQuery("select * from AssignedEvent where faculty="+namen+"");
        
        while(rs.next())
        {
            out.println("<tr>");
            int p = rs.getInt(1);
            out.println("<td>"+rs.getInt(1));
            out.println("<td>"+rs.getString(2));
            out.println("<td>"+rs.getString(3));
            out.println("<td>"+rs.getString(4));
            out.println("<td>"+rs.getString(5));
            out.println("<td>"+rs.getString(6));
            out.println("<td>"+rs.getString(7));
            out.println("<td>"+rs.getString(8));
            out.println("<td>"+rs.getString(9));
            out.println("<td>"+rs.getString(10));
            out.println("<td>"+rs.getString(11));
            
            
            
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
