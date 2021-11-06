<%
	String skill1=request.getParameter("skill1");
	String skill2=request.getParameter("skill2");
	session.setAttribute("skill1", skill1);
	session.setAttribute("skill2", skill2);
%>
<h1>Education Details :</h1><hr>
<form action="process.jsp">
	<div>
		<label>Qualification :</label>
		<input type="text" name="qlf">
	</div><br><br>
	<div>
		<label>University :</label>
		<input type="text" name="univ">
	</div><br><br>
	<input type="submit" value="Submit">
</form>
