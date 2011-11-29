package Persistencia.Painel.Impl;

import Entidade.Painel.Impl.Produto;
import java.sql.*;
import java.util.ArrayList;
import Entidade.Painel.*;
import Persistencia.Painel.Dao;
import java.util.List;

//public class ProdutoDao extends Dao <produto> {
public class ProdutoDao extends Dao<Produto> {
    private static ProdutoDao instance = new ProdutoDao();

    public static ProdutoDao getInstance() {
        return instance;
    }

    
    //construtor
    public ProdutoDao() {
    }

    @Override
    protected Produto alterar(Produto produto) {
        return null;
    }


    @Override
    public Produto delete(Produto produto) {
        return null;
    }

    @Override
    //INCLUIR NOVO produto
    public Produto incluir(Produto produto) {
        String sql = "";
        //insert into tabela values (null,'nome','nome','nome')
        sql = "insert into ecompra.produto (cod_produto, nome, "
                + "descricao, preco, quantidade, fabricante)"
                + " values (?,?,?,?,?,?)";

        System.out.println(sql);

        //grava no banco
        conexao = iniciarConexao();
        try {
            // prepared statement para inserção
            PreparedStatement stmt = conexao.prepareStatement(sql);

            // seta os valores
            stmt.setInt(1, produto.getCod_produto());
            stmt.setString(2, produto.getNome());
            stmt.setString(3, produto.getDescricao());
            stmt.setInt(4, produto.getPreco());
            stmt.setInt(5, produto.getQuantidade());
            stmt.setString(6, produto.getFabricante());
            
            // executa
            stmt.execute();
            stmt.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return null;
    }

    @Override
    public Produto save(Produto obj) {
       return null;
    }

    public List<Produto> buscarTodosProdutos() {
        conexao = iniciarConexao();
        String sql = "select * from ecompra.produto";
        try {
            //preparando statement para inserção
            PreparedStatement stmt = conexao.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery(sql);

            List<Produto> Produtos = new ArrayList<Produto>();

            while (rs.next()) {
                //criando obj ProdutoBean
                Produto produto = new Produto();
                produto.setCod_produto(rs.getInt("cod_produto"));
                produto.setNome(rs.getString("nome"));
                produto.setDescricao(rs.getString("descricao"));
                produto.setPreco(rs.getInt("preco"));
                produto.setQuantidade(rs.getInt("quantidade"));
                produto.setFabricante(rs.getString("fabricante"));
                
                //adicionando obj à lista
                Produtos.add(produto);
            }
            rs.close();
            stmt.close();
            return Produtos;

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public List<Produto> pesquisarProdutos(int cod, String nome, String fabricante){
        
        conexao = iniciarConexao();
        Produto produto = new Produto();
        String sql = "SELECT * FROM ecompra.produto WHERE " +
                "cod_produto='"+cod+"' OR nome='"+nome+"' OR fabricante='"+fabricante+"' ;" ;
        try {
            //preparando statement para inserção
            PreparedStatement stmt = conexao.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery(sql);

            List<Produto> Produtos = new ArrayList<Produto>();

            while (rs.next()) {
                //criando obj ProdutoBean
               
                produto.setCod_produto(rs.getInt("cod_produto"));
                produto.setNome(rs.getString("nome"));
                produto.setDescricao(rs.getString("descricao"));
                produto.setPreco(rs.getInt("preco"));
                produto.setQuantidade(rs.getInt("quantidade"));
                produto.setFabricante(rs.getString("fabricante"));
                
                
                //adicionando obj à lista
                Produtos.add(produto);
            }

            rs.close();
            stmt.close();
            return Produtos;

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public List<Produto> buscaAlterar(int cod, String nome){

    conexao = iniciarConexao();
    Produto produto = new Produto();
    String sql = "SELECT * FROM ecompra.produto WHERE " +
            "cod_produto='"+cod+"' AND nome='"+nome+"'; " ;
    try {
        //preparando statement para inserção
        PreparedStatement stmt = conexao.prepareStatement(sql);
        ResultSet rs = stmt.executeQuery(sql);

        List<Produto> Produtos = new ArrayList<Produto>();

        while (rs.next()) {
            //criando obj ProdutoBean

            produto.setCod_produto(rs.getInt("cod_produto"));
            produto.setNome(rs.getString("nome"));
            produto.setDescricao(rs.getString("descricao"));
            produto.setPreco(rs.getInt("preco"));
            produto.setQuantidade(rs.getInt("quantidade"));
            produto.setFabricante(rs.getString("fabricante"));


            //adicionando obj à lista
            Produtos.add(produto);
        }

        rs.close();
        stmt.close();
        return Produtos;

    } catch (SQLException e) {
        throw new RuntimeException(e);
    }
    }

    public List<Produto> alterarProduto(int cod, String nome, String descricao, int preco, int quantidade, String fabricante){

        conexao = iniciarConexao();
        String sql = "";
        //update tabela SET campo='valor'  WHERE tabela.campo=valor;
        sql = "UPDATE ecompra.produto SET nome='"+nome+"', descricao='"+descricao+"', " +
                "preco='"+preco+"', quantidade='"+quantidade+"', fabricante='"+fabricante+"' " +
                "WHERE cod_produto='"+cod+"'; ";

        System.out.println(sql);
        
        try {
            //preparando statement para inserção
            PreparedStatement stmt = conexao.prepareStatement(sql);
            stmt.executeUpdate(sql);

            stmt.close();
            return null;
            
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

}
    
    public List<Produto> excluirProduto(int cod){
        conexao = iniciarConexao();
        Produto produto = new Produto();
        String sql = "";
        //update tabela SET campo='valor'  WHERE tabela.campo=valor;
        sql = "DELETE FROM ecompra.produto WHERE produto.cod_produto="+cod+"; ";

        cod = produto.getCod_produto();
        System.out.println(sql);

        try {
            //preparando statement para inserção
            PreparedStatement stmt = conexao.prepareStatement(sql);
            stmt.executeUpdate(sql);
            stmt.close();
            return null;

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
