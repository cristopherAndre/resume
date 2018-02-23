<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<c:set var="appContext">${pageContext.request.contextPath}</c:set>

<fmt:message key="skill.page.name" var="nameLabel" />
<fmt:message key="skill.page.percentage" var="percentageLabel" />

<!-- <div class="row"> -->
<!--     <div class="col-md-12"> -->
<!--         <div class="form-group"> -->
<%--             <label for="name" class="control-label">${nameLabel }</label> --%>
<%--             <form:input path="name" type="text" class="form-control" id="name" placeholder="${nameLabel }"/> --%>
<%--       		<form:errors path="name" /> --%>
<!--         </div> -->
<!--     </div> -->
<!-- </div> -->

<!-- <div class="row"> -->
<!--     <div class="col-md-12"> -->
<!--         <div class="form-group"> -->
<%--             <label for="percentage" class="control-label">${percentageLabel }</label> --%>
<%--             <form:input path="percentage" type="text" class="form-control" id="name" placeholder="${percentageLabel }"/> --%>
<%--       		<form:errors path="percentage" /> --%>
<!--         </div> -->
<!--     </div> -->
<!-- </div> -->


<%-- <form:input path="skills[0].name"/> --%>
<%-- <form:input path="skills[0].percentage"/> --%>

<button id="add" type="button" class="btn btn-success btn-rounded w-md waves-effect waves-light m-b-5">Adicionar nova habilidade</button>

<%-- <c:if test="${not empty user.skills }"> --%>
	<table id="skillsTable" class="table">
		<thead>
			<tr>
<!-- 				<th>Id</th> -->
				<th>Nome</th>
				<th>Percentual</th>
				<th>Actions</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${user.skills }" var="skill" varStatus="status">
				<c:set value="${status.index}" var="index"/>
				
				<tr id="skills${index }.wrapper">
	<%-- 				<td>${skill.name }</td> --%>
	<%-- 				<td>${skill.percentage }</td> --%>
					<form:hidden path="skills[${index }].id"/>
					<form:hidden path="skills[${index }].remove"/>
					<td><form:input path="skills[${index }].name"/></td>
					<td><form:input path="skills[${index }].percentage"/></td>
					<td><button type="button" class="removeSkill" data-index="${index }" >Remover</button></td>
				</tr>								
			</c:forEach>										
		</tbody>
	</table>
<%-- </c:if> --%>

<script src="${appContext }/dist/js/jquery.min.js"></script>

<script type="text/javascript">

	$( document ).ready(function() {
		
		var index = ${fn:length(user.skills)};	
		
	    $("#add").off("click").on("click", function() {
	    	var html = '<tr id="skills' + index + '.wrapper">';                    
			html += '<input id="skills' + index + '.remove" name="skills[' + index + '].remove" type="hidden" value="0"/>';
	        html += '<td><input id="skills' + index + '.name" name="skills[' + index + '].name" type="text" value/></td>';
	        html += '<td><input id="skills' + index + '.percentage" name="skills[' + index + '].percentage" type="text" value/></td>';
 	        html += '<td><button type="button" class="removeSkill" data-index="' + index + '" >Remover</button></td>';
	        html += "</tr>";
	        $('#skillsTable tbody').append(html);            
	        index++;
	        return false;
	    });
		
	    // OLD
	    //$(".removeSkill").off("click").on("click", function() {
	    	
	    $(document).on("click", ".removeSkill", function() {
	    	var indexToRemove = $(this).data('index');
	    	$('#skills' + indexToRemove + '\\.remove').val('1');
	    	$('#skills' + indexToRemove + '\\.wrapper').hide();
	    });
	    
		
	});

</script>










