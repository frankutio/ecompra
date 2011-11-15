package Persistencia.Portal;

import java.sql.*;
import java.util.ArrayList;
import Entidade.Portal.*;

public class ClienteDao {
    //dados para conexao com o banco VARIAVEIS

    private String nomeDriver = "com.mysql.jdbc.Driver";
    private String url = "jdbc:mysql://localhost:3306/mysql";
    private String user = "root";
    private String senha = "root";
    private Connection conexao;

    public ClienteDao() {
    }

    private boolean conectar() {

        try {

            Class.forName(nomeDriver);
            conexao = DriverManager.getConnection(url, user, senha);
            if (conexao != null) {

                System.out.println("conectado");
            }

        } catch (Exception e) {

            e.printStackTrace();
            return false;
        }
        return true;

    }

    private boolean desconectar() {
        try {
            conexao.close();
            System.out.println("Desconectado");

        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }
    //Verifica se existe usuario com email e cpf no banco

    public boolean verificaUsuarioExistente(String email, int cpf) {

        ArrayList<Cliente> listaUsuarios = new ArrayList<Cliente>();

        try {
            conectar();

            Statement stm = conexao.createStatement();
            String query;

            if (cpf == 0) {
                query = "select * from crud_usuario.tb_usuario where email='" + email + "'";
            } else {
                query = "select * from crud_usuario.tb_usuario where email='" + email + "' and cpf <> " + cpf;
            }

            System.out.println(query);

            ResultSet rs = stm.executeQuery(query);

            while (rs.next()) {
                listaUsuarios.add(
                        new Cliente(
                        rs.getInt("cpf"),
                        rs.getString("nome"),
                        rs.getString("endereco"),
                        rs.getString("estado"),
                        rs.getString("uf"),
                        rs.getInt("tel_fixo"),
                        rs.getInt("tel_cel"),
                        rs.getString("sexo"),
                        rs.getString("estado_civil"),
                        rs.getString("email"),
                        rs.getString("email"),
                        rs.getString("senha"),
                        rs.getString("conf_senha")));
            }
            stm.close();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            desconectar();
        }

        if (listaUsuarios.size() == 0) {
            return false;
        } else {
            return true;
        }
    }
    //busca todos usuarios

    public ArrayList<Cliente> getListaUsuarios() {
        ArrayList<Cliente> retorno = new ArrayList<Cliente>();

        try {
            conectar();

            Statement stm = conexao.createStatement();
            String query = "select * from crud_usuario.tb_usuario";

            System.out.println(query);

            ResultSet rs = stm.executeQuery(query);
            //criando loop p/preencher arraylist
            while (rs.next()) {

                retorno.add(
                        new Cliente(
                        rs.getInt("cpf"),
                        rs.getString("nome"),
                        rs.getString("endereco"),
                        rs.getString("estado"),
                        rs.getString("uf"),
                        rs.getInt("tel_fixo"),
                        rs.getInt("tel_cel"),
                        rs.getString("sexo"),
                        rs.getString("estado_civil"),
                        rs.getString("email"),
                        rs.getString("email"),
                        rs.getString("senha"),
                        rs.getString("conf_senha")));
            }
            stm.close();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            desconectar();
        }

        return retorno;
    }
    //Salva novo usuario ou altera existente

    public boolean save(Cliente usuario) {
//        if (usuario == null) {
//            return false;
//        }

        String sql="";

        //se cpf eh zero, eh uma inclusao
//       if (usuario.getCpf() == 0) {
            //insert into tb_usuario values (null,'nome','nome','nome')
            sql = "insert into ecompra.cliente (cpf_cliente, nome, " +
                    "endereco, estado, uf, tel_fixo, tel_cel, sexo, " +
                    "estado_civil, email, login, senha, conf_senha)" +
                    " values (?,?,?,?,?,?,?,?,?,?,?,?,?)";
//      }
//        } else {//se cpf eh diferente de zero, eh alteracao
//            sql = "update ecompra.cliente set (cpf_cliente,nome,endereco,estado,uf,tel_fixo,tel_cel,sexo,estado_civil,"
//                    + "email,login,senha,conf_senha)values (?,?,?,?,?,?,?,?,?,?,?,?,?)";
//        }
        System.out.println(sql);

        //grava no banco
        conectar();
        try {
            // prepared statement para inserção
            PreparedStatement stmt = conexao.prepareStatement(sql);

            // seta os valores
            stmt.setInt(1, usuario.getCpf());
            stmt.setString(2, usuario.getNome());
            stmt.setString(3, usuario.getEndereco());
            stmt.setString(4, usuario.getEstado());
            stmt.setString(5, usuario.getUf());
            stmt.setInt(6, usuario.getTel_fixo());
            stmt.setInt(7, usuario.getTel_cel());
            stmt.setString(8, usuario.getSexo());
            stmt.setString(9, usuario.getEstado_civil());
            stmt.setString(10, usuario.getEmail());
            stmt.setString(11, usuario.getLogin());
            stmt.setString(12, usuario.getSenha());
            stmt.setString(13, usuario.getConf_senha());


            // executa
            stmt.execute();
            stmt.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }



        return true;
    }

    public ArrayList<Cliente> buscarTodosClientes() {
        conectar();
        String sql = "select * from ecompra.cliente";

        try {
            //preparando statement para inserção
            PreparedStatement stmt = conexao.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery(sql);

            ArrayList<Cliente> clientes = new ArrayList<Cliente>();

            while (rs.next()) {
                //criando obj ClienteBean
                Cliente cliente = new Cliente();
                cliente.setNome(rs.getString("nome"));
                cliente.setCpf(rs.getInt("cpf_cliente"));
               
                //adicionando obj à lista
                clientes.add(cliente);
            }
            rs.close();
            stmt.close();
            return clientes;

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public void incluirCliente(Cliente cliente) {
        conectar();

        String sql = "insert into crud_usuario.tb_usuario (cpf,email,senha) values (?,?,?)";

        try {
            // prepared statement para inserção
            PreparedStatement stmt = conexao.prepareStatement(sql);

            // seta os valores
            stmt.setInt(1, cliente.getCpf());
            stmt.setString(2, cliente.getEmail());
            stmt.setString(3, cliente.getSenha());

            // executa
            stmt.execute();
            stmt.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    //metodo main
    public static void main() {

        ClienteDao con = new ClienteDao();



    }
}
