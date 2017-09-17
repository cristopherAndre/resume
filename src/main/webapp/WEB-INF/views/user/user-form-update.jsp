<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>
<%@ taglib tagdir="/WEB-INF/tags/user" prefix="user" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%>

<fmt:message key="user.page.user-form-update.title" var="titleLabel" />
<fmt:message key="user.page.user-form-update.not.found" var="notFoundLabel" />
<fmt:message key="button.save" var="saveLabel" />

<tags:pageTemplate pageTitle="${titleLabel }">
	<jsp:body>
		<div class="container-fluid">
			<div class="row" align="center">
				<div class="col-md-12">
					<h2>${titleLabel }</h2>
					<c:choose>
						<c:when test="${not empty user }">
							<form:form class="form-horizontal" action="${s:mvcUrl('UC#update').arg(0,user.id).build() }" method="POST" commandName="user">
								<user:user-form-inputs/>
								<div class="form-group">
									<div class="col-sm-offset-2 col-sm-10">
										<button type="submit" class="btn btn-primary">${saveLabel }</button>
									</div>
								</div>
							</form:form>
						</c:when>
						<c:otherwise>
							<h2>${notFoundLabel }</h2>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
		</div>
	</jsp:body>
</tags:pageTemplate>