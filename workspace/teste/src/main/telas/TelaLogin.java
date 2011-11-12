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

public class TelaLogin extends TelaAbstrata implements ActionListener{
	
	private static TelaLogin instancia = null;
	
	private JTextField email ;
	private JPasswordField pass ;
	private JButton entrar ;
	private JButton sair ;
	
	public static TelaLogin getInstancia(){
		if( instancia==null ){
			instancia = new TelaLogin();
		}else{
			instancia.reset();
		}
		return instancia;
	}
	
	private TelaLogin(){
		super();
	}
	
	@Override
	protected void montaTela(){
		
		email = new JTextField(20);
		pass = new JPasswordField(20);
		entrar = new JButton("Entrar");
		entrar.setActionCommand("entrar");
		entrar.addActionListener( this );
		
		sair = new JButton("Sair do sistema");
		sair.setActionCommand("sair");
		sair.addActionListener( this );
		
		painel.setLayout(new GridLayout(3, 2));
		painel.add(new JLabel("E-mail"));
		painel.add(email);
		painel.add(new JLabel("Senha"));
		painel.add(pass);
		painel.add(entrar);
		painel.add(sair);
		
		this.setLocation(posX, posY);
		this.setSize(400, 100);
		this.getContentPane().add(painel);
		this.setTitle("Tela de cadastro de usuarios");
		this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		this.setResizable(false);
	}
	
	@Override
	protected void reset(){
		email.setText("") ;
		pass.setText("") ;
	}
	
	@Override
	public void actionPerformed(ActionEvent e) {
//Get no UsuarioDao
		if( e.getActionCommand().equals("entrar") ){
			if( UsuarioDao.getInstancia().logar(email.getText(), pass.getText() ) == true ){
				System.out.println("logou");
				this.esconde();
				TelaOpcoes.getInstancia().apresenta();
				
			}else{
				JOptionPane.showMessageDialog(this, "Usuario ou senha invalido");
			}
		}else{
			//sair
			System.exit(0);
		}

	}
}