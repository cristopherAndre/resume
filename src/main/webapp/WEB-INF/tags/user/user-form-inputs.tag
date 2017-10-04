<%@ tag language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<fmt:message key="user.nickname" var="nickNameLabel" />
<fmt:message key="user.email" var="emailLabel" />
<fmt:message key="user.password" var="passwordLabel" />


<div class="form-group">
	<label for="nickName" class="col-sm-2 control-label">${nickNameLabel }</label>
	<div class="col-sm-10">
		<form:input path="nickName" type="text" class="form-control" id="nickName" placeholder="${nickNameLabel }"/>
		<form:errors path="nickName" />
	</div>
</div>
<div class="form-group">
	<label for="mail" class="col-sm-2 control-label">${emailLabel }</label>
	<div class="col-sm-10">
		<form:input path="mail" type="text" class="form-control" id="mail" placeholder="${emailLabel }"/>
		<form:errors path="mail" />
	</div>
</div>
<div class="form-group">
	<label for="password" class="col-sm-2 control-label">${passwordLabel }</label>
	<div class="col-sm-10">
		<form:input path="password" type="password" class="form-control" id="password" placeholder="${passwordLabel }"/>
		<form:errors path="password" />
	</div>
</div>
<!-- 
<div class="form-group">
	<label for="skills" class="col-sm-2 control-label">Skills</label>
	<div class="col-sm-10">		
		<form:select path="skills" items="${skillList}" itemValue="id" itemLabel="name" multiple="true"/>
		<form:errors path="skills"/>
	</div>
</div>
 -->