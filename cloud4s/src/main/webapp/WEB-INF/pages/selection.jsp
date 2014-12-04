<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="sec"
          uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="DashBoard for Cloud4s">
    <meta name="author" content="Sameera">

    <title>DashBoard - Cloud4s</title>

    <link href='<c:url value="/css/bootstrap.min.css" />' rel="stylesheet" type="text/css"/>
    <link href='<c:url value="/css/sb-admin.css" />' rel="stylesheet" type="text/css"/>
    <link href='<c:url value="/css/plugins/morris.css" />' rel="stylesheet" type="text/css"/>
    <link href='<c:url value="/fonts/css/font-awesome.min.css" />' rel="stylesheet" type="text/css"/>

    <%--logout --%>
    <sec:authorize access="hasRole('ROLE_USER')">
        <!-- For login user -->
        <c:url value="/j_spring_security_logout" var="logoutUrl" />
        <form action="${logoutUrl}" method="post" id="logoutForm">
            <input type="hidden" name="${_csrf.parameterName}"
                   value="${_csrf.token}" />
        </form>
        <script>
            function formSubmit() {
                document.getElementById("logoutForm").submit();
            }
        </script>

        <c:if test="${pageContext.request.userPrincipal.name != null}">
            <h2>
                User : ${pageContext.request.userPrincipal.name} | <a
                    href="javascript:formSubmit()"> Logout</a>
            </h2>
        </c:if>


    </sec:authorize>



</head>

<body>

    <div id="wrapper">
        <a href="/dashboard"><img class="img-thumbnail" src="/images/dropbox.png" alt="Drop Box"></a>
        <img class="img-thumbnail" src="/images/drive.png"  alt="Drive">
        <img class="img-thumbnail" src="/images/skydrive.png" alt="Sky Drive">
        <img class="img-thumbnail"src="/images/dropbox.png" alt="Drop Box advanced">

    </div>
    
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>

    <script src="js/plugins/morris/raphael.min.js"></script>
    <script src="js/plugins/morris/morris.min.js"></script>
    <script src="js/plugins/morris/morris-data.js"></script>

</body>

</html>
