<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%>

<!-- bootstrap -->
<link rel="stylesheet" href="<c:url value='/resources/css/bootstrap.min.css'/>">
<link rel="stylesheet" href="<c:url value='/resources/css/bootstrap-theme.min.css'/>">

<script src="<c:url value='/resources/js/jquery-3.2.1.min.js'/>"></script>
<script src="<c:url value='/resources/js/bootstrap.min.js'/>"></script>

<nav class="navbar navbar-default">
	<div class="container-fluid">
		<div class="navbar-header">	
			<a class="navbar-brand" href="${s:mvcUrl('HC#index').build() }">My Resume</a>
		</div>
		<div class="navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">        
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Users <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="${s:mvcUrl('UC#showUsers').build() }">Listar</a></li>
						<li><a href="#">Criar</a></li>
					</ul>
				</li>
			</ul>
			<ul class="nav navbar-nav">        
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Roles <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="${s:mvcUrl('RC#showRoles').build() }">Listar</a></li>
						<li><a href="${s:mvcUrl('RC#formAdd').build() }">Criar</a></li>
					</ul>
				</li>
			</ul>
		</div>

	</div>
</nav>