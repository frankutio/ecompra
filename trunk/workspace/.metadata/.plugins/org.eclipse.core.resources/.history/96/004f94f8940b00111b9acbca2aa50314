package controle.portal;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import main.bancoDeDados.ClienteDao;
import main.bean.ClienteBean;

public class IncluirClienteServlet extends HttpServlet { 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
	throws ServletException, IOException {
		//SERVLET incluirCliente
		
		PrintWriter out = response.getWriter();
		
	// capturando parametros 
		String cpf = request.getParameter("cpf"); 
		String email= request.getParameter("email");
		String senha = request.getParameter("senha"); 
		
		
	//instanciando objeto BEAN
		ClienteBean cliente = new ClienteBean();
		//nao tenho certeza quanto ao parseInt
		cliente.setCpf(Integer.parseInt(cpf));
		cliente.setEmail(email);
		cliente.setSenha(senha);
		
			
	//encaminhando para DAO
		
		ClienteDao dao = new ClienteDao();
		dao.incluirCliente(cliente);
		
		//testando se foi adicionado
		out.println("<html>");
		out.println("<body>");
		out.println("Cliente, email" + cliente.getEmail() + ", adicionado com sucesso");
		out.println("</body>");
		out.println("</html>");
		
	
		
		out.flush();
		out.close();
				
		
	
		
		
		
		
	} 
}
