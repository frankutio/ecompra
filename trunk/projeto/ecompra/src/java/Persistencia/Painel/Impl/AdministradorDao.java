/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package Persistencia.Painel.Impl;

import Entidade.Painel.Impl.Administrador;
import java.sql.*;
import java.util.ArrayList;
import Entidade.Painel.*;
import Persistencia.Painel.Dao;

//public class AdministradorDao extends Dao <Administrador> {
public class AdministradorDao extends Dao<Administrador> {

    //construtor
    public AdministradorDao() {
    }

    @Override
    protected Administrador alterar(Administrador obj) {
        return null;
    }

    @Override
    public Administrador delete(Administrador obj) {
        return null;
    }

    @Override
    //INCLUIR NOVO Administrador
    public Administrador incluir(Administrador usuario) {
        String sql = "";
        //insert into tb_usuario values (null,'nome','nome','nome')
        sql = "insert into ecompra.administrador (cpf_administrador, nome, "
                + "login, senha)"
                + " values (?,?,?,?)";

        System.out.println(sql);

        //grava no banco
        conexao = iniciarConexao();
        try {
            // prepared statement para inserção
            PreparedStatement stmt = conexao.prepareStatement(sql);

            // seta os valores
            stmt.setInt(1, usuario.getCpf());
            stmt.setString(2, usuario.getNome());
            stmt.setString(11, usuario.getLogin());
            stmt.setString(12, usuario.getSenha());

            // executa
            stmt.execute();
            stmt.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return null;
    }

    @Override
    public Administrador save(Administrador obj) {
        if( obj.getCpf()==0 ){
			return incluir(obj);
		}else{
			return alterar(obj);
		}
    }

    public ArrayList<Administrador> buscarTodosAdministradors() {
        conexao = iniciarConexao();
        String sql = "select * from ecompra.administrador";

        try {
            //preparando statement para inserção
            PreparedStatement stmt = conexao.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery(sql);

            ArrayList<Administrador> Administradors = new ArrayList<Administrador>();

            while (rs.next()) {
                //criando obj AdministradorBean
                Administrador Administrador = new Administrador();
                Administrador.setNome(rs.getString("nome"));
                Administrador.setCpf(rs.getInt("cpf_administrador"));

                //adicionando obj à lista
                Administradors.add(Administrador);
            }
            rs.close();
            stmt.close();
            return Administradors;

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public Administrador getByLogin(String login) {

        conexao = iniciarConexao();

        try {
            Statement stm = conexao.createStatement();
            ResultSet rs = stm.executeQuery("select * from administrador where login = '" + login + "'");

            Administrador usr = null;
            boolean passou = false;

            if (rs != null) {
                usr = new Administrador();
                while (rs.next()) {
                    usr.setCpf(rs.getInt("cpf_administrador"));
                    usr.setNome(rs.getString("nome"));
                    usr.setLogin(rs.getString("login"));
                    usr.setSenha(rs.getString("senha"));

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


