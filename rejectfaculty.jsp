<%-- 
    Document   : rejectfaculty
    Created on : 24 Jan, 2023, 6:35:35 AM
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
        response.sendRedirect("approvereject.jsp");
    }
    catch(Exception e)
    {
        out.println(e);
    }
    
%>
