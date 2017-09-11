<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name="pageTitle" required="true" %>
<%@ attribute name="extraScripts" fragment="true"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
	
	<title>${pageTitle }</title>
	
</head>

<body>

<%@include file="/WEB-INF/views/header.jsp" %>

<jsp:doBody/>


<%@include file="/WEB-INF/views/footer.jsp" %>

<jsp:invoke fragment="extraScripts"/>

</body>
</html>