<%-- 
    Document   : Login
    Created on : 15 Jul, 2024, 8:04:25 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import ="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String s1=request.getParameter("user");
            String s2=request.getParameter("pword");
            try
            {
              Class.forName("com.mysql.jdbc.Driver");
                  Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
                  PreparedStatement pst = conn.prepareStatement("select * from registration89 where Username=?");
                  pst.setString(1,s1);
                  ResultSet rs = pst.executeQuery();
                  if(rs.next())
                  {
                    if (rs.getString(2).equals(s2))
                    {
                     out.print("LOGIN SUCCESSFUL...!");
                    }
                    else
                    {
                        out.print("LOGIN FAILED....!");
                     %>
                   <jsp:include page="Login.html"></jsp:include>
                   
                   <%
                    }
                  }
                  else
                  {
                   out.print("Username Does Not Exist.Please Register");
                   %>
                   <jsp:include page="Registration.html"></jsp:include>
                   
                   <%
                  }
            }
            catch(Exception e)
            {
            
            out.print("Exception = "+e);
            }
        
        %>
    </body>
</html>
