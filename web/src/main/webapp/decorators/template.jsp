<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!--  <meta charset="UTF-8">-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap.css" media="screen"
	rel="stylesheet" type="text/css">
<link
	href="${pageContext.request.contextPath}/resources/css/bootswatch.less"
	rel="stylesheet" type="text/css">

<script
	src="${pageContext.request.contextPath}/resources/js/jquery-1.10.2.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	
    <script>

     var _gaq = _gaq || [];
      _gaq.push(['_setAccount', 'UA-23019901-1']);
      _gaq.push(['_setDomainName', "bootswatch.com"]);
        _gaq.push(['_setAllowLinker', true]);
      _gaq.push(['_trackPageview']);

     (function() {
       var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
       ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
       var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
     })();

    </script>
    
<title>trainingJava</title>

<decorator:head />
</head>
<body>
 
      
      
    <div class="navbar navbar-default navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <a href="${pageContext.request.contextPath}/" class="navbar-brand">TrainingJava</a>
          <button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#navbar-main">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
        </div>
        <div class="navbar-collapse collapse" id="navbar-main">
          <ul class="nav navbar-nav">
            <li class="dropdown">
              <a class="dropdown-toggle" data-toggle="dropdown" href="#" id="usuario">Usuario <span class="caret"></span></a>
              <ul class="dropdown-menu" aria-labelledby="usuario">
                <li><a href="../default/">Default</a></li>
                <li class="divider"></li>
                <li><a href="${pageContext.request.contextPath}/alta/inicio">Alta</a></li>
            	<li><a href="${pageContext.request.contextPath}/baja/inicio">Baja</a></li>
            	<li><a href="${pageContext.request.contextPath}/cambio/inicio">Cambio</a></li>
            	<li><a href="${pageContext.request.contextPath}/consulta/inicio">Consulta</a></li>
              </ul>
            </li>
            <li>
              <a href="../help/">Ayuda</a>
            </li>
            <li>
              <a href="${pageContext.request.contextPath}/contacto/inicio">Contacto</a>
            </li>
          </ul>

          <ul class="nav navbar-nav navbar-right">
            <li></li>
            <li><a href="https://wrapbootstrap.com/?ref=bsw" target="_blank">WrapBootstrap</a></li>
          </ul>

        </div>
      </div>
    </div>


    <div class="container">

      <div class="page-header" id="banner">
        <div class="row">
          <div class="col-lg-8 col-md-7 col-sm-6">
            <h1>Simplex</h1>
            <p class="lead">Mini and minimalist</p>
          </div>
          <div class="col-lg-4 col-md-5 col-sm-6">
            <div class="sponsor">
              <a href="http://www.shopify.com/?ref=bootswatch" target="_blank" onclick="_gaq.push(['_trackEvent', 'banner', 'click', 'shopify']);"><img src="../assets/img/shopify.png" alt="Shopify" onload="_gaq.push(['_trackEvent', 'banner', 'impression', 'shopify']);"></a>
            </div>
          </div>
        </div>
      </div>
      
      
            <!-- Buttons
      ================================================== -->
      <div class="bs-docs-section">
        <div class="page-header">
          <div class="row">
            <div class="col-lg-12">
              <h1 id="buttons">Buttons</h1>
            </div>
          </div>
        </div>

        <div class="row">
          <div class="col-lg-6">

            <p class="bs-component">
              <a href="#" class="btn btn-default">Default</a>
              <a href="#" class="btn btn-primary">Primary</a>
              <a href="#" class="btn btn-success">Success</a>
              <a href="#" class="btn btn-info">Info</a>
              <a href="#" class="btn btn-warning">Warning</a>
              <a href="#" class="btn btn-danger">Danger</a>
              <a href="#" class="btn btn-link">Link</a>
            </p>

            <p class="bs-component">
              <a href="#" class="btn btn-default disabled">Default</a>
              <a href="#" class="btn btn-primary disabled">Primary</a>
              <a href="#" class="btn btn-success disabled">Success</a>
              <a href="#" class="btn btn-info disabled">Info</a>
              <a href="#" class="btn btn-warning disabled">Warning</a>
              <a href="#" class="btn btn-danger disabled">Danger</a>
              <a href="#" class="btn btn-link disabled">Link</a>
            </p>


            <div style="margin-bottom: 15px;">
              <div class="btn-toolbar bs-component" style="margin: 0;">
                <div class="btn-group">
                  <a href="#" class="btn btn-default">Default</a>
                  <a href="#" class="btn btn-default dropdown-toggle" data-toggle="dropdown"><span class="caret"></span></a>
                  <ul class="dropdown-menu">
                    <li><a href="#">Action</a></li>
                    <li><a href="#">Another action</a></li>
                    <li><a href="#">Something else here</a></li>
                    <li class="divider"></li>
                    <li><a href="#">Separated link</a></li>
                  </ul>
                </div>

                <div class="btn-group">
                  <a href="#" class="btn btn-primary">Primary</a>
                  <a href="#" class="btn btn-primary dropdown-toggle" data-toggle="dropdown"><span class="caret"></span></a>
                  <ul class="dropdown-menu">
                    <li><a href="#">Action</a></li>
                    <li><a href="#">Another action</a></li>
                    <li><a href="#">Something else here</a></li>
                    <li class="divider"></li>
                    <li><a href="#">Separated link</a></li>
                  </ul>
                </div>

                <div class="btn-group">
                  <a href="#" class="btn btn-success">Success</a>
                  <a href="#" class="btn btn-success dropdown-toggle" data-toggle="dropdown"><span class="caret"></span></a>
                  <ul class="dropdown-menu">
                    <li><a href="#">Action</a></li>
                    <li><a href="#">Another action</a></li>
                    <li><a href="#">Something else here</a></li>
                    <li class="divider"></li>
                    <li><a href="#">Separated link</a></li>
                  </ul>
                </div>

                <div class="btn-group">
                  <a href="#" class="btn btn-info">Info</a>
                  <a href="#" class="btn btn-info dropdown-toggle" data-toggle="dropdown"><span class="caret"></span></a>
                  <ul class="dropdown-menu">
                    <li><a href="#">Action</a></li>
                    <li><a href="#">Another action</a></li>
                    <li><a href="#">Something else here</a></li>
                    <li class="divider"></li>
                    <li><a href="#">Separated link</a></li>
                  </ul>
                </div>

                <div class="btn-group">
                  <a href="#" class="btn btn-warning">Warning</a>
                  <a href="#" class="btn btn-warning dropdown-toggle" data-toggle="dropdown"><span class="caret"></span></a>
                  <ul class="dropdown-menu">
                    <li><a href="#">Action</a></li>
                    <li><a href="#">Another action</a></li>
                    <li><a href="#">Something else here</a></li>
                    <li class="divider"></li>
                    <li><a href="#">Separated link</a></li>
                  </ul>
                </div>
              </div>
            </div>

            <p class="bs-component">
              <a href="#" class="btn btn-primary btn-lg">Large button</a>
              <a href="#" class="btn btn-primary">Default button</a>
              <a href="#" class="btn btn-primary btn-sm">Small button</a>
              <a href="#" class="btn btn-primary btn-xs">Mini button</a>
            </p>

          </div>
          <div class="col-lg-6">

            <p class="bs-component">
              <a href="#" class="btn btn-default btn-lg btn-block">Block level button</a>
            </p>


            <div class="bs-component" style="margin-bottom: 15px;">
              <div class="btn-group btn-group-justified">
                <a href="#" class="btn btn-default">Left</a>
                <a href="#" class="btn btn-default">Middle</a>
                <a href="#" class="btn btn-default">Right</a>
              </div>
            </div>

            <div class="bs-component" style="margin-bottom: 15px;">
              <div class="btn-toolbar">
                <div class="btn-group">
                  <a href="#" class="btn btn-default">1</a>
                  <a href="#" class="btn btn-default">2</a>
                  <a href="#" class="btn btn-default">3</a>
                  <a href="#" class="btn btn-default">4</a>
                </div>

                <div class="btn-group">
                  <a href="#" class="btn btn-default">5</a>
                  <a href="#" class="btn btn-default">6</a>
                  <a href="#" class="btn btn-default">7</a>
                </div>

                <div class="btn-group">
                  <a href="#" class="btn btn-default">8</a>
                  <div class="btn-group">
                    <a href="#" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                      Dropdown
                      <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu">
                      <li><a href="#">Dropdown link</a></li>
                      <li><a href="#">Dropdown link</a></li>
                      <li><a href="#">Dropdown link</a></li>
                     </ul>
                  </div>
                </div>
              </div>
            </div>

            <div class="bs-component">
              <div class="btn-group-vertical">
                  <a href="#" class="btn btn-default">Button</a>
                  <a href="#" class="btn btn-default">Button</a>
                  <a href="#" class="btn btn-default">Button</a>
                  <a href="#" class="btn btn-default">Button</a>
              </div>
            </div>

          </div>
        </div>
      </div>
      
      
      </div>
  <decorator:body />

<footer class="text-center">
</footer>
  
</body>
</html>