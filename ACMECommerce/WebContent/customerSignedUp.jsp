<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>ACMECommerce</title>
</head>
<body>
	<f:view>
		<h1>Benvenuto in ACMECommerce,
			${customerController.customer.firstname}</h1>

		<h2>Dettagli della registrazione:</h2>
		<div>Nome: ${customerController.customer.firstname}</div>
		<div>Cognome: ${customerController.customer.lastname}</div>
		<div>Data Nascita: ${customerController.customer.birthday}</div>
		<div>Email: ${customerController.customer.email}</div>
		<div>Indirizzo: ${customerController.customer.address}</div>

		<div>
			<a href='<c:url value="/faces/home.jsp" />'> torna alla home! </a>
		</div>

	</f:view>
</body>
</html>