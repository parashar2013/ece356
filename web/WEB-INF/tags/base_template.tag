<%-- 
    Document   : base_template
    Created on : Mar 9, 2014, 11:01:54 AM
    Author     : Parashar
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@tag description="Overall page template" pageEncoding="UTF-8"%>

<c:set var="context" value="${pageContext.request.contextPath}" scope="request" />

<%-- The list of normal or fragment attributes can be specified here: --%>
<%@ attribute name="title" %>
<%@ attribute name="content" fragment="true" %>
<%@ attribute name="nav" fragment="true" %>
<%@ attribute name="scripts" fragment="true" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href="${context}/favicon.ico" type="image/x-icon" />
        <link rel="shortcut icon" href="${context}/favicon.ico" type="image/x-icon" />
        
        <!-- CSS -->
        <link rel="stylesheet" href="${context}/css/bootstrap.min.css">
        <!--<link rel="stylesheet" href="${context}/css/bootstrap-theme.min.css">-->
        <link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/themes/smoothness/jquery-ui.css" />
        <link rel="stylesheet" href="${context}/css/style.css">
        
        <!-- JS -->
        <script src="http://code.jquery.com/jquery.js"></script>
        <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
        <script src="${context}/js/bootstrap.min.js"></script>
        <jsp:invoke fragment="scripts"/>
    
        <title>${title} | HospitalDB</title>
    </head>
    <body>
        <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <div class="container">
              <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="${context}/">HospitalDB</a>
              </div>
              <div class="collapse navbar-collapse">
                  <ul class="nav navbar-nav">
                      <jsp:invoke fragment="nav"/>
                  </ul>
                  <p class="navbar-text navbar-right">
                      <c:if test="${not empty user}">
                         ${user.name} | <a href="${context}/logout">Logout</a>
                      </c:if>
                  </p>
              </div><!--/.nav-collapse -->
            </div>
        </div>
        
        <jsp:invoke fragment="content"/>
    </body>
</html>
