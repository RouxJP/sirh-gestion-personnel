<%@page import="dev.sgp.entite.Collaborateur"%>
<%@page import="java.util.List"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="<%=request.getContextPath()%>/bootstrap-4.4.1-dist/css/bootstrap.css">
</head>
<body>
	<h1>Les collaborateurs</h1>
	<ul>
		<%	List<Collaborateur> listeNoms = (List<Collaborateur>) request.getAttribute("listeNoms");
			for (Collaborateur collaborateur : listeNoms) {
		%>
		<li><%=collaborateur.getNom()%></li>
		<li><%=collaborateur.getPrenom()%></li>
		<li><%=collaborateur.getNumSecuSocial()%></li>
		<%
			}
		%>
	</ul>
	
	}
</body>
</html>
