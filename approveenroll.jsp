<%-- 
    Document   : approveenroll.jsp
    Created on : 1 Feb, 2023, 4:28:45 AM
    Author     : Nandini pavale
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%
    
    try
    {
         Class.forName("com.mysql.jdbc.Driver");
         
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/clgemagsys","root","");
        Statement st=con.createStatement();
        String eid="'"+request.getParameter("eid")+"'";
        st.executeUpdate("update enroll set flag=1 where eid="+eid+"");
        st.close();
        con.close();
        response.sendRedirect("enrollapprovereject.jsp");
    }
    catch(Exception e)
    {
        out.println(e);
    }
    
%>
