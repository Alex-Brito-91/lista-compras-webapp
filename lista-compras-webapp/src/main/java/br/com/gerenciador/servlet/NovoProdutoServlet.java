package br.com.gerenciador.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigDecimal;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/novoProduto")
public class NovoProdutoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	    String nome = request.getParameter("nome");
	    BigDecimal valorUnitario = null;
	    Integer quantidade = null;

	    if (nome == null || nome.trim().isEmpty() || 
	    		request.getParameter("nome") == null || request.getParameter("nome").trim().isEmpty() || 
	            request.getParameter("valor") == null || request.getParameter("valor").trim().isEmpty() || 
	            request.getParameter("quant") == null || request.getParameter("quant").trim().isEmpty()) {

	        response.setContentType("text/html;charset=UTF-8");
	        PrintWriter out = response.getWriter();
	        out.println("<script type=\"text/javascript\">");
	        out.println("alert('Por favor, preencha todos os campos antes de cadastrar!');");
	        out.println("window.history.back();");
	        out.println("</script>");

	    } else {

	        valorUnitario = new BigDecimal(request.getParameter("valor").replaceAll(",", "."));
	        quantidade = Integer.parseInt(request.getParameter("quant"));
	        BigDecimal valorTotal = valorUnitario.multiply(BigDecimal.valueOf(quantidade));
	        Produto produto = new Produto();
	        produto.setNome(nome);
	        produto.setValorUnitario(valorUnitario);
	        produto.setQuantidade(quantidade);
	        produto.setValorTotal(valorTotal);

	        Banco banco = new Banco();
	        banco.adiciona(produto);

	        response.setContentType("text/html; charset=iso-8859-1");
	        response.sendRedirect("paginaCadastroTotais");

	    }
	}


}
