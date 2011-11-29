package Persistencia.Portal.Impl;

import Entidade.Portal.Impl.Cliente;
import java.sql.*;
import java.util.ArrayList;
import Persistencia.Portal.Dao;
import java.util.List;

//public class ClienteDao extends Dao <Cliente> {
public class ClienteDao extends Dao<Cliente> {

    //construtor
    public ClienteDao() {
    }
    private static ClienteDao instance = new ClienteDao();

    public static ClienteDao getInstance() {
        return instance;
    }


    @Override
    protected Cliente altera(Cliente obj) {
        return null;
    }

    @Override
    public Cliente delete(Cliente obj) {
        return null;
    }

    @Override
    //INCLUIR NOVO CLIENTE
    public Cliente incluir(Cliente usuario) {
        String sql = "";
        //insert into tb_usuario values (null,'nome','nome','nome')
        sql = "insert into ecompra.cliente (cpf_cliente, nome, "
                + "endereco, cidade, uf, tel_fixo, tel_cel, sexo, "
                + "estado_civil, email, login, senha, conf_senha)"
                + " values (?,?,?,?,?,?,?,?,?,?,?,?,?)";

        System.out.println(sql);
        conexao = iniciarConexao();
        try {
            // prepared statement para inserção
            PreparedStatement stmt = conexao.prepareStatement(sql);

            // seta os valores
            stmt.setInt(1, usuario.getCpf());
            stmt.setString(2, usuario.getNome());
            stmt.setString(3, usuario.getEndereco());
            stmt.setString(4, usuario.getCidade());
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
        return null;
    }

    @Override
    public Cliente save(Cliente obj) {
        if( obj.getCpf()==0 ){
			return incluir(obj);
		}else{
			return altera(obj);
		}
    }

    public ArrayList<Cliente> buscarTodosClientes() {
        conexao = iniciarConexao();
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
    public List<Cliente> alterarCliente(int cpf, String nome, String endereco, String cidade,String uf, int tel_fixo, int tel_cel, String sexo, String estado_civil, String email, String login, String senha, String conf_senha){

        conexao = iniciarConexao();
        String sql = "UPDATE ecompra.cliente SET nome='"+nome+"', endereco='"+endereco+"', " +
                "cidade='"+cidade+"', uf='"+uf+"', tel_fixo='"+tel_fixo+"', " +
                "tel_cel='"+tel_cel+"', sexo='"+sexo+"', estado_civil='"+estado_civil+"', " +
                "email='"+email+"', login='"+login+"', senha='"+senha+"', " +
                "conf_senha='"+conf_senha+"'" +
                " WHERE cpf_cliente='"+cpf+"'; ";

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

    public ArrayList<Cliente> buscaAlterar(int cpf) {

        String sql = "select * from ecompra.cliente WHERE cpf_cliente='"+cpf+"'";
        conexao = iniciarConexao();
        try {
            //preparando statement para inserção
            PreparedStatement stmt = conexao.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery(sql);

            ArrayList<Cliente> clientes = new ArrayList<Cliente>();

            while (rs.next()) {
                //criando obj Entidade Cliente
                Cliente cliente = new Cliente();
                cliente.setCpf(rs.getInt("cpf_cliente"));
                cliente.setNome(rs.getString("nome"));
                cliente.setEndereco(rs.getString("endereco"));
                cliente.setCidade(rs.getString("cidade"));
                cliente.setUf(rs.getString("uf"));
                cliente.setTel_fixo(rs.getInt("tel_fixo"));
                cliente.setTel_cel(rs.getInt("tel_cel"));
                cliente.setSexo(rs.getString("sexo"));
                cliente.setEstado_civil(rs.getString("estado_civil"));
                cliente.setEmail(rs.getString("email"));
                cliente.setLogin(rs.getString("login"));
                cliente.setSenha(rs.getString("senha"));
                cliente.setConf_senha(rs.getString("conf_senha"));
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
    public Cliente getByLogin(String login) {

        conexao = iniciarConexao();

        try {
            Statement stm = conexao.createStatement();
            ResultSet rs = stm.executeQuery("select * from cliente where login = '" + login + "'");

            Cliente usr = null;
            boolean passou = false;

            if (rs != null) {
                usr = new Cliente();
                while (rs.next()) {
                    usr.setCpf(rs.getInt("cpf_cliente"));
                    usr.setNome(rs.getString("nome"));
                    usr.setEndereco(rs.getString("endereco"));
                    usr.setCidade(rs.getString("cidade"));
                    usr.setUf(rs.getString("uf"));
                    usr.setTel_fixo(rs.getInt("tel_fixo"));
                    usr.setTel_cel(rs.getInt("tel_cel"));
                    usr.setSexo(rs.getString("sexo"));
                    usr.setEstado_civil(rs.getString("estado_civil"));
                    usr.setEmail(rs.getString("email"));
                    usr.setLogin(rs.getString("login"));
                    usr.setSenha(rs.getString("senha"));
                    usr.setConf_senha(rs.getString("conf_senha"));
                    // usr.setAtivo(rs.getBoolean("bool_ativo"));
                    passou = true;
                }
                fecharConexao(conexao);
            }
            if (passou) {
                return usr;
            } else {
                return null;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            fecharConexao(conexao);
            return null;
        }
    }


}
