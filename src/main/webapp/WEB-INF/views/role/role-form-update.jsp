<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>
<%@ taglib tagdir="/WEB-INF/tags/role" prefix="role" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%>

<fmt:message key="role.page.role-form-update.title" var="titleLabel" />
<fmt:message key="button.save" var="saveLabel" />

<tags:pageTemplate pageTitle="${titleLabel }">
	<jsp:body>
		<div class="container-fluid">
			<div class="row" align="center">
				<div class="col-md-12">
					<h2>${titleLabel }</h2>
					<form:form class="form-horizontal" action="${s:mvcUrl('RC#update').arg(0,role.code).build() } }" method="POST" commandName="role">
						<role:role-form-inputs/>
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<button type="submit" class="btn btn-primary">${saveLabel }</button>
							</div>
						</div>
					</form:form>
				</div>
			</div>
		</div>
	</jsp:body>
</tags:pageTemplate>