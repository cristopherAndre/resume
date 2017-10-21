<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<fmt:message key="user.nickname" var="nickNameLabel" />
<fmt:message key="user.email" var="emailLabel" />
<fmt:message key="user.password" var="passwordLabel" />
<fmt:message key="user.firstName" var="firstNameLabel" />
<fmt:message key="user.lastName" var="lastNameLabel" />
<fmt:message key="user.title" var="titleLabel" />
<fmt:message key="user.description" var="descriptionLabel" />
<fmt:message key="user.aboutMe" var="aboutMeLabel" />

<div class="form-group row">
   <label for="nickName" class="col-2 col-form-label">${nickNameLabel }</label>
   <div class="col-10">
      <form:input path="nickName" type="text" class="form-control" id="nickName" placeholder="${nickNameLabel }"/>
      <form:errors path="nickName" />
   </div>
</div>
<div class="form-group row">
   <label for="nickName" class="col-2 col-form-label">${firstNameLabel }</label>
   <div class="col-10">
      <form:input path="firstName" type="text" class="form-control" id="firstName" placeholder="${firstNameLabel }"/>
      <form:errors path="firstName" />
   </div>
</div>
<div class="form-group row">
   <label for="lastName" class="col-2 col-form-label">${lastNameLabel }</label>
   <div class="col-10">
      <form:input path="lastName" type="text" class="form-control" id="lastName" placeholder="${lastNameLabel }"/>
      <form:errors path="lastName" />
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
<div class="form-group row">
   <label for="title" class="col-2 col-form-label">${titleLabel }</label>
   <div class="col-10">
      <form:input path="title" type="text" class="form-control" id="title" placeholder="${titleLabel }"/>
      <form:errors path="title" />
   </div>
</div>
<div class="form-group row">
   <label for="description" class="col-2 col-form-label">${descriptionLabel }</label>
   <div class="col-10">
      <form:textarea path="description" type="text" class="form-control" rows="3" id="description" placeholder="${descriptionLabel }"/>
      <form:errors path="description" />
   </div>
</div>
<div class="form-group row">
   <label for="aboutMe" class="col-2 col-form-label">${aboutMeLabel }</label>
   <div class="col-10">
      <form:textarea path="aboutMe" type="text" class="form-control" rows="3" id="aboutMe" placeholder="${aboutMeLabel }"/>
      <form:errors path="aboutMe" />
   </div>
</div>
