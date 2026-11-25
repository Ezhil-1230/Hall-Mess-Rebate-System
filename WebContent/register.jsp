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
        background-image: url("images/sh1.jpg");
        background-size: cover;
        background-position:center ;
        background-repeat: no-repeat;
        font-family: 'Times New Roman', Times, serif;
        align-items:center;
    }
form{
font-weight:40px;
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
input[typu=submit]:hover{
background:#1e4bd8;
}
</style>
<body>
<table cellpadding="10" cellspacing="10" align="center">
<tr> <td colspan="3" height="52" align="center"><h1 align="center"> <STRONG>REGISTER STUDENT</STRONG></h1></td></tr>
<form name="Register" method="post">
<tr> <td>NAME </td><td> ::</td><td><input type="text" name="rname"  ></td></tr><br>
<br>
<tr> <td >CONTACT.NO </td><td> ::</td><td><input type="text" name="rphn" ></td></tr><br>
<br>
 <tr><td>  HALL</td><td> ::</td><td> <select name="rhalls" > 
                                     <option>SELAIYUR</option>
                                     <option>ST.THOMAS</option>
                                     <option>HEBER</option>
                                     </select> </td></tr>
  <br>                                              
<tr> <td >ROOM.NO </td><td> ::</td><td><input type="text" name="rroomnum" ></td></tr><br>
<br>
<br>
<tr >  <td colspan="3" height="52" align="center"> <input type= "submit"  value="REGISTER" ><BR></td></tr>
</form>
</table>
<% 
if(request.getParameter("rname")!=null){
String rn=request.getParameter("rname");
String rr=request.getParameter("rphn");
String nr=request.getParameter("rhalls");
String rrr=request.getParameter("rroomnum");
if(rn.equals("")|| rr.equals("")|| nr.equals("")|| rrr.equals("")){
	out.println("<script>alert('PLEASE ENTER INPUT');</script>");
}
else{
Class.forName("com.mysql.jdbc.Driver");
Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/ezhil","root","");
PreparedStatement ps=c.prepareStatement("insert into register values(?,?,?,?)");
ps.setString(1,rn);
ps.setString(2,rr);
ps.setString(3,nr);
ps.setString(4,rrr);
ps.executeUpdate();
ps.close();
c.close();
response.sendRedirect("register1.jsp");
}
%>
<%
}
%>
</body>
</html>