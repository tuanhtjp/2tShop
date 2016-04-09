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

<h1>EDIT ROLE</h1>
 <form:form
				action="${pageContext.request.contextPath}/role-edit/${role.roleID}"
				method="post" modelAttribute="role">
	<table class="table table-hover">
			<tr>
				<td>RoleID</td>
				<td><form:input type="text" path="roleID" readonly="true" /></td>
			</tr>
			<tr>
				<td>Role Name</td>
				<td><form:input type="text" path="roleName" /></td>
			</tr>
			<tr>
				<td>Description</td>
				<td><form:textarea name="description" path="description" id="textarea"/></td>
				<script>
            		CKEDITOR.replace( 'description' );
        		</script>
			</tr>
			<tr>
					<td colspan="2"><input class="btn btn-danger" type="submit" /></td>
			</tr>
	</table>
</form:form> 
</body>
</html>
