<%-- 
    Document   : insert
    Created on : 29 Jul, 2024, 7:52:49 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="insertdb.jsp">
            <table border="2">
                <tr>
                    <th colspan="2">Purchase Product</th>
                </tr>
                <tr>
                    <td>Product ID</td>
                    <td><input type="number" name="p_id" ></td>
                </tr>
                <tr>
                    <td>Product Name</td>
                    <td><input type="text" name="p_name"></td>
                </tr>
                <tr>
                    <td>Quantity</td>
                    <td><input type="number" name="p_quantity"</td>
                </tr>
                <tr>
                    <td><input type="Submit" value="Submit"></td>
                    <td><input type="Reset" value="Reset"</td>
                    </tr>
            </table>
        </form>
        <font color="red">
        <c:if test="${not empty param.errMsg}">
            <c:out value="${param.errMsg}"/>
            <a href="index.html">GO BACK</a>     
        </c:if>
        </font>
        <font color="green">
        <c:if test="${not empty param.susMsg}">
            <c:out value="${param.susMsg}"/>
            <a href="index.html">GO BACK</a>     
        </c:if>
        </font>
    </body>
</html>
