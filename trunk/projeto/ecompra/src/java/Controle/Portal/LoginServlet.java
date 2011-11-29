package Controle.Portal;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Controle.Service.LoginService;
import View.Mensagens;
import Entidade.Portal.Impl.Cliente;

public class LoginServlet extends HttpServlet {

    public LoginServlet() {
        super();
    }

    /**
     * @see Servlet#init(ServletConfig)
     */
    public void init(ServletConfig config) throws ServletException {
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        if (request.getParameter("acao").equals("SAIR")) {
            request.getSession().removeAttribute("usuarioLogado");
            request.getSession().removeAttribute("msgError");
            response.sendRedirect("index.jsp");
        }


    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String login = (String) request.getParameter("txt_login");
        String senha = (String) request.getParameter("txt_senha");

        LoginService loginService = new LoginService();

        Cliente usuarioLogado = loginService.logar(login, senha);

        if (usuarioLogado != null) {
            request.getSession().setAttribute("usuarioLogado", usuarioLogado);
            response.sendRedirect("/ecompra/Cliente/index_logado.jsp");
        } else {
            request.getSession().setAttribute("msgError", Mensagens.msgErroLogin);
            response.sendRedirect("/ecompra/Cliente/cliente_cadastro_alterar.jsp");
        }

    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {

        } finally {
            out.close();
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
