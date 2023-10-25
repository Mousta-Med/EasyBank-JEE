<%@ page language="java" %>
<%@ page import="java.util.*" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Simulation</title>

</head>
<body class="flex flex-col min-h-screen">
<jsp:include page="../Includes/navbar.jsp" />
<div id="steps" class="w-full  h-full flex justify-around bg-gray-100">
    <c:if test="${step eq 1}">
        <jsp:include page="step1.jsp"/>
    </c:if>
    <c:if test="${step eq 2}">
        <jsp:include page="step2.jsp"/>
    </c:if>
    <c:if test="${step eq 3}">
        <jsp:include page="step3.jsp"/>
    </c:if>
    <div class="w-2/6 bg-white mx-5 my-5 py-5 h-64 bg-white">
        <div class="px-5 py-1.5 border-b border border-gray-200 bg-white px-4 py-5 sm:px-6">
            <h3 class="text-lg font-medium leading-6 text-gray-900">Mon récapitulatif</h3>
        </div>
        <div class="px-5 py-1.5 border-b w-full flex">
            <h3 class="font-bold w-64">Montant: </h3>
            <span id="montant-text">${montant}</span>
        </div>
        <div class="px-5 py-1.5 border-b w-full flex">
            <h3 class="font-bold w-64">Durée: </h3>
            <span id="duree-text">${duree}</span>
        </div>
        <div class="px-5 py-1.5 border-b w-full flex">
            <h3 class="font-bold w-64">Mensualité: </h3>
            <span id="Mensualite-text">${mensualite}</span>
        </div>
    </div>
</div>
<jsp:include page="../Includes/footer.jsp" />
<script src="<%= request.getContextPath()%>/Views/js/script.js"></script>
<script>
    document.querySelector("#montant-text").textContent = 5000 + " DH"
    document.querySelector("#duree-text").textContent = 12 + " MOIS"
    calc()
</script>
</body>
</html>
