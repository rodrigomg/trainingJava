<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="true" %>
<meta name="decorator" content="templateLogin" />
<div class="container">
    <form method="POST"
                action="${pageContext.request.contextPath}/j_spring_security_check"
                id="sky-form"
                class="form-signin" role="form">
        <h1 class="form-signin-heading">Bienvenido</h1> 
        <c:if test="${not empty error}">
            <div class="errorblock">
            <jsp:forward page="loginfailed.jsp"></jsp:forward>
            </div>
        </c:if>
        <label for="inputEmail" class="sr-only">Correo electronico</label> 
        <input type="email" id="j_username" class="form-control" name="j_username" value="<c:out value="${sessionScope.LAST_USERNAME}"/>
            placeholder="Correo electr&oacute;nico" required autofocus /> 
            
        <label for="inputPassword" class="sr-only">Contrasena</label> 
        <input type="password" id="j_password" class="form-control" name="j_password"
            placeholder="Contrase&ntilde;a" required />
        <button class="btn btn-lg btn-primary btn-block" type="submit">Iniciar sesi&oacute;n</button>
    </form>
</div>