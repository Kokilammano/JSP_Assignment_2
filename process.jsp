<%@page import="java.sql.*"%>

<%
	int id=Integer.parseInt(request.getParameter("id"));
	String name=request.getParameter("name");
	String gender=request.getParameter("gender");
	String role=request.getParameter("role");
	String loc=request.getParameter("loc");
	String[] val=request.getParameterValues("opt");
	String opt;
	if(val==null){
		opt="No";
	}
	else{
		 opt="Yes";

	}
	
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/students","root","kokilam");
		Statement st=con.createStatement();
		int i=st.executeUpdate("insert into employdb(id,name,gender,role,location,havingpassport) values('" +id+ "' , '" +name+ "' , '" +gender+ "' , '"+role+ "' , '"+loc+ "' , '"+opt+"');");
		out.println("Data inserted");
		out.println("<a href='index.jsp'>Home</a>");
	}
	catch(Exception e){
		out.print(e);
	}
	
%>
