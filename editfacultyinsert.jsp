<%-- 
    Document   : editfacultyinsert
    Created on : 12 Feb, 2023, 10:55:23 PM
    Author     : Nandini pavale
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*"%>
<!DOCTYPE html>
<%
    try
    {
        int p=(Integer)session.getAttribute("srno");
        String a="'"+request.getParameter("name")+"'";
        String b="'"+request.getParameter("id")+"'";
        String c="'"+request.getParameter("mn")+"'";
        String d="'"+request.getParameter("email")+"'";
         String e="'"+request.getParameter("aadhaarno")+"'";
        String f="'"+request.getParameter("add")+"'";
        String g="'"+request.getParameter("pass")+"'";
        
        
         Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/clgemagsys","root","");
        Statement st=con.createStatement();
        String q= "update faculty set name="+a+",ID="+b+",mobile="+c+",email="+d+",aadhaar="+e+",address="+f+",pass="+g+" where srno="+p+"";
        out.println(q);
        st.executeUpdate(q);
        st.close();
        con.close();
        //response.sendRedirect("edit.jsp");
    }
    
catch(Exception e)
    {
        out.println(e);
    }
%>