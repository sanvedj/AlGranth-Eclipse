<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.sql.*" %>

<%@page import="javax.sql.*" %>

<%@page import="java.sql.Connection" %>

<%



Class.forName("com.mysql.jdbc.Driver").newInstance();

Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/users","root","password");

Statement st=con.createStatement();

String query="select * from userpass";

ResultSet rs=st.executeQuery(query);


while(rs.next())

{

%>

<table border="2" bordercolor="#2494b7">

<tr>

<th>UserName</th>

<th>Password</th>


</tr>

<tr>

<td><%=rs.getString("ID") %></td>

<td><%=rs.getString("password") %></td>



</tr>
<% } %>
</table>


</body>
</html>