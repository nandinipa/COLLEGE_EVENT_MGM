<%-- 
    Document   : delete
    Created on : 4 Feb, 2023, 4:26:07 AM
    Author     : Nandini pavale
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%
    try
    {
         Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/clgemagsys","root","");
        Statement st=con.createStatement();
        int id=Integer.parseInt(request.getParameter("id"));
        st.executeUpdate("delete from event where id="+id+"");
        st.close();
        con.close();
        response.sendRedirect("editevent.jsp");
    }
    catch(Exception e)
    {
        out.println(e);
    }
    
%>

