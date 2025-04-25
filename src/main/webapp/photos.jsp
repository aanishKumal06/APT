<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Photo Display</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            padding: 20px;
        }
        img {
            max-width: 100%;
            height: auto;
            border: 2px solid #ccc;
            padding: 10px;
        }
    </style>
</head>
<body>
    <h2>Uploaded Image</h2>

    <c:choose>
        <c:when test="${not empty path}">
            <img src="${path}" alt="Uploaded Photo" />
        </c:when>
        <c:otherwise>
            <p>No image available to display.</p>
        </c:otherwise>
    </c:choose>

</body>
</html>
