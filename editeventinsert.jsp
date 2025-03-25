<%-- 
    Document   : editeventinsert
    Created on : 8 Feb, 2023, 4:44:30 PM
    Author     : Nandini pavale
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*"%>
<!DOCTYPE html>
<%
    try
    {
        int p=(Integer)session.getAttribute("id");
        String a="'"+request.getParameter("txtename")+"'";
        String b="'"+request.getParameter("txtvenue")+"'";
        String c="'"+request.getParameter("txtsdate")+"'";
        String d="'"+request.getParameter("txtedate")+"'";
         String e="'"+request.getParameter("txtstime")+"'";
        String f="'"+request.getParameter("txtetime")+"'";
        String g="'"+request.getParameter("txtguest")+"'";
        String h="'"+request.getParameter("txtfee")+"'";
        String i="'"+request.getParameter("txtdis")+"'";
        
         Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/clgemagsys","root","");
        Statement st=con.createStatement();
        String q= "update event set eventname="+a+",eventvenue="+b+",eventstartdate="+c+",eventenddate="+d+",starttime="+e+",endtime="+f+",chiefguest="+g+",eventfee="+h+",description="+i+" where id="+p+"";
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