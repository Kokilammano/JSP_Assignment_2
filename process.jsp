<%@page import="java.sql.*"%>

<%
	String fname=(String)session.getAttribute("fname");
	String lname=(String)session.getAttribute("lname");
	String skill1=(String)session.getAttribute("skill1");
	String skill2=(String)session.getAttribute("skill2");
	
	String qlf=request.getParameter("qlf");
	String univ=request.getParameter("univ");
	
	String driver="com.mysql.cj.jdbc.Driver";
	String url="jdbc:mysql://localhost:3306/students";
	String user="root";
	String password="kokilam";
	String sql="INSERT INTO studetails(Firstname,Lastname,Skill_1,Skill_2,Qualification,University) values(?,?,?,?,?,?)";
	
	Class.forName(driver);
	Connection con=DriverManager.getConnection(url,user,password);
	PreparedStatement ps=con.prepareStatement(sql);
	ps.setString(1,fname);
	ps.setString(2,lname);
	ps.setString(3,skill1);
	ps.setString(4,skill2);
	ps.setString(5,qlf);
	ps.setString(6,univ);
		
	int result=ps.executeUpdate();
	if(result==1){
		out.println("Student Details Created Successfully");
		out.println("<a href='index.jsp'>Home</a>");
	}
	else{
		out.println("Failed");
		out.println("<a href='index.jsp'>Home</a>");
	}
		
	
	
%>