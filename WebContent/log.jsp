<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ page import="java.sql.*" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
table{
padding:25px;
border-radius:10x;
box-shadow:0 4px 12px rgba(0,0,0,0,3);
font-size:30px;
font-style:bold;
backdrop-filter: blur(3px);
color:white;
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
background:rgb(36, 151, 97);
color:white;
border:none;
border-radius:5px;
cursor:pointer;
}
input[type="button"]{
padding:8px 20px;
background:rgb(36, 151, 97);
color:white;
border:none;
border-radius:5px;
cursor:pointer;
}
input[typu=submit]:hover{
background:#1e4bd8;
}
</style>
<body>
<form>
<table cellpadding="10" cellspacing="10" align="center" >
<tr> <td colspan="3" height="52" align="center"><h1 align="center"> <STRONG> STUDENT LOGIN </STRONG></h1></td></tr>
<tr> <td>NAME: </td><td><input type="text" name="sname"  ></td></tr><br>
<br>
<tr> <td >ROOM.NO: </td><td><input type="text" name="roomnum" ></td></tr><br>
<br>
<br>
<tr >  <td colspan="3" height="52" align="center"> <input type= "submit"  value="LOGIN" ></td></tr>
 <tr ><td colspan="3" height="52" align="center"><a href="register.jsp"><input type= "button"  value="REGISTER" ></a></td></tr>
</form>
<% 
if(request.getParameter("sname")!=null){
String n=request.getParameter("sname");
String r=request.getParameter("roomnum");

Time d=new Time(System.currentTimeMillis());
Date l=new Date(System.currentTimeMillis());
session.setAttribute("roomnum",r);
session.setAttribute("sname",n);
if(request.getParameter("sname").equals("") || request.getParameter("roomnum").equals("")){
	%>
	<script>alert("please enter input");</script>
<%
	}
else{
Class.forName("com.mysql.jdbc.Driver");
Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/ezhil","root","");
String query=("select * from register where name=? and room=? ");
PreparedStatement ps=c.prepareStatement(query);
ps.setString(1,n);
ps.setString(2,r);
ResultSet rs=ps.executeQuery();
if(rs.next()){
	PreparedStatement logPs=c.prepareStatement("insert into login values(?,?,?,?)");
	logPs.setString(1,n);
	logPs.setString(2,r);
	logPs.setTime(3,d);
	logPs.setDate(4,l);
	logPs.executeUpdate();
	logPs.close();
	rs.close();
	ps.close();
	c.close();
	response.sendRedirect("debate.jsp");
	return;
}
else{
	out.println("<script>");
	out.println("alert('invalid user name or password for login ')");
	out.println("</script>");
}
ps.close();
rs.close();
c.close();
}
}
%>
</body>
</html>