<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User list</title>
</head>
<body>
	<h1>User list</h1>
	<a href="user_form">Add User</a>
	<c:if test="${!empty users}">
		<table>
			<thead>
				<tr>
					<th>Id</th>
					<th>User Name</th>
					<th>Password</th>
					<th>Email</th>
					<th>Mobile No</th>
					<th>DOB</th>
					<th>Gender</th>
					<th>Hobbies</th>
					<th>Nationality</th>
					<th>Address</th>
					<th>Comments</th>
					<th>Actions</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${users}" var="user">
					<tr>
						<td>${user.id }</td>
						<td>${user.userName }</td>
						<td>${user.password }</td>
						<td>${user.email }</td>
						<td>${user.mobileNo }</td>
						<td>${user.dob }</td>
						<td>${user.gender }</td>
						<td>${user.hobbies }</td>
						<td>${user.nationality }</td>
						<td>${user.address.cityName },${user.address.countryName }</td>
						<td>${user.comments }</td>
						<td>
					    <a href="user_edit?id=${user.id }">Edit</a>
						<a href="user_delete?id=${user.id }">Delete</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</c:if>
</body>
</html>