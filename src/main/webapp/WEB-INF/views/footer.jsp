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

<script src="${appContext }/dist/js/jquery.min.js"></script>
<script src="${appContext }/dist/js/popper.min.js"></script><!-- Popper for Bootstrap -->
<script src="${appContext }/dist/js/bootstrap.min.js"></script>
<script src="${appContext }/dist/js/detect.js"></script>
<script src="${appContext }/dist/js/fastclick.js"></script>
<script src="${appContext }/dist/js/jquery.slimscroll.js"></script>
<script src="${appContext }/dist/js/wow.min.js"></script>
<script src="${appContext }/dist/js/jquery.core.js"></script>
<script src="${appContext }/dist/js/jquery.app.js"></script>
<script src="${appContext }/plugins/counterup/jquery.counterup.min.js"></script>
<script type="text/javascript">
   jQuery(document).ready(function($) {
       $('.counter').counterUp({
           delay: 100,
           time: 1200
       });
   });
</script>