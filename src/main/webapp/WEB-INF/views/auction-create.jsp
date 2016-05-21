<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ page contentType="text/html; charset=UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<head>
<meta charset="utf-8">

<!-- <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
 -->

</head>
<body>

<h1>CREATE</h1>
<h6 style="color: red">${create}</h6>
 

	<form:form method="POST" action="auc-create/new" modelAttribute="au">
             <table class="table table-hover">
                <tr>
                    <td><form:label path="auctionID">AuctionID</form:label></td>
                    <td><form:input path="auctionID"/></td>
                </tr>
                <tr>
                    <td><form:label path="description">Description</form:label></td>
                    <td><form:input path="description"/></td>
                </tr>
                <tr>
                    <td><form:label path="productName">ProductName</form:label></td>
                    <td><form:input path="productName"/></td>
                </tr>
                <tr>
                    <td><form:label path="imageURL">ImageURL</form:label></td>
                    <td><form:input path="imageURL"/></td>
                </tr>
                <tr>
                    <td><form:label path="startTime">StartTime</form:label></td>
                    <td><form:input path="startTime"/></td>
                </tr>
                <tr>
                    <td><form:label path="endTime">EndTime</form:label></td>
                    <td><form:input path="endTime"/></td>
                </tr>
                <tr>
                    <td><form:label path="startPrice">StartPrice</form:label></td>
                    <td><form:input path="startPrice"/></td>
                </tr>
             
                 <tr>
                	<td>Categoryauction</td>
                    <td><form:select path="categoryauction.categoryAuctionID"><c:forEach var="catau" items="${listCatauc}"><option value="${catau.getCategoryAuctionID() }">${catau.getCategoryName() }</option></c:forEach></form:select></td>
                    
                   
                </tr>
                <tr>
                	<td>Customer</td>
                    <td><form:select path="customer.customerID"><c:forEach var="cus" items="${lisCus}"><option value="${cus.getCustomerID() }">${cus.getFullName() }</option></c:forEach></form:select></td>
                    
                   
                </tr>
                <tr>
                	<td>Employee</td>
                    <td><form:select path="employee.employeeID"><c:forEach var="emp" items="${listEmp}"><option value="${emp.getEmployeeID() }">${emp.getFullName() }</option></c:forEach></form:select></td>
                    
                   
                </tr>
                <tr>
                	<td>Status</td>
                    <td><form:select path="status">
                    	<form:option value="0">On</form:option>
						<form:option value="1">Off</form:option>
                    </form:select></td>
                    
                </tr>
                <tr>
                    <td colspan="2"><input class="btn btn-danger" type="submit" /></td>
                </tr>
            </table>
        </form:form>

</body>
</html>
