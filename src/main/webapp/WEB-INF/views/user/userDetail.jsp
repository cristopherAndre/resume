<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%>

<fmt:message key="user.page.userDetail.title" var="titleLabel" />
<fmt:message key="user.page.userDetail.not.found" var="notFoundLabel" />
<fmt:message key="user.nickname" var="nicknameLabel" />
<fmt:message key="user.email" var="emailLabel" />
<fmt:message key="user.password" var="passwordLabel" />

<tags:pageTemplate pageTitle="${titleLabel }">
	<jsp:body>
	
		<div class="container-fluid">
			<div class="row" align="center">
				<div class="col-md-12">
					<h2>${titleLabel }</h2>
					<c:choose>
						<c:when test="${not empty user }">
							<table class="table table-striped">
								<thead>
									<tr>
										<th>${nicknameLabel }</th>
										<th>${emailLabel }</th>
										<th>${passwordLabel }</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>${user.nickName }</td>
										<td>${user.mail }</td>
										<td>${user.password }</td>
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