<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@ attribute name="pageTitle" required="true" %>
<%@ attribute name="extraScripts" fragment="true"%>

<c:set var="appContext">${pageContext.request.contextPath}</c:set>

<fmt:message key="general.app.name" var="generalAppNameLabel" />

<!DOCTYPE html>
<html>
   <head>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width,initial-scale=1">
      <meta name="description" content="A fully featured admin theme which can be used to build CRM, CMS, etc.">
      <meta name="author" content="Coderthemes">
      <link rel="shortcut icon" href="${appContext }/dist/images/favicon_1.ico">
      <title>${generalAppNameLabel } - ${pageTitle }</title>
      
      <link href="${appContext }/dist/css/bootstrap.min.css" rel="stylesheet" type="text/css">
      <link href="${appContext }/dist/css/icons.min.css" rel="stylesheet" type="text/css">
      <link href="${appContext }/dist/css/style.min.css" rel="stylesheet" type="text/css">
      
   </head>
   <body class="fixed-left">
      <div id="wrapper">
         <%@include file="/WEB-INF/views/header.jsp" %>
         <jsp:doBody/>
         <%@include file="/WEB-INF/views/footer.jsp" %>
         <jsp:invoke fragment="extraScripts"/>
      </div>
   </body>
</html>