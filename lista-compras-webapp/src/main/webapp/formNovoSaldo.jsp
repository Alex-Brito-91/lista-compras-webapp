<%@ page language="java" contentType="text/html; charset=iso-8859-1"
	pageEncoding="iso-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:url value="/novoSaldo" var="linkServletNovoSaldo" />

<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta http-equiv= "Content-Type" content= "text/html; charset=iso-8859-1" >
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Cadastro de Saldo</title>
<link rel="stylesheet" type="text/css" href="style_novo_saldo.css">
</head>
<body>
	<header class="cabecalho-saldo">
		<a class="cabecalho-imagem-saldo" href="index.html"> <img
			src="imagens/shopping-basket.png" alt="logo do carrinho"></a>
		<nav class="cabecalho-menu-saldo">
			<a class="cabecalho-menu-item-saldo" href="index.html">P�gina
				Inicial</a> <a class="cabecalho-menu-item-saldo"
				href="paginaCadastroTotais">Cadastro de Produtos</a> <a
				class="cabecalho-menu-item-saldo" href="listaProdutos">Lista de
				Produtos</a>
		</nav>
	</header>

	<main class="conteudo">
		<section class="conteudo-principal">
			<div class="conteudo-principal-div">
				<h1 class="conteudo-principal-tema">Insira seu Saldo:</h1>
				<form class="conteudo-principal-form"
					action="${linkServletNovoSaldo}" method="post">
					<div class="div-input-alimentacao1">
						<br> Vale Alimenta��o 1<br> <input
							class="conteudo-principal-input-alimentacao1" type="text"
							name="vale1" /><br />
					</div>
					<div class="div-input-alimentacao2">
						<br>Vale Alimenta��o 2<br> <input
							class="conteudo-principal-input-alimentacao2" type="text"
							name="vale2" /><br />
					</div>
					<div class="div-input-dinheiro">
						<br>Dinheiro<br> <input
							class="conteudo-principal-input-dinheiro" type="text"
							name="dinheiro" /><br />
					</div>
					<input class="botao-cadastrar" type="submit" value="cadastrar" />
				</form>
			</div>
		</section>
	</main>

	<footer class="rodape"> </footer>
</body>
</html>