<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>
<%@ taglib tagdir="/WEB-INF/tags/user" prefix="user" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%>

<fmt:message key="user.page.user-form-update.title" var="titleLabel" />
<fmt:message key="user.page.user-form-update.not.found" var="notFoundLabel" />
<fmt:message key="button.save" var="saveLabel" />
<fmt:message key="user.users" var="usersLabel" />
<fmt:message key="user.edit" var="userEditLabel" />

<tags:pageTemplate pageTitle="${titleLabel }">
   <jsp:body>
      <div class="content-page">
         <div class="content">
            <div class="container-fluid">
			   <tags:breadcrumb pagePath="${titleLabel }" breadcrumbTitle="${usersLabel }"/>
               <div class="col-md-12">
                  <div class="card-box">
                     <c:choose>
                        <c:when test="${not empty user }">
                           <h4 class="m-t-0 m-b-30 header-title">${userEditLabel }</h4>
                           <form:form class="form-horizontal" role="form" action="${s:mvcUrl('UC#update').arg(0,user.id).build() }" method="POST" commandName="user">
                              <user:user-form-inputs/>
                              <div class="form-group m-b-0 row">
                                 <div class="offset-3 col-9">
                                    <button type="submit" class="btn btn-primary waves-effect waves-light">${saveLabel }</button>
                                 </div>
                              </div>
                           </form:form>
                        </c:when>
                        <c:otherwise>
                           <div class="alert alert-warning">
                              ${notFoundLabel } <a href="${s:mvcUrl('UC#formAdd').build() }" class="alert-link">Criar Usuário</a>
                           </div>
                        </c:otherwise>
                     </c:choose>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </jsp:body>
</tags:pageTemplate>