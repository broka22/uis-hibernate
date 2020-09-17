<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Registration Form</title>
</head>
<body>

	<h1>User info has been submitted into the database.</h1>
	<div>
		<form action="user_save" method="post">
			<div>
				<label>User name</label> 
				<input type="text" name="userName">
			</div>
			<div>
				<label>Password</label> 
				<input type="password" name="password">
			</div>
			<div>
				<label>Email</label> 
				<input type="email" name="email">
			</div>
			<div>
				<label>Mobile Number</label> 
				<input type="number" name="mobileNo">
			</div>
			<div>
				<label>DOB</label> 
				<input type="date" name="dob">
			</div>
			<div>
				<label>Gender</label> 
				<input type="radio" name="gender" value="Male">Male
				<input type="radio" name="gender" value="Female">Female
			</div>
			<div>
				<label>Hobbies</label> 
					<input type="checkbox" name="hobbies" value="Reading">Reading 
					<input type="checkbox" name="hobbies" value="Playing">Playing
			</div>
			<div>
				<label>Nationality</label> 
				<select name="nationality">
					<option value="Nepalese">Nepalese</option>
					<option value="American">American</option>
					<option value="Chinese">Chinese</option>
				</select>
			</div>
			<div>
				<label style="font-weight: bold;">Address</label> 
					<div>		
						<label>City Name</label> 
						<input type="text" name="address.cityName"> 
					</div>
				<div>
						<label>Country Name</label> 
						<input type="text" name="address.countryName">
				</div>
			</div>
			<div>
				<label>Comments</label>
				<textarea rows="10" cols="25" name="comments"></textarea>
			</div>
			<div>
				<input type="submit" value="Submit">
			</div>
		</form>
	</div>

</body>
</html>