<%-- 
    Document   : inputinsert
    Created on : 10 Nov, 2022, 6:06:02 AM
    Author     : Nandini pavale`
--%>


<%@page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*"%>
<!DOCTYPE html>
<%
    try
    {
        String a="'"+request.getParameter("txtfname")+"'";
        String b="'"+request.getParameter("txtclass")+"'";
        int c=Integer.parseInt(request.getParameter("txtrn"));
        
        String d="'"+request.getParameter("txtmn")+"'";
        String e="'"+request.getParameter("Email")+"'";
        String f="'"+request.getParameter("txtan")+"'";
        String g="'"+request.getParameter("txtaddress")+"'";
        String h="'"+request.getParameter("setpass")+"'";
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/clgemagsys","root","");
        Statement st=con.createStatement();
        String q= "insert into student(name,class,RollNumber,MobileNumber,Email,AadharNumber,Address,password)values("+a+","+b+","+c+","+d+","+e+","+f+","+g+","+h+")";
        out.println(q);
        st.executeUpdate(q);
        st.close();
        con.close();
        response.sendRedirect("student.html");
        
        
        
    }
    catch(Exception e)
    {
        out.println(e);
    }
%>