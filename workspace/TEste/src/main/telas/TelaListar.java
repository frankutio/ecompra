package main.telas;

import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.ArrayList;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;

import main.bancoDeDados.ClienteDao;
import main.bean.ClienteBean;

public class TelaListar extends TelaAbstrata implements ActionListener{

	private static TelaListar instancia = null;
	
	private ArrayList<ClienteBean> usuariosCadastrados = null;
	private JButton voltar;
	
	public static TelaListar getInstancia(){
/*		if(instancia==null){
			instancia=new TelaListar();
		}else{
			instancia.reset();
		}*/
		instancia=new TelaListar();
		return instancia;
	}
	
	private TelaListar(){
		super();
	}
	
	@Override
	protected void montaTela() {
		
		usuariosCadastrados = ClienteDao.getInstancia().getListaUsuarios();
		int totalLinhasTela ;
		if( usuariosCadastrados == null || usuariosCadastrados.size()==0 ){
			totalLinhasTela=3;
		}else{
			totalLinhasTela=usuariosCadastrados.size()+3;
		}
		voltar = new JButton("Voltar");
		voltar.setActionCommand("voltar");
		voltar.addActionListener(this);
		
		painel.setLayout(new GridLayout(totalLinhasTela,4));
		painel.add(new JLabel("Lista de usuarios cadastrados"));
		painel.add(new JLabel(" "));
		painel.add(new JLabel(" "));
		painel.add(new JLabel(" "));
		if( usuariosCadastrados == null || usuariosCadastrados.size()==0 ){
			painel.add(new JLabel("Nao ha usuarios cadastrados."));
			painel.add(new JLabel(" "));
			painel.add(new JLabel(" "));
			painel.add(new JLabel(" "));
			
		}else{
			painel.add(new JLabel("Nome"));
			painel.add(new JLabel("E-mail"));
			painel.add(new JLabel("Alterar"));
			painel.add(new JLabel("Excluir"));
			JButton botao;
			for( ClienteBean user : usuariosCadastrados ){
				painel.add(new JLabel( user.getNome() ));
				painel.add(new JLabel( user.getEmail() ));
				botao = new JButton( "Alterar" );
				botao.setActionCommand("a"+user.getCpf());
				botao.addActionListener(this);
				painel.add(botao);
				botao = new JButton( "Excluir" );
				botao.setActionCommand("e"+user.getCpf());
				botao.addActionListener(this);
				painel.add(botao);
			}
		}
		painel.add(voltar);
		painel.add(new JLabel(" "));
		painel.add(new JLabel(" "));
		painel.add(new JLabel(" "));
		
		this.setLocation(posX, posY);
		this.setSize( 400 , 30*totalLinhasTela );
		this.getContentPane().add(painel);
		this.setTitle("Lista de usuarios cadastrados");
		this.setDefaultCloseOperation(JFrame.DO_NOTHING_ON_CLOSE);
		this.setResizable(false);
	}

	@Override
	protected void reset() {
		
	}

	@Override
	public void actionPerformed(ActionEvent arg0) {
		if( arg0.getActionCommand().equals("voltar") ){
			this.esconde();
			TelaOpcoes.getInstancia().apresenta();
		}else{
			ClienteBean userAcao = ClienteDao.getInstancia().getUsuario( Integer.parseInt( arg0.getActionCommand().substring(1) ) );
			if( arg0.getActionCommand().substring(0, 1).equals("a") ){//alteracao
				this.esconde();
				TelaAlterar tela = TelaAlterar.getInstancia(userAcao);
				tela.setUsuario(userAcao);
				tela.apresenta();
			}else{//exclusao
				if( JOptionPane.showConfirmDialog(	this, "Confirma exclusao de '"+userAcao.getNome()+"'?",
													"Confirmacao de exclusao",JOptionPane.OK_CANCEL_OPTION)==0 ){
					ClienteDao.getInstancia().exclui(userAcao.getCpf());
					this.esconde();
					JOptionPane.showMessageDialog(null, "Usuario excluido com sucesso.");
					TelaListar.getInstancia().apresenta();
				}
			}
		}
	}
}