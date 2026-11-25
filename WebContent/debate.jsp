<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
            <%@ page import="java.sql.*" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
html,body{
margin:0;
padding:0;
height:100%;
}
  body{
        background-image: url("images/mcc1.jpg");
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
color:white;
backdrop-filter: blur(5px);
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
input[type="reset"]{
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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HALL MESS REBATE SYSTEM</title>
</head>
<body>

<table cellpadding="10" cellspacing="10" align="center">
<tbody>
<tr><td colspan="3" align="center">
<h2><strong>HALL MESS REBATE FORM</strong></h2>
<br>
</td></tr>
<form name="form1" method="post" >
<br>
<tr><td>  REGISTER.NO </td><td> ::</td><td>  <input name="rid" id="numb1" type="text"></td></tr>
<tr><td>   NAME</td><td> ::</td><td>  <input name="rname" maxlength="30" type="text" ></td></tr>
<tr><td>  ROOM.NO </td><td> ::</td><td>  <input name="roomno" id="numb2" type="text" setdefault=d ></td></tr>							   
<tr><td>   ADDRESS OF STAY</td><td> ::</td><td>  <input name="stay" maxlength="30" type="text" ></td></tr>
 <tr><td>  HALL</td><td> ::</td><td align="center">    <select name="halls" > 
                                                <option>SELAIYUR</option>
                                                <option>ST.THOMAS</option>
                                                <option>HEBER</option>
                                                </select> </td></tr> 												
<tr><td>   DATE OF STAY FROM</td><td> ::</td><td align="center">  <input name="dfrom"  type="date" ></td></tr>
<tr><td>   DATE OF STAY TO</td><td> ::</td><td align="center">  <input name="dto"  type="date" ></td></tr>
<tr><td>  MOBILE.NO </td><td> ::</td><td>  <input name="phone" id="phone" type="text"></td></tr>
<tr>   
<td colspan="3" height="52" align="center">
<input name="Submit1" value="Submit" type="submit" > 
<input name="Submit2" value="Reset" type="reset">
</td>
</tr>
</table>
</form>
<% 
if(request.getParameter("rname")!=null){
String dn=request.getParameter("rid");
String dr=request.getParameter("rname");
String dq=request.getParameter("roomno");
String ds=request.getParameter("stay");
String dh=request.getParameter("halls");
String df=request.getParameter("dfrom");
String dt=request.getParameter("dto");
String dp=request.getParameter("phone");
Date l=new Date(System.currentTimeMillis());
if(dn.equals("")|| dr.equals("")|| dq.equals("")|| ds.equals("")|| dh.equals("")|| df.equals("")|| dt.equals("")|| dp.equals("")){
	out.println("<script>alert('PLEASE ENTER INPUT');</script>");	
}
else{
Class.forName("com.mysql.jdbc.Driver");
Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/ezhil","root","");
PreparedStatement ps=c.prepareStatement("insert into debate values(?,?,?,?,?,?,?,?,?,?)");
ps.setString(1,dn);
ps.setString(2,dr);
ps.setString(3,dq);
ps.setString(4,ds);
ps.setString(5,dh);
ps.setString(6,df);
ps.setString(7,dt);
ps.setString(8,dp);
ps.setDate(9,l);
ps.setString(10,"PENDING");
ps.executeUpdate();
ps.close();
c.close();
response.sendRedirect("successfull.jsp");
%>
<%
}}
%>
</body>
</html>