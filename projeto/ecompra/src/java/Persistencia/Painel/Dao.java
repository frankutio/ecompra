package Persistencia.Painel;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Thiago
 * Classe generica para gravação no banco de dados.

 * @param <T> Tipificação a ser utilizada pelo Dao. Em geral,
 * o Bean que será persistido.
 */
public abstract class Dao<T> {

    protected Connection conexao;
    private String driver = "com.mysql.jdbc.Driver";
    private String enderecoServidorBd = "localhost";
    private String portaServidorBd = "3306";
    private String nomeSchema = "ecompra";
    private String stringConexao =
            "jdbc:mysql://" + enderecoServidorBd + ":"
            + portaServidorBd + "/" + nomeSchema;
    private String usuarioBd = "root";
    private String senhaUserBd = "root";


    public Dao() {
        try {
            Class.forName(driver);

            Connection conexao = iniciarConexao();

            if (conexao == null) {
                throw new Exception("Sem conexao com banco.");
            } else {
                fecharConexao(conexao);
            }

        } catch (ClassNotFoundException ex) {
            System.out.println("Não foi possível carregar o driver.");
            ex.printStackTrace();
        } catch (SQLException ex) {
            System.out.println("Problema com o SQL");
            ex.printStackTrace();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }


 
    protected Connection iniciarConexao() {
        Connection conexao;
        try {
            conexao = DriverManager.getConnection(stringConexao, usuarioBd, senhaUserBd);
        } catch (SQLException ex) {
            System.out.println("Problema com o SQL");
            ex.printStackTrace();
            return null;
        }
        return conexao;
    }

    protected boolean fecharConexao(Connection conexao) {
        try {
            conexao.close();
            System.out.println("Desconectado");
        } catch (SQLException ex) {
            System.out.println("Problema com o SQL");
            ex.printStackTrace();
            return false;
        }
        return true;
    }

    /**
     * Salva o objeto. Deve seguir a seguinte regra:
     * - se a identificação for 0, novo objeto
     * - Se a identificação for diferente de zero, alteração
     * @param obj O objeto a ser salvo
     * @return O objeto inserido
     */
    public abstract T save(T obj);

    protected abstract T incluir(T obj);

    protected abstract T altera(T obj);

    /**
     * Deleta o objeto
     * @param obj O objeto a ser encontrado na base para exclusão
     * @return O objeto excluído.
     */
    public abstract T delete(T obj);
}
