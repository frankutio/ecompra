package Controle.Portal;

import Entidade.Portal.Impl.ClienteTesteBean;
import Persistencia.Portal.Impl.ClienteTesteDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Tiago
 */
public class IncluirTesteServlet extends HttpServlet {

   protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
       processRequest(request, response);
       
   }
   protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
       processRequest(request, response);
   }
 protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

     //RECEBE O TIPOD E OPERACAO A REALIZAR
        String operacao = request.getParameter("operacao");
        //LOG PARA TESTE
        System.out.println("Controle Acionado com Operacao: " + operacao);

      //SERVLET Cliente

        PrintWriter out = response.getWriter();

// capturando parametros
        String cpf = request.getParameter("cpf");
        String email= request.getParameter("email");
        String senha = request.getParameter("senha");

//instanciando objeto BEAN
        ClienteTesteBean cliente = new ClienteTesteBean();
        cliente.setCpf(Integer.parseInt(cpf));
        cliente.setEmail(email);
        cliente.setSenha(senha);


//encaminhando para DAO

        ClienteTesteDao dao = new ClienteTesteDao();
        dao.incluirCliente(cliente);

        //testando se foi adicionado
        out.println("<html>");
        out.println("<body>");
        out.println("Cliente, email" + cliente.getEmail() + ", adicionado com sucesso");
        out.println("</body>");
        out.println("</html>");
        out.flush();
        out.close();




        String proximaPagina = "";

        if(operacao.equals("termoValido")){

            proximaPagina="index.jsp";
        }

        //PARA DIRECIONAR AS PAGINAS PARA O LOCAL CERTO.
        RequestDispatcher rd = request.getRequestDispatcher(proximaPagina);
        rd.forward(request, response);

    }
}
