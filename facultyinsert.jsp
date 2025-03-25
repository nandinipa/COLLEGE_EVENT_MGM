<%-- 
    Document   : facultyinsert
    Created on : 23 Jan, 2023, 6:25:34 AM
    Author     : Nandini pavale
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*"%>
<!DOCTYPE html>
<%
    try
    {
        String a="'"+request.getParameter("fname")+"'";
        
        int b=Integer.parseInt(request.getParameter("fid"));
        
        String c="'"+request.getParameter("mn")+"'";
        String d="'"+request.getParameter("email")+"'";
        String e="'"+request.getParameter("an")+"'";
        String f="'"+request.getParameter("add")+"'";
        String g="'"+request.getParameter("spass")+"'";
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/clgemagsys","root","");
        Statement st=con.createStatement();
        String q= "insert into faculty(name,ID,mobile,email,aadhaar,address,pass ,fflag)values("+a+","+b+","+c+","+d+","+e+","+f+","+g+",0)";
        out.println(q);
        st.executeUpdate(q);
        st.close();
        con.close();
        response.sendRedirect("facultyreg.html");
        
        
        
    }
    catch(Exception e)
    {
        out.println(e);
    }
%>