<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
    <title>首页</title>
    <%@include file="core/includes/head.jsp" %>
</head>
<body class="page-header-fixed page-quick-sidebar-over-content">
<%@include file="core/includes/top.jsp" %>
<div class="page-container">
    <%@include file="core/includes/sidebar.jsp" %>
    <!-- BEGIN CONTENT -->
    <div class="page-content-wrapper">
        <div class="page-content">
            <!-- BEGIN PAGE HEADER-->
            <h3 class="page-title">
                <spring:message code="welcome"/>
            </h3>
            <!-- END PAGE HEADER-->
        </div>
    </div>
    <!-- END CONTENT -->
</div>
<%@include file="core/includes/footer.jsp" %>
<%@include file="core/includes/bottomscript.jsp" %>
<script src="<c:url value="/js/index.js"/>"></script>
</body>
</html>
        <script>
jQuery(document).ready(function() {
    Index.init();
});
</script>