<%-- 
    Document   : faculty
    Created on : 12 Feb, 2023, 10:36:31 PM
    Author     : Nandini pavale
--%>

<%@page language="java" pageEncoding="UTF-8" language="java" import="java.sql.*"%>
<%!ResultSet rs=null;%>
        <%
        
            try
            {
                int p=Integer.parseInt(request.getParameter("srno"));
                //out.println(p);
                Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/clgemagsys","root","");
        Statement st=con.createStatement();
         rs = st.executeQuery("select * from faculty where srno="+p+"");
         rs.next();
        session.setAttribute("srno",p);
            }
            catch(Exception e)
            {
            
            }
           
        
        
        %>
        <html>
            <head>
                <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
            </head>
            <style>
                .center{
                     position:absolute;
      left:300px;
      top:80px;
      display: inline-block;
      
                }
            </style>
            <body>
                <br>
                
                <center><font size="7px" color="green"><b> Edit Faculty</b></font></center>
                <form action="editfacultyinsert.jsp">
                    
                    
                    <div class="center">
                        <font size="3px" color="green">Name:</font>

                        <input type="text" name="name" value="<%=rs.getString(2)%>"><br><br>
                    <font size="3px" color="green">ID:-</font>
                    <input type="text" name="id" value="<%=rs.getString(3)%>"><br><br>
                    <font size="3px" color="green">Mobile:-</font>
                    <input type="text" name="mn" value="<%=rs.getString(4)%>"><br><br>
                    
                    <font size="3px" color="green">Email:- </font>
                    <input type="text" name="email" value="<%=rs.getString(5)%>"><br><br>
                    <font size="3px" color="green">Aadhaar:-</font>
                    <input type="text" name="aadhaarno" value="<%=rs.getString(6)%>"><br><br>
                    <font size="3px" color="green">Address:-</font>
                    <input type="text" name="add" value="<%=rs.getString(7)%>"><br><br>
                    <font size="3px" color="green">Password:-</font>
                    <input type="text" name="pass" value="<%=rs.getString(8)%>"><br><br>
                   
        
                    
                    
     		<input type="Submit" value="Submit" class="btn btn-primary">
     &nbsp;&nbsp;&nbsp;&nbsp;	
     <a href="body.html"  class="btn btn-primary"> Home</a>
     &nbsp;&nbsp;&nbsp;&nbsp;	
     <a href="admindashboard.jsp"  class="btn btn-primary"> Dashboard</a>
        </div>
                </form>
            </body>
        </html>
