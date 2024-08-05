<%-- 
    Document   : update
    Created on : 29 Jul, 2024, 7:53:03 AM
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
    </head>
    <body>
        <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/test" user="root" password="root"/>
        <sql:query dataSource="${dbsource}" var="result">
            SELECT * from product_89 where p_id=?;
            <sql:param value="${param.p_id}"/>
        </sql:query>
            <form action = "updateddb.jsp" method="post">
                <table border ="2">
                    <caption> Update Product</caption>
                    <tr>
                        <th>Product Name</th>
                        <th>Quantity</th>
                    </tr>
                    <c:forEach var="row" items="${result.rows}">
                        <tr>
                            <td>
                                <input type="hidden" value="${param.p_id}" name="p_id"/>
                           
                                <input type="text" value="${row.p_name}" name="p_name"/>
                            </td>
                            <td>
                                <input type="text" value="${row.p_quantity}" name="p_quantity"/>
                            </td>
                            <td>
                                <input type="submit" value="Update"/>
                            </td>
                        </tr>
                    </c:forEach>
                        
                    
                </table>
                <a href="index.html">GO HOME</a>
            </form>
    </body>
</html>
