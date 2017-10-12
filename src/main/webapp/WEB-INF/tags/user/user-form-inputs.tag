<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<fmt:message key="user.nickname" var="nickNameLabel" />
<fmt:message key="user.email" var="emailLabel" />
<fmt:message key="user.password" var="passwordLabel" />

<div class="form-group row">
   <label for="nickName" class="col-2 col-form-label">${nickNameLabel }</label>
   <div class="col-10">
      <form:input path="nickName" type="text" class="form-control" id="nickName" placeholder="${nickNameLabel }"/>
      <form:errors path="nickName" />
   </div>
</div>
<div class="form-group row">
   <label for="mail" class="col-2 col-form-label">${emailLabel }</label>
   <div class="col-10">
      <form:input path="mail" type="email" class="form-control" id="mail" placeholder="${emailLabel }"/>
      <form:errors path="mail" />
   </div>
</div>
<div class="form-group row">
   <label for="password" class="col-2 col-form-label">${passwordLabel }</label>
   <div class="col-10">
      <form:input path="password" type="password" class="form-control" id="password" placeholder="${passwordLabel }"/>
      <form:errors path="password" />
   </div>
</div>