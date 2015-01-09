<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta name="decorator" content="templateLogin" />
<div class="container">
    <form method="POST"
                action="${pageContext.request.contextPath}/j_spring_security_check"
                id="sky-form"
                class="form-signin" role="form">
        <h1 class="form-signin-heading">Bienvenido</h1> 
        <c:if test="${not empty error}">
            <div class="errorblock">
                Your login attempt was not successful, try again.<br /> Caused :
                ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
            </div>
        </c:if>
        <label for="inputEmail" class="sr-only">Correo electronico</label> 
        <input type="email" id="j_username" class="form-control" name="j_username"
            placeholder="Correo electr&oacute;nico" required autofocus /> 
        <label for="inputPassword" class="sr-only">Contrasena</label> 
        <input type="password" id="j_password" class="form-control" name="j_password"
            placeholder="Contrase&ntilde;a" required />
        <button class="btn btn-lg btn-primary btn-block" type="submit">Iniciar sesi&oacute;n</button>
    </form>
</div>