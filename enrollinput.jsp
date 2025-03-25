<%-- 
    Document   : enrollinput
    Created on : 30 Jan, 2023, 5:15:04 AM
    Author     : Nandini pavale
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*"%>
<%
   
    try
    {
        //String a="'"+request.getParameter("txtid")+"'";
        String b="'"+request.getParameter("txtname")+"'";
        int c=Integer.parseInt(request.getParameter("txtfees"));
        
        String d="'"+request.getParameter("name")+"'";
        String e="'"+request.getParameter("rn")+"'";
        String f="'"+request.getParameter("email")+"'";
        String g="'"+request.getParameter("class")+"'";
        String h="'"+request.getParameter("type")+"'";
        String i="'"+request.getParameter("tid")+"'";
        String j="'"+request.getParameter("mn")+"'";
        
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/clgemagsys","root","");
        Statement st=con.createStatement();
        
        String q= "insert into enroll(eventname,eventfees,name,rollnumber,email,class,type,transactionid,mobilenumber,flag)values("+b+","+c+","+d+","+e+","+f+","+g+","+h+","+i+","+j+",0)";
        out.println(q);
        st.executeUpdate(q);
        st.close();
        con.close();
        response.sendRedirect("studentdashboard.jsp");
         }
    catch(Exception e)
    {
        out.println(e);
    }
%>
