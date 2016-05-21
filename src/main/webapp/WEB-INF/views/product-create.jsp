<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
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
 <form
				action="pro-create"
				method="post" >
	<table class="table table-hover">
			<tr>
				<td>BarCode</td>
				<td><input type="text" name="barcode" /></td>
			</tr>
			<tr>
				<td>Product Name</td>
				<td><input type="text" name="productName" /></td>
			</tr>
			<tr>
				<td>Description</td>
				<td><input type="text" name="description" /></td>
			</tr>
			 <tr>
				<td>Price</td>
				<td><input type="number" name="price" /></td>
			</tr>
			<tr>
				<td>Discount</td>
				<td><input type="number" name="discount" /></td>
			</tr>
			<tr>
				<td>Quantity</td>
				<td><input type="number" name="quantity" /></td>
			</tr>
			<tr>
				<td>Image</td>
				<td><input type="text" name="imageUrl" /></td>
			</tr>
			
			
			
			<tr>
				<td>Brand</td>
				<td>
					<select name="brand">
						<c:forEach var="brand" items="${listBrand}">
							<option value="${brand.getBrandID()}"><c:out value="${brand.getBrandName()}"/></option>
						</c:forEach>
					</select>
				</td>
			</tr>
			<tr>
				<td>Category</td>
				<td>
					<select name="category">
						<c:forEach var="category" items="${listCat}">
							<option value="${category.getCategoryID()}"><c:out value="${category.getName()}"/></option>
						</c:forEach>
					</select>
				</td>
			</tr>
			<tr>
				<td>Size</td>
				<td>
					<select name="size">
						<c:forEach var="size" items="${listSize}">
							<option value="${size.getBrandID()}"><c:out value="${size.getSizeName()}"/></option>
						</c:forEach>
					</select>
				</td>
			</tr>
			<tr>
				<td>Status</td>
				<td>
					<select name="status">
						<option value="0">On</option>
						<option value="1">Off</option>
					</select>
				</td>
			</tr>
			<tr>
					<td colspan="2"><input class="btn btn-danger" type="submit" /></td>
			</tr>
				
					
					<!-- <td><input type="text" required="" pattern="[0-9]{4}-(0[1-9]|1[012])-(0[1-9]|1[0-9]|2[0-9]|3[01])" value="" name="dates_pattern1" id="dates_pattern1" list="dates_pattern1_datalist" /></td> -->
			
	</table>
</form> 
</body>
</html>
 --%>