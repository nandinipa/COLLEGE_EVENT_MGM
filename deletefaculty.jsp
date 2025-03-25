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
        int srno=Integer.parseInt(request.getParameter("srno"));
        st.executeUpdate("delete from faculty where srno="+srno+"");
        st.close();
        con.close();
        response.sendRedirect("editfaculty.jsp");
    }
    catch(Exception e)
    {
        out.println(e);
    }
    
%>

