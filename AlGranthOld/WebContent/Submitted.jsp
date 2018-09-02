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

Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/algranth","root","password");

Statement st=con.createStatement();

String query="select * from user_details";

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

<td><%=rs.getString("email_id") %></td>

<td><%=rs.getString("pwd") %></td>



</tr>
<% } %>
</table>


</body>
</html>