package main.telas;

import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;

public class TelaOpcoes extends TelaAbstrata implements ActionListener{

	private static TelaOpcoes instancia = null;
	
	private JButton listar;
	private JButton incluir;
	private JButton sair;
	
	public static TelaOpcoes getInstancia(){
		if( instancia==null ){
			instancia = new TelaOpcoes();
		}else{
			instancia.reset();
		}
		return instancia;
	}
	
	public TelaOpcoes(){
		super();
	}

	@Override
	protected void montaTela() {

		listar = new JButton("Listar");
		listar.setActionCommand("listar");
		listar.addActionListener( this );
		
		incluir = new JButton("Incluir");
		incluir.setActionCommand("incluir");
		incluir.addActionListener( this );
		
		sair = new JButton("Logof");
		sair.setActionCommand("logof");
		sair.addActionListener( this );
		
		painel.setLayout(new GridLayout(4,1));
		painel.add(new JLabel("Selecione a opcao desejada"));
		painel.add(listar);
		painel.add(incluir);
		painel.add(sair);
		
		this.setLocation(posX, posY);
		this.setSize(400, 200);
		this.getContentPane().add(painel);
		this.setTitle("Tela Inicial");
		this.setDefaultCloseOperation(JFrame.DO_NOTHING_ON_CLOSE);
		this.setResizable(false);
	}
	
	@Override
	protected void reset(){
	}
	
	@Override
	public void actionPerformed(ActionEvent arg0) {
		if( arg0.getActionCommand().equals("listar") ){
			this.esconde();
			TelaListar.getInstancia().apresenta();
		}else if( arg0.getActionCommand().equals("incluir") ){
			this.esconde();
			TelaIncluir.getInstancia().apresenta();
		}else{//logof
			this.esconde();
			TelaLogin.getInstancia().apresenta();
		}
	}
	

}
