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

public class TelaIncluir extends TelaAbstrata implements ActionListener{

	private static TelaIncluir instancia = null;
	
	private JTextField nome ;
	private JTextField email ;
	private JPasswordField pass ;
	private JPasswordField passConfirm ;
	private JButton salvar ;
	private JButton cancelar ;
	
	public static TelaIncluir getInstancia(){
		if( instancia==null ){
			instancia=new TelaIncluir();
		}else{
			instancia.reset();
		}
		return instancia;
	}
	
	private TelaIncluir(){
		super();
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
		painel.add(new JLabel("Senha"));
		painel.add( pass );
		painel.add(new JLabel("Confirme sua senha"));
		painel.add( passConfirm );
		painel.add( salvar );
		painel.add( cancelar );
		
		this.setLocation(posX, posY);
		this.setSize(400, 200);
		this.getContentPane().add(painel);
		this.setTitle("Tela de cadastro de usuarios");
		this.setDefaultCloseOperation(JFrame.DO_NOTHING_ON_CLOSE);
		this.setResizable(false);
	}

	@Override
	protected void reset() {
		nome.setText("");
		email.setText("");
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
			}else if( UsuarioDao.getInstancia().verificaUsuarioExixtente(email.getText(), 0 ) ){
				JOptionPane.showMessageDialog(this, "Usuario ja cadastrado.");
			}else{
				//efetua cadastro
				ClienteBean user = new ClienteBean( 0 , nome.getText() , email.getText() , pass.getText() );
				UsuarioDao.getInstancia().save(user);
				JOptionPane.showMessageDialog(this, "Dados cadastrados com sucesso.");
				this.esconde();
				TelaListar.getInstancia().apresenta();
			}
		}else{//cancela
			this.esconde();
			TelaOpcoes.getInstancia().apresenta();
		}
	}
}
