package main.telas;

import javax.swing.JFrame;
import javax.swing.JPanel;

public abstract class TelaAbstrata extends JFrame {
	
	protected JPanel painel = new JPanel();
	protected int posX = 50;
	protected int posY = 50;
	
	protected TelaAbstrata(){
		montaTela();
	}
	
	protected abstract void montaTela();
	
	protected abstract void reset();
	
	public void esconde(){
		this.setVisible(false);
	}
	public void apresenta(){
		this.setVisible(true);
	}
}
