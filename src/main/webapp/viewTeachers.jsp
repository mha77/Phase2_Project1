<%@page import="com.simplilearn.entity.Teacher"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Session"%>
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

<h1>The Following Teachers are listed</h1>
<%
	SessionFactory sf  = HibernateUtil.buildSessionFactory();
	Session hibernateSession = sf.openSession();
	List<Teacher> teachers = hibernateSession.createQuery("from Teacher").list();
%>
<table>
<tr>
<th>First Name </th>
<th>Last Name </th>
</tr>
	<%		
		for(Teacher teacher : teachers){
			out.print("<tr>");	
			out.print("<td>" + teacher.getName() + "</td>");
			out.print("<td>" + teacher.getLname() + "</td>");
			out.print("</tr>");	
		}
	%>
</table>

<a href="index.html">Back to Menu</a><br>
<a href="HTML/addTeacher.html">Add Teacher</a><br>

</body>
</html>