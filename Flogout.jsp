<%-- 
    Document   : Flogout
    Created on : 13 Feb, 2023, 4:50:52 PM
    Author     : Nandini pavale
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    session.invalidate();
    response.sendRedirect("flog.html");
%>
