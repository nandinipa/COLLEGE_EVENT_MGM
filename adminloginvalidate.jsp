<%-- 
    Document   : adminloginvalidate
    Created on : 24 Dec, 2022, 9:57:38 PM
    Author     : Nandini pavale
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>



<%
    try
    {
        String u=request.getParameter("txtemail");
        String p=request.getParameter("txtpwd");
        out.println("1");
        out.println(u+" "+p);
        Class.forName("com.mysql.jdbc.Driver");
        out.println("2");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/clgemagsys","root","");
        out.println("3");
        Statement st=con.createStatement();
        out.println("4");
        ResultSet rs=st.executeQuery("select username,password from admin");
        out.println("5");
        int flag=0;
        out.println("6");
        while(rs.next())
        {
            String uu=rs.getString(1);
            String pp=rs.getString(2);
out.println("7");
out.println(uu+"&nbsp;"+pp);
boolean ppp=u.equals(uu)&& p.equals(pp);
out.println(ppp);
            if(ppp)
            {
                out.println("8");
                flag=1;
                break;
            }
        }
            if(flag==1)
            {
                session.setAttribute("aname",u);
                response.sendRedirect("admindashboard.jsp");
            }
            else
            {
                response.sendRedirect("alog.html");
            }
            out.println(flag);
        
            
    }
    catch(Exception e)
    {
    }
%>

