<%-- 
    Document   : Alogout
    Created on : 13 Feb, 2023, 4:47:49 PM
    Author     : Nandini pavale
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    session.invalidate();
    response.sendRedirect("alog.html");
%>
