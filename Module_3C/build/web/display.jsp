<%-- 
    Document   : display
    Created on : 29 Jul, 2024, 7:53:22 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            function confirmGo(m,u){
                if (confirm(m)){
                    window.location = u;
                }
            }
        </script>
    </head>
    <body>
        <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/test" user="root" password="root"/>
        <sql:query dataSource="${dbsource}" var="result">
            SELECT * from product_89;
        </sql:query>
    <center>
            <form>
                <table border="2">
                    <tr>
                        <th>ProductID</th>
                        <th>Product Name</th>
                        <th>Quantity</th>
                        <th colspan="2">Action</th>


                    </tr>
                    <c:forEach var="row" items="${result.rows}">
                        <tr>
                            <td><c:out value="${row.p_id}"/></td>
                            <td><c:out value="${row.p_name}"/></td>
                            <td><c:out value="${row.p_quantity}"/></td>
                            <td>
                                <a href="update.jsp?p_id=<c:out value="${row.p_id}"/>">Update</a>
                            </td>
                             <td>
                                <a href="javascript:confirmGo('Sure to delete this record?','deletedb.jsp?p_id=<c:out value="${row.p_id}"/>')">Delete</a>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
            </form>
            <a href="index.html">Go Back</a>
    </center>
    </body>
</html>
