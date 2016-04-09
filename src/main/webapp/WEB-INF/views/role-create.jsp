<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ page contentType="text/html; charset=UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<head>
<script src="//cdn.ckeditor.com/4.5.8/full/ckeditor.js"></script>
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

<h1>CREATE ROLE</h1>
<h6 style="color: red">${create }</h6>
 <form
				action="${pageContext.request.contextPath}/role-create/new"
				method="post" >
	<table class="table table-hover">
			<tr>
				<td>Role Name</td>
				<td><input type="text" name="roleName" /></td>
			</tr>
			<tr>
				<td>Description</td>
				<td><textarea name="des" id="textarea"></textarea></td>
				<script>
            		CKEDITOR.replace( 'des' );
        		</script>
			</tr>
			<tr>
					<td colspan="2"><input class="btn btn-danger" type="submit" /></td>
			</tr>
				
					
					<!-- <td><input type="text" required="" pattern="[0-9]{4}-(0[1-9]|1[012])-(0[1-9]|1[0-9]|2[0-9]|3[01])" value="" name="dates_pattern1" id="dates_pattern1" list="dates_pattern1_datalist" /></td> -->
			
	</table>
</form> 
</body>
</html>
