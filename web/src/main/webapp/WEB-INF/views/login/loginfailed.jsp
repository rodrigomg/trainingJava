<meta name="decorator" content="templateLogin" />
<div class="container">
      <div class="page-header">
        <h1>Error</h1>
        <br /> CAUSA :
                ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
      </div>
      
      <div align="center"><br />Nombre de usuario o contraseña no válidos<br>
      Inténtalo de nuevo&nbsp;<a href="login.jsp">da clic aquí</a>
      <br />  
      </div>  
      
</div>
