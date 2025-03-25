<%-- 
    Document   : eventinsert
    Created on : 23 Jan, 2023, 4:31:17 AM
    Author     : Nandini pavale
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*"%>
<!DOCTYPE html>
<%
    try
    {
        
        String a="'"+request.getParameter("ename")+"'";
        String b="'"+request.getParameter("evenue")+"'";
        String c="'"+request.getParameter("esdate")+"'";
        String d="'"+request.getParameter("eedate")+"'";
         String e="'"+request.getParameter("estime")+"'";
        String f="'"+request.getParameter("eetime")+"'";
        String g="'"+request.getParameter("eguest")+"'";
        String h="'"+request.getParameter("efee")+"'";
        String i="'"+request.getParameter("dis")+"'";
        
         Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/clgemagsys","root","");
        Statement st=con.createStatement();
        String q= "insert into event(eventname,eventvenue,eventstartdate,eventenddate,starttime,endtime,chiefguest,eventfee,description)values("+a+","+b+","+c+","+d+","+e+","+f+","+g+","+h+","+i+")";
        out.println(q);
        st.executeUpdate(q);
        st.close();
        con.close();
        response.sendRedirect("event.html");
    }
    
catch(Exception e)
    {
        out.println(e);
    }
%>
