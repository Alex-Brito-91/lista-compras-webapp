<%@ page language="java" contentType="text/html; charset=iso-8859-1"
	pageEncoding="iso-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page import="java.util.List"%>
<c:url value="/novoProduto" var="linkServletNovoProduto" />

<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta http-equiv= "Content-Type" content= "text/html; charset=iso-8859-1" >
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="style_novo_produto.css">
<title>Cadastro de Produto</title>
</head>
<body>
	<header class="cabecalho">
		<a class="cabecalho-imagem" href="paginaInicial.jsp"> <img
			src="imagens/shopping-basket.png" alt="logo do carrinho"></a>
		<nav class="cabecalho-menu">
			<a class="cabecalho-menu-item" href="paginaInicial.jsp">Página
				Inicial</a> <a class="cabecalho-menu-item" href="listaSaldo">Seu
				Saldo</a> <a class="cabecalho-menu-item" href="listaProdutos">Lista
				de Produtos</a>
		</nav>
	</header>

	<main class="conteudo">
		<section class="conteudo-cadastro">
			<div class="conteudo-cadastro-div">
				<div class="conteudo-compra-div">
					<p>
						Saldo total: <b>${saldo}</b>
					</p>
					<p>
						Valor total da Compra: <b>${total}</b>
					</p>
					<p>
						Saldo restante: <b>${restante}</b>
					</p>
				</div>
				<form class="conteudo-cadastro-form"
					action="${linkServletNovoProduto}" method="post">
					<h1 class="conteudo-cadastro-tema">Produtos</h1>
					<div class="div-input-nome">
						Nome<br> <input class="conteudo-cadastro-input-nome"
							type="text" name="nome" />
					</div>

					<div class="div-input-valor">
						Valor<br> <input class="conteudo-cadastro-input-valor"
							type="text" name="valor" />
					</div>

					<div class="div-input-quant">
						Quantidade<br> <input class="conteudo-cadastro-input-quant"
							type="text" name="quant" />
					</div>
					<div class="conteudo-cadastro-botoes">
						<input class="botao-input-cadastrar" type="submit"
							value="cadastrar" />
						<button class="botao-input-lista" formaction="listaProdutos">ver
							lista</button>
					</div>
				</form>
			</div>
		</section>
	</main>

	<footer class="rodape"> </footer>
</body>
</html>