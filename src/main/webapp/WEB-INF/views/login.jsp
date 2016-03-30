<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Login Form</h1>
        <h5 style="color: red">${login}</h5>
        <form action="" method="POST">
            <table>
                <tr>
                    <td>Email: </td>
                    <td><input type="text" name="txtEmail"></td>
                </tr>
                <tr>
                    <td>Password: </td>
                    <td><input type="password" name="txtPass"></td>
                </tr>
                <tr>
                    <td><input type="submit" name="loginButton" value="Login"></td>
                    <td><input type="reset"></td>
                </tr>
                
            </table>
                
        </form>
</body>
</html>