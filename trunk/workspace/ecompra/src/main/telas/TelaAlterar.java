package main.telas;

import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPasswordField;
import javax.swing.JTextField;

import main.bancoDeDados.UsuarioDao;
import main.bean.ClienteBean;

public class TelaAlterar extends TelaAbstrata implements ActionListener{

	private static TelaAlterar instancia = null;

	private JTextField nome ;
	private JTextField email ;
	private JPasswordField pass ;
	private JPasswordField passConfirm ;
	private JButton salvar ;
	private JButton cancelar ;
	private ClienteBean usuario = null;

	public static TelaAlterar getInstancia( ClienteBean usuario ){
		if( instancia==null ){
			instancia=new TelaAlterar();
		}
		instancia.setUsuario(usuario);
		instancia.reset();
		
		return instancia;
	}
	
	private TelaAlterar(){
		super();
	}
	
	public void setUsuario( ClienteBean usuario ){
		this.usuario=usuario;
	}
	
	@Override
	protected void montaTela() {
		
		nome = new JTextField();
		email = new JTextField();
		pass = new JPasswordField();
		passConfirm = new JPasswordField();
		
		salvar = new JButton("Salvar");
		salvar.setActionCommand("salvar");
		salvar.addActionListener( this );
		
		cancelar = new JButton("Cancelar");
		cancelar.setActionCommand("cancelar");
		cancelar.addActionListener( this );
		
		painel.setLayout(new GridLayout(6,2));
		painel.add(new JLabel("Inserir novo usuario"));
		painel.add(new JLabel(" "));
		painel.add(new JLabel("Nome"));
		painel.add( nome );
		painel.add(new JLabel("e-mail"));
		painel.add( email );
		painel.add(new JLabel("Nova senha"));
		painel.add( pass );
		painel.add(new JLabel("Confirme nova senha"));
		painel.add( passConfirm );
		painel.add( salvar );
		painel.add( cancelar );
		
		this.setLocation(posX, posY);
		this.setSize(400, 200);
		this.getContentPane().add(painel);
		this.setTitle("Tela de alteracao de usuarios");
		this.setDefaultCloseOperation(JFrame.DO_NOTHING_ON_CLOSE);
		this.setResizable(false);
	}
	
	@Override
	protected void reset(  ) {
		//nome.setText(usuario.getNome());
		email.setText(usuario.getEmail());
		pass.setText("");
		passConfirm.setText("");
	}
	
	@Override
	public void actionPerformed(ActionEvent arg0) {
		if( arg0.getActionCommand().equals("salvar") ){
			if( nome.getText().isEmpty() || email.getText().isEmpty() ||
					pass.getText().isEmpty() || passConfirm.getText().isEmpty() ){
				JOptionPane.showMessageDialog(this, "Todos os campos sao obrigatorios.");
			//verifica se a confirmacao de senha esta correta	
			}else if( pass.getText().equals(passConfirm.getText())==false ){
				JOptionPane.showMessageDialog(this, "Confirmacao de senha incorreta.");
			}else if( UsuarioDao.getInstancia().verificaUsuarioExixtente(email.getText(), usuario.getCpf() ) ){
				JOptionPane.showMessageDialog(this, "Usuario jah cadastrado.");
			}else{
				//efetua cadastro
				//usuario.setNome( nome.getText() );
				usuario.setEmail(email.getText());
				usuario.setSenha(pass.getText());
				UsuarioDao.getInstancia().save(usuario);
				JOptionPane.showMessageDialog(this, "Dados cadastrados com sucesso.");
				this.esconde();
				TelaListar.getInstancia().apresenta();
			}
		}else{//cancela
			this.esconde();
			TelaListar.getInstancia().apresenta();
		}
	}
}