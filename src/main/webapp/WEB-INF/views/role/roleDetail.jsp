<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%>

<fmt:message key="role.page.roleDetail.title" var="titleLabel" />
<fmt:message key="role.page.roleDetail.not.found" var="notFoundLabel" />
<fmt:message key="role.code" var="codeLabel" />
<fmt:message key="role.description" var="descriptionLabel" />

<tags:pageTemplate pageTitle="${titleLabel }">
	<jsp:body>
	
		<div class="container-fluid">
			<div class="row" align="center">
				<div class="col-md-12">
					<h2>${titleLabel }</h2>
					<c:choose>
						<c:when test="${not empty role }">
							<table class="table table-striped">
								<thead>
									<tr>
										<th>${codeLabel }</th>
										<th>${descriptionLabel }</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>${role.code }</td>
										<td>${role.description }</td>
									</tr>
								</tbody>
							</table>
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