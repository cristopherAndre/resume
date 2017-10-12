<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<fmt:message key="general.app.name" var="generalAppNameLabel" />
<fmt:message key="general.app.year" var="generalAppYearLabel" />

<footer class="footer text-right">
   ${generalAppYearLabel } © ${generalAppNameLabel }.
</footer>
<script>
   var resizefunc = [];
</script>
<!-- Plugins  -->
<script src="/resume/assets/js/jquery.min.js"></script>
<script src="/resume/assets/js/popper.min.js"></script><!-- Popper for Bootstrap -->
<script src="/resume/assets/js/bootstrap.min.js"></script>
<script src="/resume/assets/js/detect.js"></script>
<script src="/resume/assets/js/fastclick.js"></script>
<script src="/resume/assets/js/jquery.slimscroll.js"></script>
<script src="/resume/assets/js/jquery.blockUI.js"></script>
<script src="/resume/assets/js/waves.js"></script>
<script src="/resume/assets/js/wow.min.js"></script>
<script src="/resume/assets/js/jquery.nicescroll.js"></script>
<script src="/resume/assets/js/jquery.scrollTo.min.js"></script>
<script src="/resume/plugins/switchery/switchery.min.js"></script>
<!-- Counter Up  -->
<script src="/resume/plugins/waypoints/lib/jquery.waypoints.min.js"></script>
<script src="/resume/plugins/counterup/jquery.counterup.min.js"></script>
<!--Morris Chart-->
<script src="/resume/plugins/morris/morris.min.js"></script>
<script src="/resume/plugins/raphael/raphael-min.js"></script>
<!-- Page js  -->
<script src="/resume/assets/pages/jquery.dashboard.js"></script>
<!-- Custom main Js -->
<script src="/resume/assets/js/jquery.core.js"></script>
<script src="/resume/assets/js/jquery.app.js"></script>
<script type="text/javascript">
   jQuery(document).ready(function($) {
       $('.counter').counterUp({
           delay: 100,
           time: 1200
       });
   });
</script>