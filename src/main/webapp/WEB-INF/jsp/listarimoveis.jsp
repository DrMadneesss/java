<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib prefix="c" uri="jakarta.tags.core" %>
		<jsp:include page="layouttopo.jsp"></jsp:include>
		<div class="row">
			<h1>Lista de Imoveis</h1>
		</div>
		<div class="row">

			<table class="table table-striped">

				<thead>
					<tr>
						<th scope="col">Código</th>
						<th scope="col">Rua</th>
						<th scope="col">Número</th>
						<th scope="col">Tamanho</th>
						<th scope="col">Valor</th>
						<th scope="col">Alterar</th>
						<th scope="col">Excluir</th>
					</tr>
				</thead>

				<tbody>

					<c:forEach items="${listaImoveis}" var="imovel">
						<tr>
							<td>${imovel.getCodigo()}</td>
							<td>${imovel.getRua()}</td>
							<td>${imovel.getNumero()}</td>
							<td>${imovel.getTamanho()}</td>
							<td>${imovel.getValor()}</td>
							<td> <a href="/alterarimovel?codigo=${imovel.getCodigo()}">Alterar</a></td>
							<td> <button type="button" class="btn btn-danger" data-bs-toggle="modal"
									data-bs-target="#exampleModal">Excluir</button></td>
						</tr>
						<!-- <a href="/excluirimovel?codigo=${imovel.getCodigo()}">Excluir</a> -->

						<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
							aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title text-warning">AVISO !</h5>
										<button type="button" class="btn-close" data-bs-dismiss="modal"
											aria-label="Close"></button>
									</div>
									<div class="modal-body">
										<p class="text-danger">Tem certeza que deseja <span class="fw-bold fs-6 text-danger">EXCLUIR</span> o imovel?</p>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-success"
											data-bs-dismiss="modal">Cancelar</button>
										<a href="/excluirimovel?codigo=${imovel.getCodigo()}"><button  type="button"
												class="btn btn-danger">Excluir</button></a>
									</div>
								</div>
							</div>
					</c:forEach>

				</tbody>


		</div>
		</table>

		<!-- <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
				Launch demo modal
			</button> -->




		</div>
		<jsp:include page="layoutrodape.jsp"></jsp:include>