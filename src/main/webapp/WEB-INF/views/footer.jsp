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


<!-- Multiselect tratar utilizando o extras do pagetemplate para nao sobrecarregar a página -->
<script src="${appContext }/plugins/bootstrap-tagsinput/dist/bootstrap-tagsinput.min.js"></script>
<script type="text/javascript" src="${appContext }/plugins/multiselect/js/jquery.multi-select.js"></script>
<script type="text/javascript" src="${appContext }/plugins/jquery-quicksearch/jquery.quicksearch.js"></script>
<script src="${appContext }/plugins/select2/select2.min.js" type="text/javascript"></script>
<script src="${appContext }/plugins/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.js" type="text/javascript"></script>
<script src="${appContext }/plugins/bootstrap-inputmask/bootstrap-inputmask.min.js" type="text/javascript"></script>
<script src="${appContext }/plugins/moment/moment.js"></script>
<script src="${appContext }/plugins/mjolnic-bootstrap-colorpicker/dist/js/bootstrap-colorpicker.min.js"></script>
<script src="${appContext }/plugins/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
<script src="${appContext }/plugins/bootstrap-daterangepicker/daterangepicker.js"></script>
<script src="${appContext }/assets/pages/jquery.form-advanced.init.js"></script>

<!-- Table editable tratar utilizando o extras do pagetemplate para nao sobrecarregar a página -->
<script src="${appContext }/plugins/magnific-popup/dist/jquery.magnific-popup.min.js"></script>
<script src="${appContext }/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="${appContext }/plugins/datatables/dataTables.bootstrap4.min.js"></script>
<script src="${appContext }/plugins/tiny-editable/mindmup-editabletable.js"></script>
<script src="${appContext }/plugins/tiny-editable/numeric-input-example.js"></script>
<script src="${appContext }/assets/pages/datatables.editable.init.js"></script>

<!--Form Wizard-->
<script src="${appContext }/plugins/jquery.steps/js/jquery.steps.min.js" type="text/javascript"></script>
<script type="text/javascript" src="${appContext }/plugins/jquery-validation/js/jquery.validate.min.js"></script>
<!--wizard initialization-->
<script src="${appContext }/assets/pages/jquery.wizard-init.js" type="text/javascript"></script>
        
        
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