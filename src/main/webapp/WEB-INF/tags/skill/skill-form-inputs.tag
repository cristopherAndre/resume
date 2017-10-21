<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<fmt:message key="skill.page.name" var="nameLabel" />
<fmt:message key="skill.page.percentage" var="percentageLabel" />

<div class="row">
    <div class="col-md-12">
        <div class="form-group">
            <label for="name" class="control-label">${nameLabel }</label>
            <form:input path="name" type="text" class="form-control" id="name" placeholder="${nameLabel }"/>
      		<form:errors path="name" />
        </div>
    </div>
</div>

<div class="row">
    <div class="col-md-12">
        <div class="form-group">
            <label for="percentage" class="control-label">${percentageLabel }</label>
            <form:input path="percentage" type="text" class="form-control" id="name" placeholder="${percentageLabel }"/>
      		<form:errors path="percentage" />
        </div>
    </div>
</div>

