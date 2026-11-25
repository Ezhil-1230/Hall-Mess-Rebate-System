<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
            <%@ page import="java.sql.*" %>
            <%@ page import="java.time.LocalDate" %>
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
        background-image: url("images/thmas.jpg");
        background-size: cover;
        background-position:center ;
        background-repeat: no-repeat;
        font-family: 'Times New Roman', Times, serif;
        align-items:center;
    }
form{
font-weight:20px;
font-style:bold;
top:500px;
}            
table{
padding:25px;
border-radius:10x;
box-shadow:0 4px 12px rgba(0,0,0,0,3);
font-size:20px;
font-style:bold;
backdrop-filter: blur(10px);
}
input[type="text"]{
width:200px;
padding:8px;
margin:5px;
border:1px solid #ccc;
boder-radius:5px;
}
input[type="submit"]{
padding:8px 20px;
background:rgb(204, 93, 85);
color:white;
border:none;
border-radius:5px;
cursor:pointer;
}
input[type="password"]{
width:200px;
padding:8px;
margin:5px;
border:1px solid #ccc;
boder-radius:5px;
}
input[typu=submit]:hover{
background:#1e4bd8;
}
</style>
<body>
<table cellpadding="10" cellspacing="10" align="center">
<form name="alogin" method="post">
<tr><td colspan="2"><h1 align="center"> <STRONG> ADMIN LOGIN </STRONG></h1></td></tr>
<tr> <td>USER NAME: </td><td><input type="text" name="usname"  ></td></tr><br>
<br>
<tr> <td >PASSWORD: </td><td><input type="password" name="pwd" ></td></tr><br>
<br>
<br>
<tr > <td></td> <td ><input type= "submit"  value="LOGIN" ></td></tr>
</form>
<% 
if(request.getParameter("usname")!=null){
String an=request.getParameter("usname");
String ar=request.getParameter("pwd");

Time d=new Time(System.currentTimeMillis());
LocalDate l= LocalDate.now();
	
if(ar.equals("") || an.equals("")){
	out.println("<script>alert('PLEASE ENTER INPUT');</script>");
}
else{
Class.forName("com.mysql.jdbc.Driver");
Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/ezhil","root","");

if(ar.toLowerCase().equals("selaiyur") && an.toLowerCase().equals("selaiyur")){	
	PreparedStatement ps=c.prepareStatement("insert into sadmin values(?,?,?,?)");
	ps.setString(1,an);
	ps.setString(2,ar);
	ps.setTime(3,d);
	ps.setDate(4,Date.valueOf(l));
	ps.executeUpdate();
	ps.close();
	c.close();
response.sendRedirect("selaiyur.jsp");
}
else if(ar.toLowerCase().equals("heber") && an.toLowerCase().equals("heber")){
	PreparedStatement ps=c.prepareStatement("insert into hadmin values(?,?,?,?)");
	ps.setString(1,an);
	ps.setString(2,ar);
	ps.setTime(3,d);
	ps.setDate(4,Date.valueOf(l));
	ps.executeUpdate();
	ps.close();
	c.close();
response.sendRedirect("heber.jsp");
}
else if(ar.toLowerCase().equals("thomas") && an.toLowerCase().equals("thomas")){
	PreparedStatement ps=c.prepareStatement("insert into tadmin values(?,?,?,?)");
	ps.setString(1,an);
	ps.setString(2,ar);
	ps.setTime(3,d);
	ps.setDate(4,Date.valueOf(l));
	ps.executeUpdate();
	ps.close();
	c.close();
response.sendRedirect("thomas.jsp");
}
else{
	c.close();
	out.println("<script>alert('INCORRECT PASSWORD OR USER NAME');</script>");
}
}
}%>
</body>
</html>