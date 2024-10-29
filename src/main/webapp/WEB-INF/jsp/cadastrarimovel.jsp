<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<jsp:include page="layouttopo.jsp"></jsp:include>
    <div class="row">
        <h1>Cadastrar Imóvel</h1>
    </div>
    <div class="row">
        <form:form action="/cadastrarimovel" modelAttribute="imovel">
            <div class="mb-3">
                <label for="rua" class="form-label">Rua:</label>
                <input type="text" class="form-control" name="rua" />
              </div>
              <div class="mb-3">
                <label for="numero" class="form-label">Número:</label>
                <input type="text" class="form-control" name="numero" />
              </div>
              <div class="mb-3">
                <label for="tamanho" class="form-label">Tamanho:</label>
                <input type="number" class="form-control" name="tamanho" />
              </div>
              <div class="mb-3">
                <label for="valor" class="form-label">Valor:</label>
                <input type="number" class="form-control" name="valor" />
              </div>              
              <button type="submit" class="btn btn-primary">Cadastrar</button>        
        </form:form>
    </div>
<jsp:include page="layoutrodape.jsp"></jsp:include>