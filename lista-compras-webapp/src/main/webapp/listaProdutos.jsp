<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List, br.com.gerenciador.servlet.Produto"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Lista de Produtos</title>
<link rel="stylesheet" type="text/css" href="style_lista_produto.css">
</head>
<body>
	<header class="cabecalho">
		<a class="cabecalho-imagem" href="paginaInicial.jsp"> <img
			src="imagens/shopping-basket.png" alt="logo do carrinho"></a>
		<nav class="cabecalho-menu">
			<a class="cabecalho-menu-item" href="paginaInicial.jsp">Página
				Inicial</a> <a class="cabecalho-menu-item" href="listaSaldo">Seu
				Saldo</a> <a class="cabecalho-menu-item" href="paginaCadastroTotais">Cadastro
				de Produtos</a> <a href="limpaLista"> <input
				class="botao-limpar-lista" type="button" value="Limpar lista" />
			</a>
		</nav>
	</header>

	<main class="conteudo">
		<section class="conteudo-principal-tabela">
			<div class="conteudo-principal-tabela-div">
				<h1 class="conteudo-principal-tabela-tema">LISTA DE PRODUTOS</h1>
				<h2 class="conteudo-principal-tema-data">
					Lista criada em:
					<fmt:formatDate value="${data}" pattern="dd/MM/yyyy" />
				</h2>
				<table class="tabela">
					<thead>
						<tr class="itens-cabecalho-tabela">
							<th class="cabecalho-tabela">NOME</th>
							<th class="cabecalho-tabela">VALOR UN</th>
							<th class="cabecalho-tabela">QT</th>
							<th class="cabecalho-tabela">TOTAL</th>
							<th class="cabecalho-tabela">&nbsp;</th>
							<th class="cabecalho-tabela">&nbsp;</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${produtos}" var="produto">
							<tr class="itens-conteudo-tabela">
								<td class="conteudo-tabela">${produto.nome}</td>
								<td class="conteudo-tabela">${produto.getValorUnString()}</td>
								<td class="conteudo-tabela">${produto.quantidade}</td>
								<td class="conteudo-tabela">${produto.getValorTotalString()}</td>
								<td class="conteudo-tabela"><a class="botao-alterar"
									href="/lista-compras-webapp/mostraProduto?id=${produto.id}"><img
										src="imagens/editar.png" alt="logo editar"> </a></td>
								<td class="conteudo-tabela"><a class="botao-excluir"
									href="/lista-compras-webapp/removeProduto?id=${produto.id}"><img
										src="imagens/excluir.png" alt="logo excluir"> </a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<h3 class="conteudo-principal-tabela-total">
					Total da compra: <b>${totalCompra}</b><br> Saldo Total: <b>${saldoTotal}</b><br>
					Saldo Restante: <b>${totalRestante}</b>
				</h3>
				<section class="section-botoes">
					<a href="paginaCadastroTotais"> <input class="botao-voltar"
						type="button" value="voltar ao cadastro" />
					</a>
				</section>
			</div>
		</section>
	</main>

	<footer class="rodape"> </footer>
</body>
</html>