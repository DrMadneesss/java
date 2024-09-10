<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<jsp:include page="layouttopo.jsp"></jsp:include>
    <div class="row">
        <h1>Contatos</h1>
    </div>
    <div class="row">
        <ul>
           <c:forEach items="${listaContatos}" var="contato">
                <li>${contato}</li>
           </c:forEach> 
        </ul>

    </div>

    <jsp:include page="layoutrodape.jsp"></jsp:include>