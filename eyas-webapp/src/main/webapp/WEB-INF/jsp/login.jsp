<%--@elvariable id="message" type="java.lang.String"--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
    <title>InfiTecs Base</title>
    <%@include file="core/includes/head.jsp"%>
    <link href="<c:url value="/assets/admin/pages/css/login-soft.css"/>" rel="stylesheet" type="text/css"/>
</head>
<body class="login">
<div class="logo">
    <a href="<c:url value="/login"/>">
    <img src="<c:url value="/img/logo-big.png"/>" alt="" style="height:50px"/>
    </a>
</div>
<div class="menu-toggler sidebar-toggler">
</div>
<div class="content">
    <!-- BEGIN LOGIN FORM -->
    <form id="login-form"  class="login-form" action="<c:url value="/login"/>" method="post">
    <h3 class="form-title"><spring:message code="loginToYourAccount"/></h3>
    <div class="alert alert-danger display-hide">
        <button class="close" data-close="alert"></button>
        <span><spring:message code="enterAnyUsernameAndPassword"/></span>
    </div>
    <div class="form-group">
        <label class="control-label visible-ie8 visible-ie9"><spring:message code="username"/></label>
        <div class="input-icon">
            <i class="fa fa-user"></i>
            <input class="form-control placeholder-no-fix" type="text" autocomplete="off"
                   placeholder="<spring:message code="username"/>" name="username" id="username" value="admin"/>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label visible-ie8 visible-ie9"><spring:message code="password"/></label>
        <div class="input-icon">
            <i class="fa fa-lock"></i>
            <input id="password" class="form-control placeholder-no-fix" type="password" autocomplete="off"
                   placeholder="<spring:message code="password"/>" name="password" value="admin"/>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label visible-ie8 visible-ie9"><spring:message code="language"/></label>
        <div class="input-icon">
            <i class="fa fa-language"></i>
            <select id="locale" class="form-control" name="locale">
                <%--@elvariable id="defaultLanguage" type="java.lang.String"--%>
                <%--@elvariable id="languageList" type="java.util.List<com.infitecs.eyas.core.system.model.Language>"--%>
                <c:forEach items="${languageList}" var="language">
                <option value="${language.locale}"
                    <c:if test="${language.locale==defaultLanguage}">selected='selected'</c:if>>${language.languageName}</option>
                </c:forEach>
            </select>
        </div>
    </div>
    <c:if test="${isCaptchaOn == true}">
        <div class="form-group">
            <label class="control-label visible-ie8 visible-ie9"><spring:message code="captcha"/></label>
            <div class="input-icon">
                <i class="fa fa-check-circle"></i>
                <img class="pull-right " title="<spring:message code="changeCaptcha"/>" id="captchaImage" src="<c:url value="/login/captcha?b="/><%=Math.random()%>">
                <input id="captcha" class="form-control placeholder-no-fix" type="text" autocomplete="off" maxlength="4" style="width: 200px;"
                       placeholder="<spring:message code="captcha"/>" name="captcha" />

            </div>
        </div>
    </c:if>
    <div class="form-actions">
        <label class="checkbox"></label>
        <button type="button" id="loginBtn" class="btn blue pull-right"><spring:message code="login"/><i class="m-icon-swapright m-icon-white"></i>
        </button>
    </div>
    </form>
    <!-- END LOGIN FORM -->
</div>
<div class="copyright">
    Copyright © 2014-2015 InfiTecs Technology Co., Ltd
</div>
<%@include file="core/includes/bottomscript.jsp"%>
<script src="<c:url value="/js/bower_components/jquery-backstretch/jquery.backstretch.min.js"/>" type="text/javascript"></script>
<script src="<c:url value="/js/login.js"/>" type="text/javascript"></script>
<script>
    $(function(){
        Login.init();
        <c:if test="${message!=null}">
                toast.error(i18n['${message}']);
        </c:if>
    })
</script>
</body>
</html>