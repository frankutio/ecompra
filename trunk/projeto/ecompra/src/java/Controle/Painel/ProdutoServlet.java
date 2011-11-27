package Controle.Painel;

import Entidade.Painel.Impl.Produto;
import Persistencia.Painel.Impl.ProdutoDao;
import View.Mensagens;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;

public class ProdutoServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

  protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        //RECEBE O TIPOD E OPERACAO A REALIZAR
        String operacao = request.getParameter("operacao");
        //LOG PARA TESTE
        System.out.println("Controle Acionado com Operacao: " + operacao);
        String proximaPagina = "";
        PrintWriter out = response.getWriter();

        // capturando parametros
        int cod_produto = 0;
        String nome = request.getParameter("txt_nome");
        String descricao = request.getParameter("txt_descricao");
        String preco = request.getParameter("txt_preco");
        String quantidade = request.getParameter("txt_quantidade");
        String fabricante = request.getParameter("txt_fabricante");
        
        //instanciando objeto de entidade
        Produto produto = new Produto();
        ProdutoDao dao = new ProdutoDao();
 
        
        if (operacao.equals("cadastro_produto")) {
            proximaPagina = "/Painel/painel_produto_incluir.jsp";
            System.out.println("Controle Acionado com Operacao: " + operacao);
           
            //INCLUIR Produto
        }else if(operacao.equals("incluir_produto")){
            System.out.println("Controle Acionado com Operacao: " + operacao);

            produto.setCod_produto(cod_produto);
            produto.setNome(nome);
            produto.setDescricao(descricao);
            produto.setPreco(Integer.parseInt(preco));
            produto.setQuantidade(Integer.parseInt(quantidade));
            produto.setFabricante(fabricante);

            dao.incluir(produto);
            request.getSession().setAttribute("msgSucesso",Mensagens.msgSucessoIncluirProduto);
            proximaPagina = "/Painel/painel_produto_incluir.jsp";

        }else if (operacao.equals("editar_produto")){
            System.out.println("Controle Acionado com Operacao: " + operacao);
            //EDITAR Produto

        }else if (operacao.equals("buscar_produtos")){
            //BUSCAR TODOS PRODUTOS
            System.out.println("Controle Acionado com Operacao: " + operacao);
            //dao.buscarTodosProdutos();BUSCANDO DIRETO DA VARIAVEL

            List<Produto> buscar_produtos = ProdutoDao.getInstance().buscarTodosProdutos();
            request.setAttribute("buscar_produtos", buscar_produtos);
            proximaPagina = "/Painel/painel_produto.jsp";

        }else if (operacao.equals("pesquisar_produtos")){
            System.out.println("Controle Acionado com Operacao: " + operacao);

            List<Produto> pesquisar_produtos = ProdutoDao.getInstance().pesquisarProdutos();
            request.setAttribute("pesquisar_produtos", pesquisar_produtos);
            proximaPagina = "/Painel/painel_produto.jsp";

        }
        
        //PARA DIRECIONAR AS PAGINAS PARA O LOCAL CERTO.
        RequestDispatcher rd = request.getRequestDispatcher(proximaPagina);
        rd.forward(request, response);

    } 

    
}