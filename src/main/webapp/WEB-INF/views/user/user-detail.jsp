<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%>

<c:set var="appContext">${pageContext.request.contextPath}</c:set>

<fmt:message key="user.page.user-detail.title" var="titleLabel" />
<fmt:message key="user.page.user-detail.not.found" var="notFoundLabel" />
<fmt:message key="user.nickname" var="nicknameLabel" />
<fmt:message key="user.email" var="emailLabel" />
<fmt:message key="user.password" var="passwordLabel" />
<fmt:message key="user.users" var="usersLabel" />

<tags:pageTemplate pageTitle="${titleLabel }">
   <jsp:body>
      <div class="content-page">
         <div class="content">
            <div class="container-fluid">
               <tags:breadcrumb pagePath="${titleLabel }" breadcrumbTitle="${usersLabel }"/>
               <div class="col-lg-12">
                  <c:choose>
                     <c:when test="${not empty user }">
                        <div class="card-box">
                           <div class="text-center card-box">
                              <div class="member-card">
                                 <div class="thumb-xl member-thumb m-b-10 center-block">
                                    <img src="${appContext }/dist/images/users/avatar-1.jpg" class="rounded-circle img-thumbnail" alt="profile-image">
                                 </div>
                                 <div class="">
                                    <h5 class="m-b-5">${user.nickName }</h5>
                                    <p class="text-muted">@webdesigner</p>
                                 </div>
                                 <button type="button" class="btn btn-success btn-sm w-sm waves-effect m-t-10 waves-light">Follow</button>
                                 <button type="button" class="btn btn-danger btn-sm w-sm waves-effect m-t-10 waves-light">Message</button>
                                 <div class="text-left m-t-40">
                                    <p class="text-muted font-13"><strong>${nicknameLabel } :</strong> <span class="m-l-15">${user.nickName }</span></p>
                                    <p class="text-muted font-13"><strong>Mobile :</strong><span class="m-l-15">(123) 123 1234</span></p>
                                    <p class="text-muted font-13"><strong>${emailLabel } :</strong> <span class="m-l-15">${user.mail }</span></p>
                                    <p class="text-muted font-13"><strong>Location :</strong> <span class="m-l-15">USA</span></p>
                                 </div>
                                 <ul class="social-links list-inline m-t-30">
                                    <li class="list-inline-item">
                                       <a title="" data-placement="top" data-toggle="tooltip" class="tooltips" href="#" data-original-title="Facebook"><i class="fa fa-facebook"></i></a>
                                    </li>
                                    <li class="list-inline-item">
                                       <a title="" data-placement="top" data-toggle="tooltip" class="tooltips" href="#" data-original-title="Twitter"><i class="fa fa-twitter"></i></a>
                                    </li>
                                    <li class="list-inline-item">
                                       <a title="" data-placement="top" data-toggle="tooltip" class="tooltips" href="#" data-original-title="Skype"><i class="fa fa-skype"></i></a>
                                    </li>
                                 </ul>
                              </div>
                           </div>
                        </div>
                     </c:when>
                     <c:otherwise>
                        <div class="alert alert-danger">
                           ${notFoundLabel }
                        </div>
                     </c:otherwise>
                  </c:choose>
               </div>
            </div>
         </div>
      </div>
   </jsp:body>
</tags:pageTemplate>