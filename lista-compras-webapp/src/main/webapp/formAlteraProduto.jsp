<%@ page language="java" contentType="text/html; charset=iso-8859-1"
	pageEncoding="iso-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:url value="/alteraProduto" var="linkServletNovoProduto" />

<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta http-equiv= "Content-Type" content= "text/html; charset=iso-8859-1" >
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Alterar Produto</title>
<link rel="stylesheet" type="text/css" href="style_altera_produto.css">
</head>

<body>
	<header class="cabecalho">
		<a class="cabecalho-imagem" href="index.html"> <img
			src="imagens/shopping-basket.png" alt="logo do carrinho"></a>
	</header>
	<main class="conteudo">
		<section class="conteudo-altera-section">
			<div class="conteudo-altera-div">
				<h1 class="conteudo-altera-tema">Alterar Produto</h1>
				<form class="conteudo-altera-form"
					action="${linkServletNovoProduto}" method="post">
					<div class="div-input-nome">
						Nome<br> <input class="conteudo-altera-input-nome"
							type="text" name="nome" value="${produto.nome}" />
					</div>
					<div class="div-input-valor">
						Valor<br> <input class="conteudo-altera-input-valor"
							type="text" name="valor" value="${produto.valorUnitario}" />
					</div>
					<div class="div-input-quant">
						Quantidade<br> <input class="conteudo-altera-input-quant"
							type="text" name="quant" value="${produto.quantidade}" />
					</div>
					<input type="hidden" name="id" value="${produto.id}"><br>
					<div class="conteudo-altera-botoes">
						<input class="conteudo-altera-input" type="submit" value="alterar" />
						<button class="conteudo-altera-voltar" onclick="history.back()">voltar</button>
					</div>
				</form>
			</div>
		</section>
	</main>

	<footer class="rodape"> </footer>
</body>
</html>