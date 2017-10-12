<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%>

<fmt:message key="general.app.name" var="generalAppNameLabel" />
<fmt:message key="home.page.title" var="titleLabel" />
<fmt:message key="home.page.path.dashboard" var="pathDashboardLabel" />

<tags:pageTemplate pageTitle="${titleLabel }">
   <jsp:body>
      <div class="content-page">
         <div class="content">
            <div class="container-fluid">
               <tags:thumbnail pagePath="${pathDashboardLabel }" thumbnailTitle="${titleLabel }"/>
               <div class="card m-b-20 card-body text-xs-center">
                  <h5 class="card-title">Welcome!</h5>
                  <p class="card-text">This web application is under construction.</p>
                  <p class="card-text">
                     <small class="text-muted">Be patient soon we are coming.</small>
                  </p>
               </div>
            </div>
         </div>
      </div>
   </jsp:body>
</tags:pageTemplate>