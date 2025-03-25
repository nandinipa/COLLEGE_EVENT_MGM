<%-- 
    Document   : studentloginvalidate
    Created on : 10 Dec, 2022, 10:20:56 PM
    Author     : Nandini pavale
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
    </body>
</html>
<%
    try
    {
        String u=request.getParameter("email");
        String p=request.getParameter("pwd");
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/clgemagsys","root","");
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select Email,password from student");
        int flag=0;
        while(rs.next())
        {
            String uu=rs.getString(1);
            String pp=rs.getString(2);
            if(u.equals(uu)&& p.equals(pp))
            {
                flag=1;
                break;
            }
        }
            if(flag==1)
            {
                session.setAttribute("cname",u);
                response.sendRedirect("studentdashboard.jsp");
            }
            else
            {
                response.sendRedirect("slog.html");
            }
        
            
    }
    catch(Exception e)
    {
    }
%>
