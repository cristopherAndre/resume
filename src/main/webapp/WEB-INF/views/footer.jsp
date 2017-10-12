<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<c:set var="appContext">${pageContext.request.contextPath}</c:set>

<fmt:message key="general.app.name" var="generalAppNameLabel" />
<fmt:message key="general.app.year" var="generalAppYearLabel" />

<footer class="footer text-right">
   ${generalAppYearLabel } © ${generalAppNameLabel }.
</footer>
<script>
   var resizefunc = [];
</script>
<!-- Plugins  -->
<script src="${appContext }/assets/js/jquery.min.js"></script>
<script src="${appContext }/assets/js/popper.min.js"></script><!-- Popper for Bootstrap -->
<script src="${appContext }/assets/js/bootstrap.min.js"></script>
<script src="${appContext }/assets/js/detect.js"></script>
<script src="${appContext }/assets/js/fastclick.js"></script>
<script src="${appContext }/assets/js/jquery.slimscroll.js"></script>
<script src="${appContext }/assets/js/jquery.blockUI.js"></script>
<script src="${appContext }/assets/js/waves.js"></script>
<script src="${appContext }/assets/js/wow.min.js"></script>
<script src="${appContext }/assets/js/jquery.nicescroll.js"></script>
<script src="${appContext }/assets/js/jquery.scrollTo.min.js"></script>
<script src="${appContext }/plugins/switchery/switchery.min.js"></script>
<!-- Counter Up  -->
<script src="${appContext }/plugins/waypoints/lib/jquery.waypoints.min.js"></script>
<script src="${appContext }/plugins/counterup/jquery.counterup.min.js"></script>
<!--Morris Chart-->
<script src="${appContext }/plugins/morris/morris.min.js"></script>
<script src="${appContext }/plugins/raphael/raphael-min.js"></script>
<!-- Page js  -->
<script src="${appContext }/assets/pages/jquery.dashboard.js"></script>
<!-- Custom main Js -->
<script src="${appContext }/assets/js/jquery.core.js"></script>
<script src="${appContext }/assets/js/jquery.app.js"></script>
<script type="text/javascript">
   jQuery(document).ready(function($) {
       $('.counter').counterUp({
           delay: 100,
           time: 1200
       });
   });
</script>