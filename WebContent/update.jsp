<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>    
        <%@ page import="java.sql.*" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</head>
<body>
<% 
String dn=request.getParameter("regno");
Class.forName("com.mysql.jdbc.Driver");
Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/ezhil","root","");
PreparedStatement ps=c.prepareStatement("update debate set status='APPROVED' where register_no=?");
ps.setString(1,dn);
ps.executeUpdate();
ps.close();
c.close();
response.sendRedirect("selaiyur.jsp");
%>
</body>
</html>