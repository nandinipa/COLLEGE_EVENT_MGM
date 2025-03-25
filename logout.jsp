<%-- 
    Document   : logout
    Created on : 13 Feb, 2023, 4:03:00 PM
    Author     : Nandini pavale
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    session.invalidate();
    response.sendRedirect("slog.html");
%>
