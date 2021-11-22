<%@page import="org.hibernate.Session"%>
<%@page import="com.simplilearn.entity.Classes"%>
<%@page import="java.util.List"%>
<%@page import="com.simplilearn.util.HibernateUtil"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href="index.html">Back to Menu</a><br>
<a href="HTML/addClasses.html">Add Subject</a><br>

<h1>The Following Classes are listed</h1>
<%
	SessionFactory sf  = HibernateUtil.buildSessionFactory();
	Session hibernateSession = sf.openSession();
	List<Classes> classes = hibernateSession.createQuery("from Classes").list();
%>
<table>
<tr>
<th>Subject Name </th>
</tr>
	<%		
		for(Classes clas : classes){
			out.print("<tr>");	
			out.print("<td>" + clas.getName() + "</td>");
			out.print("</tr>");	
		}
	%>
</table>
</body>
</html>