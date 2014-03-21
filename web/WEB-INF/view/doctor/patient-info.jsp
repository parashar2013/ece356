<%-- 
    Document   : doctor_home
    Created on : Mar 8, 2014, 3:10:40 PM
    Author     : Parashar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<t:base_template>
    <jsp:attribute name="title">Patient Record</jsp:attribute>
    
    <jsp:attribute name="nav">
        <jsp:include page="_nav_tabs.jsp"></jsp:include>
    </jsp:attribute>
    
    <jsp:attribute name="content">
        <div class="container" id="content-container">
            <h3>Patient Record for ${patient.name}</h3><hr>
            
            <h4>Patient Info</h4><br>
            <!--<div class="patient-info-container">-->
            <b>Address:</b> ${patient.address} <br>
            <b>Phone Number:</b> ${patient.phoneNumber} <br>
            <b>Default Doctor:</b> ${patient.defaultDoctorName} <br>
            <b>Current Health:</b> ${patient.currentHealth}
            <!--</div>-->
            <br><br>
            <h4>Past Visits</h4>
            <table class="table">
                <thead>
                    <tr>
                        <th>Doctor</th>
                        <th>Diagnosis</th>
                        <th>Prescriptions</th>
                        <th>Date and Time</th>
                    </tr>
                </thead>
                <tbody>
                <c:forEach var="visit" items="${visitList}">
                    <tr>
                    <c:forEach var="var" items="${visit}">
                        <td>${var}</td>
                    </c:forEach>
                    </tr>
                </c:forEach>
                </tbody>
            </table>

        </div>
    </jsp:attribute>
</t:base_template>
