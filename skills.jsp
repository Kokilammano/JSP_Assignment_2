<%
	String fname=request.getParameter("fname");
	String lname=request.getParameter("lname");
	session.setAttribute("fname",fname);
	session.setAttribute("lname",lname);
%>
<h1>Skills Details :</h1><hr>
<form action="edu.jsp">
	<div>
		<label>Skill-1 :</label>
		<input type="text" name="skill1">
	</div><br><br>
	<div>
		<label>Skill-2 :</label>
		<input type="text" name="skill2">
	</div><br><br>
	<input type="submit" value="Next">
</form>