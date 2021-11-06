<h1>Employee Registration Form Using JSP </h1><hr>
<form action="process.jsp" method="post">
	<div>
		<label>Employee Id :</label>
		<input type="number" name="id">
	</div><br><br>
	<div>
		<label>Employee Name :</label>
		<input type="text" name="name">
	</div><br><br>
	<div>
		<label>Employee Gender :</label>
		<input type="radio" name="gender" value="Male">Male
		<input type="radio" name="gender" value="Female">Female
	</div><br><br>
	<div>
		<label>Employee Role :</label>
		<select name="role" multiple>
			<option value="Development">Development</option>
			<option value="Testing">Testing</option>
			<option value="Designing">Designing</option>
			<option value="Marketing">Marketing</option>
			<option value="Deployment">Deployment</option>
		</select>
	</div><br><br>
	<div>
		<label>Employee Location :</label>
		<select name="loc" multiple>
			<option value="Tamilnadu">Tamilnadu</option>
			<option value="Bihar">Bihar</option>
			<option value="Rajasthan">Rajasthan</option>
			<option value="Punjab">Punjab</option>
			<option value="Andra">Andra</option>
		</select>
	</div><br><br>
	<input type="checkbox" name="opt">Do you have passport
	<br><br>
	<input type="submit" value="Register">
	<input type="reset" value="Clear">
</form>
