<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List, br.com.gerenciador.servlet.Saldo"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Saldo</title>
<link rel="stylesheet" type="text/css" href="style_lista_saldo.css">
</head>
<body>
	<header class="cabecalho">
		<a class="cabecalho-imagem" href="paginaInicial.jsp"> <img
			src="imagens/shopping-basket.png" alt="logo do carrinho"></a>
		<nav class="cabecalho-menu">
			<a class="cabecalho-menu-item" href="paginaInicial.jsp">Página
				Inicial</a> <a class="cabecalho-menu-item" href="paginaCadastroTotais">Cadastro
				de Produtos</a> <a class="cabecalho-menu-item" href="listaProdutos">Lista
				de Produtos</a>
		</nav>
	</header>

	<main class="conteudo">
		<section class="conteudo-principal-tabela">
			<div class="conteudo-principal-tabela-div">
				<h1 class="conteudo-principal-tabela-tema">SEU SALDO</h1>
				<table class="tabela">
					<c:forEach items="${saldos}" var="saldo">
						<tr class="conteudo-alimentacao1">
							<th class="tema-alimentacao">ALIMENTAÇÃO 1:</th>
							<td class="valor-saldo">${saldo.alimentacao1}</td>
							<td class="conteudo-altera-botoes" rowspan="3"><a
								href="/lista-compras-webapp/mostraSaldo?id=${saldo.id}"> <input
									class="botao-alterar" type="button" /><img
									src="imagens/editar24px.png" alt="logo editar">
							</a> <a href="/lista-compras-webapp/removeSaldo?id=${saldo.id}">
									<input class="botao-excluir" type="button" /><img
									src="imagens/excluir24px.png" alt="logo excluir">
							</a></td>
						</tr>
						<tr class="conteudo-alimentacao2">
							<th class="tema-alimentacao">ALIMENTAÇÃO 2:</th>
							<td class="valor-saldo">${saldo.alimentacao2}</td>
						</tr>
						<tr class="conteudo-dinheiro">
							<th class="tema-alimentacao-dinheiro">DINHEIRO:</th>
							<td class="valor-saldo-dinheiro">${saldo.dinheiro}</td>
						</tr>
					</c:forEach>
				</table>
				<h2 class="conteudo-principal-tabela-total">
					Saldo Total: <b>${saldoTotal}</b><br>
				</h2>
				<a href="formNovoSaldo.jsp"> <input class="botao-cadastro-saldo"
					type="button" value="inserir saldo" />
				</a><br> <a href="paginaCadastroTotais"> <input
					class="botao-cadastro" type="button" style="white-space: pre-wrap;"
					value="cadastrar produtos" />
				</a>
			</div>
		</section>
	</main>

	<footer class="rodape"> </footer>
</body>
</html>