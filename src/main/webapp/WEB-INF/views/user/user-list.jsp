<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%>

<fmt:message key="user.page.user-list.title" var="titleLabel" />
<fmt:message key="user.page.user-list.not.found" var="notFoundLabel" />
<fmt:message key="user.nickname" var="nicknameLabel" />
<fmt:message key="user.email" var="emailLabel" />
<fmt:message key="user.password" var="passwordLabel" />
<fmt:message key="user.users" var="usersLabel" />

<tags:pageTemplate pageTitle="${titleLabel }">
   <jsp:body>
      <div class="content-page">
         <div class="content">
            <div class="container-fluid">
               <tags:thumbnail pagePath="${titleLabel }" thumbnailTitle="${usersLabel }"/>
               <div class="col-lg-12">
                  <div class="card-box">
                     <c:choose>
                        <c:when test="${not empty users }">
                           <h4 class="m-t-0 header-title">${titleLabel }</h4>
                           <table class="table table-hover">
                              <thead>
                                 <tr>
                                    <th>${nicknameLabel }</th>
                                    <th>${emailLabel }</th>
                                    <%-- <th>${passwordLabel }</th> --%>
                                    <th>Ações</th>
                                 </tr>
                              </thead>
                              <tbody>
                                 <c:forEach items="${users }" var="user">
                                    <tr>
                                       <td scope="row"><a href="${s:mvcUrl('UC#showUserDetail').arg(0,user.id).build() }">${user.nickName }</a></td>
                                       <td>${user.mail }</td>
                                       <%-- <td>${user.password }</td> --%>
                                       <td>
                                          <a href="${s:mvcUrl('UC#load').arg(0,user.id).build() }">Editar</a>
                                          &nbsp;
                                          <a href="${s:mvcUrl('UC#remove').arg(0,user.id).build() }">Remover</a>
                                       </td>
                                    </tr>
                                 </c:forEach>
                              </tbody>
                           </table>
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