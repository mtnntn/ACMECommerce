<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ADMIN Home</title>
</head>
<body>
	<f:view>
		<h1>Benvenuto operatore: ${adminController.admin.email}</h1>

		<h2>COSA VUOI FARE:</h2>
		
		<div>
		    <a href='<c:url value="/faces/newProduct.jsp" />'> Inserisci un nuovo prodotto! </a>
		</div>
		
		<div>
			<p> gestisci ordini clienti (DA IMPLEMENTARE) </p>
		</div>
		
		<div>
			<a href='<c:url value="/faces/home.jsp" />'> torna alla home! </a>
		</div>

	</f:view>
</body>
</html>