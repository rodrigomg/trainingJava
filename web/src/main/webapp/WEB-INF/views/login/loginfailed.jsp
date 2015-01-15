<meta name="decorator" content="templateLogin" />
<link
	href="${pageContext.request.contextPath}/resources/css/loginstyle.css"
	rel="stylesheet" type="text/css">
<div class="container">
      <div class="errorblock">
        <h1>Error</h1>
        <br /> CAUSA ---${userName}---:
                ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
      </div>
      
      <div align="center"><br />Nombre de usuario o contraseña no válidos<br>
      Inténtalo de nuevo&nbsp;<a href="${pageContext.request.contextPath}/login/login">da clic aquí</a>
      <br />  
      </div>  
      
</div>
