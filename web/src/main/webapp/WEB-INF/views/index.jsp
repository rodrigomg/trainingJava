<meta name="decorator" content="templateLogin" />
<div class="container">
	<form method="POST"
                action="${pageContext.request.contextPath}/j_spring_security_check"
                id="sky-form"
                class="form-signin" role="form">
		<h1 class="form-signin-heading">Bienvenido</h1>
		            
            <div th:if="${param.error}" class="alert alert-error">    
                    Invalid username and password.
                </div>
                <div th:if="${param.logout}" class="alert alert-success"> 
                    You have been logged out.
                </div>
            
		<label for="inputEmail" class="sr-only">Correo electronico</label> <input
			type="email" id="inputEmail" class="form-control"
			placeholder="Correo electr&oacute;nico" required autofocus> <label
			for="inputPassword" class="sr-only">Contrasena</label> <input
			type="password" id="inputPassword" class="form-control"
			placeholder="Contrase&ntilde;a" required>
		<div class="checkbox">
			<label> <input type="checkbox" value="remember-me">
				Recordar mis datos
			</label>
		</div>
		<button class="btn btn-lg btn-primary btn-block" type="submit">Iniciar sesi&oacute;n</button>
	</form>
</div>