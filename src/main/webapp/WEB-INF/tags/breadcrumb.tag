<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>

<%@ attribute name="breadcrumbTitle" required="true" %>
<%@ attribute name="pagePath" required="true" %>

<fmt:message key="general.app.name" var="generalAppNameLabel" />

<div class="row">
   <div class="col-sm-12">
      <div class="page-title-box">
         <h4 class="page-title">${breadcrumbTitle }</h4>
         <ol class="breadcrumb float-right">
            <li class="breadcrumb-item"><a href="${s:mvcUrl('HC#index').build() }">${generalAppNameLabel }</a></li>
            <li class="breadcrumb-item active">${pagePath }</li>
         </ol>
         <div class="clearfix"></div>
      </div>
   </div>
</div>