<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@ attribute name="pageTitle" required="true" %>
<%@ attribute name="extraScripts" fragment="true"%>

<fmt:message key="general.app.name" var="generalAppNameLabel" />

<!DOCTYPE html>
<html>
   <head>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width,initial-scale=1">
      <meta name="description" content="A fully featured admin theme which can be used to build CRM, CMS, etc.">
      <meta name="author" content="Coderthemes">
      <link rel="shortcut icon" href="/resume/assets/images/favicon_1.ico">
      <title>${generalAppNameLabel } - ${pageTitle }</title>
      <link href="/resume/plugins/switchery/switchery.min.css" rel="stylesheet" />
      <link rel="stylesheet" href="/resume/plugins/morris/morris.css">
      <link href="/resume/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">
      <link href="/resume/assets/css/icons.css" rel="stylesheet" type="text/css">
      <link href="/resume/assets/css/style.css" rel="stylesheet" type="text/css">
      <script src="/resume/assets/js/modernizr.min.js"></script>
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