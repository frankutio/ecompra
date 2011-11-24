package Controle.Portal;

import Entidade.Portal.Impl.Cliente;
import Persistencia.Portal.Impl.ClienteDao;
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
public class ClienteServlet extends HttpServlet {

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
        String proximaPagina = "";
        PrintWriter out = response.getWriter();

        // capturando parametros
        String cpf = request.getParameter("txt_cpf");
        String nome = request.getParameter("txt_nome");
        String endereco = request.getParameter("txt_endereco");
        String cidade = request.getParameter("txt_cidade");
        String uf = request.getParameter("select_uf");
        String tel_fixo = request.getParameter("txt_tel_fixo");
        String tel_cel = request.getParameter("txt_tel_cel");
        String sexo = request.getParameter("radio");
        String estado_civil = request.getParameter("select_estado_civil");
        String email = request.getParameter("txt_email");
        String login = request.getParameter("txt_login");
        String senha = request.getParameter("txt_senha");
        String conf_senha = request.getParameter("txt_conf_senha");

        //instanciando objeto de entidade
        Cliente cliente = new Cliente();
        cliente.setCpf(Integer.parseInt(cpf));
        cliente.setNome(nome);
        cliente.setEndereco(endereco);
        cliente.setCidade(cidade);
        cliente.setUf(uf);
        cliente.setTel_fixo(Integer.parseInt(tel_fixo));
        cliente.setTel_fixo(Integer.parseInt(tel_cel));
        cliente.setEmail(email);
        cliente.setSenha(senha);
        cliente.setSexo(sexo);
        cliente.setEstado_civil(estado_civil);
        cliente.setEmail(email);
        cliente.setLogin(login);
        cliente.setSenha(senha);
        cliente.setConf_senha(conf_senha);

        //INCLUIR CLIENTE
        if (operacao.equals("cadastro_cliente")) {
            //instanciando objeto Dao
            ClienteDao dao = new ClienteDao();
           // dao.save(cliente);
           dao.incluir(cliente);

            
            proximaPagina = "index.jsp";
        }else if (operacao.equals("editar_cliente")){
            //EDITAR CLIENTE
        }



        //testando se foi adicionado na entidade
        out.println("<html>");
        out.println("<body>");
        out.println("Cliente " + cliente.getNome() + ", adicionado com sucesso");
        out.println("</body>");
        out.println("</html>");
        out.flush();
        out.close();



        //PARA DIRECIONAR AS PAGINAS PARA O LOCAL CERTO.
        RequestDispatcher rd = request.getRequestDispatcher(proximaPagina);
        rd.forward(request, response);


    }
}
