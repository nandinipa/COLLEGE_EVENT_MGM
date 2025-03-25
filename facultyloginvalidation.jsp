<%-- 
    Document   : facultyloginvalidation
    Created on : 23 Jan, 2023, 6:43:19 AM
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
        ResultSet rs=st.executeQuery("select email,pass ,fflag from faculty");
        int flag=0;
        while(rs.next())
        {
            String uu=rs.getString(1);
            String pp=rs.getString(2);
            int fflag=rs.getInt(3);
            if(u.equals(uu)&& p.equals(pp)&& fflag==1)
            {
                flag=1;
                break;
            }
        }
            if(flag==1)
            {
                session.setAttribute("fname",u);
                response.sendRedirect("facultydashboard.jsp");
            }
            else
            {
                response.sendRedirect("flog.html");
            }
            out.println(flag);
        
            
    }
    catch(Exception e)
    {
        out.println(e);
    }
%>

