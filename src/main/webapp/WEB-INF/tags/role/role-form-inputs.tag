<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<fmt:message key="role.code" var="codeLabel" />
<fmt:message key="role.description" var="descriptionLabel" />

<div class="form-group">
	<label for="code" class="col-sm-2 control-label">${codeLabel }</label>
	<div class="col-sm-10">
		<form:input path="code" type="text" class="form-control" id="code" placeholder="${codeLabel }"/>
		<form:errors path="code" />
	</div>
</div>
<div class="form-group">
	<label for="description" class="col-sm-2 control-label">${descriptionLabel }</label>
	<div class="col-sm-10">
		<form:input path="description" type="text" class="form-control" id="description" placeholder="${descriptionLabel }"/>
		<form:errors path="description" />
	</div>
</div>