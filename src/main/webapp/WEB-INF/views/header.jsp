<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%>

<c:set var="appContext">${pageContext.request.contextPath}</c:set>

<fmt:message key="general.app.name" var="generalAppNameLabel" />
<fmt:message key="header.home" var="homeLabel" />
<fmt:message key="header.nav.main" var="navMainLabel" />
<fmt:message key="header.users" var="usersLabel" />
<fmt:message key="header.users.list" var="usersListLabel" />
<fmt:message key="header.users.create" var="usersCreateLabel" />

<!-- Top Bar Start -->
<div class="topbar">
   <!-- LOGO -->
   <div class="topbar-left">
      <div class="text-center">
         <a href="${s:mvcUrl('HC#index').build() }" class="logo"><i class="mdi mdi-radar"></i> <span>${generalAppNameLabel }</span></a>
      </div>
   </div>
   <!-- Button mobile view to collapse sidebar menu -->
   <nav class="navbar-custom">
      <ul class="list-inline float-right mb-0">
         <li class="list-inline-item notification-list hide-phone">
            <a class="nav-link waves-light waves-effect" href="#" id="btn-fullscreen">
            <i class="mdi mdi-crop-free noti-icon"></i>
            </a>
         </li>
         
         <li class="list-inline-item dropdown notification-list">
            <a class="nav-link dropdown-toggle waves-effect waves-light nav-user" data-toggle="dropdown" href="#" role="button"
               aria-haspopup="false" aria-expanded="false">
            <img src="${appContext }/dist/images/users/avatar-1.jpg" alt="user" class="rounded-circle">
            </a>
            <div class="dropdown-menu dropdown-menu-right profile-dropdown " aria-labelledby="Preview">
               <!-- item-->
               <div class="dropdown-item noti-title">
                  <h5 class="text-overflow"><small>Welcome ! John</small> </h5>
               </div>
               <!-- item-->
               <a href="#" class="dropdown-item notify-item">
               <i class="mdi mdi-logout"></i> <span>Logout</span>
               </a>
            </div>
         </li>
      </ul>
      <ul class="list-inline menu-left mb-0">
         <li class="float-left">
            <button class="button-menu-mobile open-left waves-light waves-effect">
            <i class="mdi mdi-menu"></i>
            </button>
         </li>
      </ul>
   </nav>
</div>
<!-- Top Bar End -->
<!-- ========== Left Sidebar Start ========== -->
<div class="left side-menu">
   <div class="sidebar-inner slimscrollleft">
      <!--- Divider -->
      <div id="sidebar-menu">
         <ul>
            <li class="menu-title">${navMainLabel }</li>
            <li>
               <a href="${s:mvcUrl('HC#index').build() }" class="waves-effect waves-primary"><i
                  class="ti-home"></i><span>${homeLabel }</span></a>
            </li>
            <li class="has_sub">
               <a href="javascript:void(0);" class="waves-effect waves-primary"><i class="ti-user"></i> <span>${usersLabel }</span>
               <span class="menu-arrow"></span></a>
               <ul class="list-unstyled">
                  <li><a href="${s:mvcUrl('UC#showUsers').build() }">${usersListLabel }</a></li>
                  <li><a href="${s:mvcUrl('UC#formAdd').build() }">${usersCreateLabel }</a></li>
               </ul>
            </li>
         </ul>
         <div class="clearfix"></div>
      </div>
      <div class="clearfix"></div>
   </div>
</div>
<!-- Left Sidebar End -->
