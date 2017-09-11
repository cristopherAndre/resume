<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%>

<fmt:message key="home.page.title" var="titleLabel" />

<tags:pageTemplate pageTitle="${titleLabel }">
	<jsp:body>
	
		<div class="container-fluid">
			<div class="row" align="center">
				<div class="col-md-12">
					<h2>${titleLabel }</h2>
				</div>
			</div>
		</div>
	
	</jsp:body>		
</tags:pageTemplate>