<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<!DOCTYPE html>
<html lang="en">

<head>
<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap.css"
	rel="stylesheet" type="text/css">
<link
  href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"
  rel="stylesheet" type="text/css">
<link
  href="${pageContext.request.contextPath}/resources/css/signin.css"
  rel="stylesheet" type="text/css">
<script
	src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>

<title>Training Java</title>
<decorator:head />
<style>
.errorblock {
  color: #ff0000;
  background-color: #ffEEEE;
  border: 3px solid #ff0000;
  padding: 8px;
  margin: 16px;
}
</style>
</head>

<body>

  <decorator:body />
</body>
</html>