<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List, edu.curso.Pet" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Registro de Pets</title>
		<link rel="stylesheet" href="./resource/css/bootstrap.min.css">
	</head>
	<body>
		<% String msg = (String)session.getAttribute("MENSAGEM"); 
		   List<Pet> lista = (List<Pet>)application.getAttribute("LISTA");%>
		<div class="container">
			<h1>Registro de Pets</h1>
			<% if (msg != null) { 
				session.setAttribute("MENSAGEM", null);%>
				<div class="alert alert-success alert-dismissible fade show" role="alert">
				  <strong>Sucesso</strong> <%=msg%>
				  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
				    <span aria-hidden="true">&times;</span>
				  </button>
				</div>
			<% } %>
			<form action="./petServlet" method="post">
				<div class="form-group">
					<label>Nome do Pet:</label></td>
					<input type="text" name="NOME" class="form-control"/>
				</div>
				<div class="form-group">
					<label>Ra�a:</label></td>
					<select name="RACA" class="form-control">
						<option value="viralata">Vira Lata</option>
						<option value="bulldog">Bull Dog</option>
						<option value="poodle">Poodle</option>
					</select>
				</div>
				<div class="form-group">
					<label>Nascimento: </label></td>
					<input type="date" pattern="dd/MM/yyyy" name="NASC" class="form-control"/>
				</div>
				<div class="form-group">
					<button type="submit" class="btn btn-primary">Adicionar</button>
				</div>
				
				<% if (lista != null && lista.size() > 0) { %>
					<table class="table table-striped">
						<thead>
							<tr>
								<th>Nome</th>
								<th>Ra�a</th>
								<th>Nascimento</th>
							</tr>
						</thead>
						<tbody>
							<% for(Pet p : lista) { %>
								<tr>
									<td><%=p.getNome()%></td>
									<td><%=p.getRaca()%></td>
									<td><%=p.getNascimento()%></td>
								</tr>
							<% } %>
						</tbody>
					</table>
				<% } %>
			</form>
		</div>
	</body>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</html>