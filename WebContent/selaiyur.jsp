<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ page import="java.sql.*" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HALL MESS REBATE SYSTEM</title>
</head>
<style>
html,body{
margin:0;
padding:0;
height:100%;
}
  body{
        background-image: url("images/mcc3.jpg");
        background-size: cover;
        background-position:center ;
        background-repeat: no-repeat;
        font-family: 'Times New Roman', Times, serif;
        align-items:center;
    }
form{
font-weight:20px;
font-style:bold;
}            
table{
padding:25px;
border-radius:10x;
box-shadow:0 4px 12px rgba(0,0,0,0,3);
font-size:20px;
font-style:bold;
backdrop-filter: blur(10px);
color:white;
}
input[type="submit"]{
padding:8px 20px;
background:#2f66ff;
color:white;
border:none;
border-radius:5px;
cursor:pointer;
}
input[typu=submit]:hover{
background:#1e4bd8;
}
</style>
<style>
table,th{
border:2px solid black;
border-collapse:collapse;
}
td{
border:2px solid black;
colspan:"3" ;
height:"52" ;
padding:11px;
margin-left:20px;
text-align:center;
font-weight:bold;
}
</style>
<body>
<table cellpadding="10" cellspacing="10" align="center" border="5">
<tr><td colspan="11"><h1 align="center"> <STRONG> SELAIYUR HALL </STRONG></h1>
</td></tr>
<tr>
						<th>REGISTER NUMBER</th>
						<th>NAME</th>
						<th>ROOM NUMBER</th>
						<th>ADDRESS OF STAY</th>
						<th>HALL</th>
						<th>LEAVE DATE FROM</th>
						<th>LEAVE DATE TILL</th>
						<th>PHONE</th>
		                <th>APPLIED ON</th>
		                <th>STATUS</th>
		                <th>ACTION</th>				
	</tr>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/ezhil","root","");
Statement st=c.createStatement();
String query=("select * from debate where hall='SELAIYUR' ");
PreparedStatement ps=c.prepareStatement(query);
ResultSet rs=ps.executeQuery();
while(rs.next()){
%>
	<tr>
		<td ><%= rs.getString(1) %></td>
		<td><%= rs.getString(2) %></td>
		<td><%= rs.getString(3) %></td>
		<td><%= rs.getString(4) %></td>
		<td><%= rs.getString(5) %></td>
		<td><%= rs.getString(6) %></td>
		<td><%= rs.getString(7) %></td>
		<td><%= rs.getString(8) %></td>
		<td><%= rs.getString(9) %></td>
		<td><%= rs.getString(10) %></td>
		<td><form action="update.jsp" method="post">
		<input type="hidden" name="regno" value="<%=rs.getString(1)%>">
		<input type="submit" name="app" value="approve">
		</form></td></tr>
<%}
rs.close();
ps.close();
c.close();
%>
</table>
</body>
</html>