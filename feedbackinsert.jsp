<%-- 
    Document   : feedbackinsert
    Created on : 3 Feb, 2023, 4:31:09 AM
    Author     : Nandini pavale
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*"%>
<%
   
    try
    {
        
        String a="'"+request.getParameter("name")+"'";
        String b="'"+request.getParameter("class")+"'";
        int c=Integer.parseInt(request.getParameter("rn"));
        
        String d="'"+request.getParameter("email")+"'";
        String e="'"+request.getParameter("mn")+"'";
        String f="'"+request.getParameter("feedback")+"'";
       
        
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/clgemagsys","root","");
        Statement st=con.createStatement();
        
        String q= "insert into feedback(name,class,rollnumber,email,mobilenumber,feedback)values("+a+","+b+","+c+","+d+","+e+","+f+")";
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