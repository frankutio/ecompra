package Controle.Painel;

import Controle.Painel.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Controle.Service.LoginPainelService;
import View.Mensagens;
import Entidade.Painel.Impl.Administrador;

public class LoginPainelServlet extends HttpServlet {

    public LoginPainelServlet() {
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
            response.sendRedirect("index_painel.jsp");
        }


    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String login = (String) request.getParameter("txt_login");
        String senha = (String) request.getParameter("txt_senha");

        LoginPainelService loginService = new LoginPainelService();

        Administrador usuarioLogado = loginService.adminLogar(login, senha);

        //ADMINISTRADOR
         if (usuarioLogado != null) {
            request.getSession().setAttribute("usuarioLogado", usuarioLogado);
            response.sendRedirect("/ecompra/Painel/painel_logado.jsp");
        } else {
            request.getSession().setAttribute("msgError", Mensagens.msgErroLogin);
            response.sendRedirect("index_painel.jsp");
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
