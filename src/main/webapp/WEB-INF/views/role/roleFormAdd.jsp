<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%>

<fmt:message key="role.page.roleFormAdd.title" var="titleLabel" />
<fmt:message key="role.code" var="codeLabel" />
<fmt:message key="role.description" var="descriptionLabel" />
<fmt:message key="button.save" var="saveLabel" />

<tags:pageTemplate pageTitle="${titleLabel }">
	<jsp:body>
		<div class="container-fluid">
			<div class="row" align="center">
				<div class="col-md-12">
					<h2>${titleLabel }</h2>
					<form:form class="form-horizontal" action="${s:mvcUrl('RC#save').build() }" method="POST" commandName="role">
						<div class="form-group">
							<label for="code" class="col-sm-2 control-label">${codeLabel }</label>
							<div class="col-sm-10">
								<form:input path="code" type="text" class="form-control" id="code" placeholder="${codeLabel }"/>
							</div>
						</div>
						<div class="form-group">
							<label for="description" class="col-sm-2 control-label">${descriptionLabel }</label>
							<div class="col-sm-10">
								<form:input path="description" type="text" class="form-control" id="description" placeholder="${descriptionLabel }"/>
							</div>
						</div>
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