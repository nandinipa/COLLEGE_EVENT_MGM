<%-- 
    Document   : assigninsert
    Created on : 12 Feb, 2023, 11:02:31 AM
    Author     : Nandini pavale
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*"%>
<!DOCTYPE html>
<%
    try
    {
        String a="'"+request.getParameter("txtename")+"'";
        String b="'"+request.getParameter("txtvenue")+"'";
        String c="'"+request.getParameter("txtsdate")+"'";
        String d="'"+request.getParameter("txtedate")+"'";
        String e="'"+request.getParameter("txtstime")+"'";
        String f="'"+request.getParameter("txtetime")+"'";
        String g="'"+request.getParameter("txtguest")+"'";
        String h="'"+request.getParameter("txtfee")+"'";
        String i="'"+request.getParameter("txtdis")+"'";
        String j="'"+request.getParameter("txtfaculty")+"'";
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/clgemagsys","root","");
        Statement st=con.createStatement();
        String q= "insert into AssignedEvent(eventname,venue,startdate,enddate,starttime,endtime,chiefguest,fees,description,faculty)values("+a+","+b+","+c+","+d+","+e+","+f+","+g+","+h+","+i+","+j+")";
        out.println(q);
        st.executeUpdate(q);
        st.close();
        con.close();
        response.sendRedirect("assign.jsp");
        
        
        
    }
    catch(Exception e)
    {
        out.println(e);
    }
%>