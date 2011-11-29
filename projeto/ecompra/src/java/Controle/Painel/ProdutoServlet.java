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

        // capturando parametros para todas as telas
        String cod_produto = request.getParameter("txt_cod_produto");
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

            int cod = 0;
            
            produto.setCod_produto(cod);
            produto.setNome(nome);
            produto.setDescricao(descricao);
            produto.setPreco(Integer.parseInt(preco));
            produto.setQuantidade(Integer.parseInt(quantidade));
            produto.setFabricante(fabricante);

            dao.incluir(produto);
            request.getSession().setAttribute("msgSucesso",Mensagens.msgSucessoIncluirProduto);
            proximaPagina = "/Painel/painel_produto_incluir.jsp";

                        
             //buscar Produto para alterar
        }else if (operacao.equals("busca_alterar")){
            System.out.println("Controle Acionado com Operacao: " + operacao);

            String cod_prod = request.getParameter("cod_produto");
            String nome_prod = request.getParameter("nome");
      
            produto.setCod_produto(Integer.parseInt(cod_prod));
            produto.setNome(nome_prod);

            List<Produto> busca_alterar = ProdutoDao.getInstance().buscaAlterar(produto.getCod_produto(), produto.getNome());
            request.setAttribute("busca_alterar", busca_alterar);
            proximaPagina = "/Painel/painel_produto_alterar.jsp";
            
        }else if (operacao.equals("alterar_produto")){
            System.out.println("Controle Acionado com Operacao: " + operacao);
            //capturando parametros
            String cod_prod = request.getParameter("cod_produto_parametro");
            String nome_prod = request.getParameter("nome");
            String alt_descricao = request.getParameter("descricao");
            String alt_preco = request.getParameter("preco");
            String alt_quantidade = request.getParameter("quantidade");
            String alt_fabricante = request.getParameter("fabricante");

            //atribuindo valores entidade

            produto.setCod_produto(Integer.parseInt(cod_prod));
            produto.setNome(nome_prod);
            produto.setDescricao(alt_descricao);
            produto.setPreco(Integer.parseInt(alt_preco));
            produto.setQuantidade(Integer.parseInt(alt_quantidade));
            produto.setFabricante(alt_fabricante);
            //lista de parametros para DAO
            List<Produto> alterar_produto = ProdutoDao.getInstance().alterarProduto(produto.getCod_produto(),produto.getNome(),produto.getDescricao(),produto.getPreco(),produto.getQuantidade(),produto.getFabricante());
            request.setAttribute("alterar_produto", alterar_produto);
            request.getSession().setAttribute("msgSucesso",Mensagens.msgSucessoAlterarProduto);

            proximaPagina = "/ProdutoServlet?operacao=buscar_produtos";

        }else if (operacao.equals("buscar_produtos")){
            //BUSCAR TODOS PRODUTOS
            System.out.println("Controle Acionado com Operacao: " + operacao);
                //dao.buscarTodosProdutos();BUSCANDO DIRETO DA VARIAVEL

            List<Produto> buscar_produtos = ProdutoDao.getInstance().buscarTodosProdutos();
            request.setAttribute("buscar_produtos", buscar_produtos);
            proximaPagina = "/Painel/painel_produto.jsp";

        }else if (operacao.equals("pesquisar_produtos")){

            if (cod_produto != ""){
                produto.setCod_produto(Integer.parseInt(cod_produto));
            }else {
                produto.setCod_produto(0);
            }
                        
            produto.setNome(nome);
            produto.setFabricante(fabricante);

            List<Produto> pesquisar_produtos = ProdutoDao.getInstance().pesquisarProdutos(produto.getCod_produto(), produto.getNome(), produto.getFabricante());
            request.setAttribute("pesquisar_produtos", pesquisar_produtos);
            proximaPagina = "/Painel/painel_produto.jsp";

        }else if (operacao.equals("excluir_produto")){
            System.out.println("Controle Acionado com Operacao: " + operacao);

            String cod_prod = request.getParameter("cod_produto");
            String quant_prod = request.getParameter("quantidade");
            
            produto.setCod_produto(Integer.parseInt(cod_prod));
            produto.setQuantidade(Integer.parseInt(quant_prod));

            //if (resultadoConfirm ==1){
            List<Produto> excluir_produto = ProdutoDao.getInstance().excluirProduto(produto.getCod_produto());
            request.setAttribute("excluir_produto", excluir_produto);
            request.getSession().setAttribute("msgSucesso",Mensagens.msgSucessoExcluirProduto);
            
            //}else {
            //request.getSession().setAttribute("msgErro",Mensagens.msgErroExcluirProduto);
            //}
            proximaPagina = "/ProdutoServlet?operacao=buscar_produtos";

        }
        
        //PARA DIRECIONAR AS PAGINAS PARA O LOCAL CERTO.
        RequestDispatcher rd = request.getRequestDispatcher(proximaPagina);
        rd.forward(request, response);

    } 

    
}