<%@page language="java" pageEncoding="UTF-8" language="java" import="java.sql.*"%>
<%!ResultSet rs=null;%>
        <%
        
            try
            {
                int p=Integer.parseInt(request.getParameter("id"));
                //out.println(p);
                Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/clgemagsys","root","");
        Statement st=con.createStatement();
         rs = st.executeQuery("select * from event where id="+p+"");
         rs.next();
        session.setAttribute("id",p);
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
                
                <center><font size="7px" color="green"><b> Edit Event</b></font></center>
                <form action="editeventinsert.jsp">
                    
                    
                    <div class="center">
                        <font size="3px" color="green"> Event Name:</font>

                        <input type="text" name="txtename" value="<%=rs.getString(2)%>"><br><br>
                    <font size="3px" color="green">Event Venue:-</font>
                    <input type="text" name="txtvenue" value="<%=rs.getString(3)%>"><br><br>
                    <font size="3px" color="green">Event Start Date:-</font>
                    <input type="text" name="txtsdate" value="<%=rs.getString(4)%>"><br><br>
                    
                    <font size="3px" color="green">Event End Date:- </font>
                    <input type="text" name="txtedate" value="<%=rs.getString(5)%>"><br><br>
                    <font size="3px" color="green">Event Start Time:-</font>
                    <input type="text" name="txtstime" value="<%=rs.getString(6)%>"><br><br>
                    <font size="3px" color="green">Event End Time:-</font>
                    <input type="text" name="txtetime" value="<%=rs.getString(7)%>"><br><br>
                    <font size="3px" color="green">Chief Guest:-</font>
                    <input type="text" name="txtguest" value="<%=rs.getString(8)%>"><br><br>
                    <font size="3px" color="green">Event Fees:-</font>
                    <input type="text" name="txtfee" value="<%=rs.getString(9)%>"><br><br>
                    <font size="3px" color="green">Description:-</font>
                    <input type="text" name="txtdis" value="<%=rs.getString(10)%>"><br><br>
        
                    
                    
     		<input type="Submit" value="Submit" class="btn btn-primary">
     &nbsp;&nbsp;&nbsp;&nbsp;	
     <a href="body.html"  class="btn btn-primary"> Home</a>
     &nbsp;&nbsp;&nbsp;&nbsp;	
     <a href="admindashboard.jsp"  class="btn btn-primary"> Dashboard</a>
        </div>
                </form>
            </body>
        </html>