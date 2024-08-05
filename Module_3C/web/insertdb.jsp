<%-- 
    Document   : insertdb
    Created on : 29 Jul, 2024, 7:53:37 AM
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
        <c:if test="${empty param.p_id or empty param.p_name or empty param.p_quantity}">
            <c:redirect url="insert.jsp">
                <c:param name="errMsg" value="Please Enter Product Details"/>
            </c:redirect> 
        </c:if>  
        <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/test" user="root" password="root"/>
        <sql:update dataSource="${dbsource}" var="result">
            INSERT INTO product_89 VALUES(?,?,?);
            <sql:param value="${param.p_id}"/>
            <sql:param value="${param.p_name}"/>
            <sql:param value="${param.p_quantity}"/>
        </sql:update>
            <c:if test="${result>=1}">
                <font size="5" color="green">Congratulations! Data Inserted Successfully.</font>
                <c:redirect url="insert.jsp">
                    <c:param name="susMsg" value="Congratulations! Data Inserted Successfully"/>
                </c:redirect>
            </c:if>
    </body>
</html>
