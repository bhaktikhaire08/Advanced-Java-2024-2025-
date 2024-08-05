<%-- 
    Document   : Registration
    Created on : 15 Jul, 2024, 8:04:07 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String s1=request.getParameter("uname");
            String s2=request.getParameter("pass");
            String s3=request.getParameter("rpass");
            String s4=request.getParameter("email");
            String s5=request.getParameter("count");
            
            if(s2.equals(s3))
            {
                try
                {
                  Class.forName("com.mysql.jdbc.Driver");
                  Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
                  PreparedStatement pst = conn.prepareStatement("insert into registration89 value(?,?,?,?)");
                  pst.setString(1,s1);
                  pst.setString(2,s2);
                  pst.setString(3,s4);
                  pst.setString(4,s5);
                  int rows = pst.executeUpdate();
                  if(rows == 1)
                  {
                   out.print("REGISTRATION SUCCESSFUL....!");
                  }
                  else
                  {
                   out.print("REGISTRATION FAILED...!,TRY ONCE AGAIN");
                    %>
             <jsp:include page="Registration.html"></jsp:include>
             
             <%
                   
                  }
                }
                catch(Exception e)
                {
                  out.print("Exception = "+e);
                }
            
            }
            else
            {
             out.print("Password Mismatched....!,Register Once Again");
             %>
             <jsp:include page="Registration.html"></jsp:include>
             
             <%
             
             
            }
%>
    </body>
</html>
