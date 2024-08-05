<%-- 
    Document   : deletedb
    Created on : 29 Jul, 2024, 7:54:46 AM
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
        <sql:update dataSource="${dbsource}" var="xyz">
            DELETE from product_89 WHERE p_id=?;
            <sql:param value="${param.p_id}"/>
        </sql:update>
            <c:if test="${xyz>=1}">
            <font size="5" color="green">Congratulations! Data Deleted Successfully</font>
             <a href="index.html">Go Home</a>
            </c:if>
    </body>
</html>
