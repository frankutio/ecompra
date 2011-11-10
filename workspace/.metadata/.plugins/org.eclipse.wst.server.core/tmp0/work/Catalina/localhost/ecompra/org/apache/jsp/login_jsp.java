package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.AnnotationProcessor _jsp_annotationprocessor;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_annotationprocessor = (org.apache.AnnotationProcessor) getServletConfig().getServletContext().getAttribute(org.apache.AnnotationProcessor.class.getName());
  }

  public void _jspDestroy() {
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=ISO-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=iso-8859-1\" />\r\n");
      out.write("<title>SISVENDAS</title>\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"css/geral.css\" />\r\n");
      out.write("</head>\r\n");
      out.write("<body class=\"body\">\r\n");
      out.write("<form action=\"Main\">\r\n");
      out.write("   <div id=\"topo\">&nbsp;\r\n");
      out.write("    <div id=\"carrinho\"><a href=\"#\" class=\"setaLink\"><img src=\"icones/ic_carrinho.gif\" border=\"0\" /><span class=\"texto_opcoes\">Meu carrinho</span></a></div>\r\n");
      out.write("    <div id=\"cadastro\"><a href=\"cliente_cadastro.html\"  class=\"setaLink\"><img src=\"icones/ic_cadastro.gif\" border=\"0\" /><span class=\"texto_opcoes\" >Cadastre-se aqui!</span></a></div>\r\n");
      out.write("    <div id=\"login\"><a href=\"cliente_login.html\" class=\"setaLink\"><img src=\"icones/ic_login.gif\" border=\"0\"/><span class=\"texto_opcoes\">Login</span></a></div>\r\n");
      out.write("  </div>\r\n");
      out.write("  <div class=\"clear\"></div>\r\n");
      out.write("  <div id=\"logo\"><a href=\"index.html\"><img src=\"imagens/logo3.gif\" border=\"0\" title=\"Retornar para a loja!\" class=\"setaLink\"  /></a></div>\r\n");
      out.write("  <div class=\"clear\"></div>\r\n");
      out.write("  <div id=\"menu_super\">\r\n");
      out.write("    <p class=\"barNav\">\r\n");
      out.write("\t<a href=\"caminho/arquivo.html\" >ACESSÓRIOS E PERIFÉRICOS</a>\r\n");
      out.write("\t<a href=\"caminho/arquivo.html\">ARMAZENAMENTO</a>\r\n");
      out.write("\t<a href=\"caminho/arquivo.html\">IMPRESS&Atilde;O E IMAGEM </a>\r\n");
      out.write("\t<a href=\"caminho/arquivo.html\">MONITORES</a>\r\n");
      out.write("\t<a href=\"caminho/arquivo.html\">COMPUTADORES</a>\r\n");
      out.write("\t<a href=\"caminho/arquivo.html\" >NOTEBOOKS </a>\r\n");
      out.write("\t</p>\r\n");
      out.write("  </div>\r\n");
      out.write("  <div class=\"clear\"></div>\r\n");
      out.write("  <div id=\"localizador\"><span class=\"texto_localizador\">Você está em LOGIN.</span></div>\r\n");
      out.write("  <div id=\"menu_lateral\">\r\n");
      out.write("    <table width=\"100%\" border=\"0\">\r\n");
      out.write("      <tr>\r\n");
      out.write("        <td width=\"16%\"><img src=\"icones/ic_notebook.gif\"  /></td>\r\n");
      out.write("        <td width=\"84%\" class=\"tituloMenu\">Notebooks</td>\r\n");
      out.write("      </tr>\r\n");
      out.write("      <tr>\r\n");
      out.write("        <td>&nbsp;</td>\r\n");
      out.write("        <td class=\"fonteItenMenu\">Computadores</td>\r\n");
      out.write("      </tr>\r\n");
      out.write("      <tr>\r\n");
      out.write("        <td>&nbsp;</td>\r\n");
      out.write("        <td class=\"fonteItenMenu\">Notebooks</td>\r\n");
      out.write("      </tr>\r\n");
      out.write("      <tr>\r\n");
      out.write("        <td>&nbsp;</td>\r\n");
      out.write("        <td class=\"fonteItenMenu\">Netbooks</td>\r\n");
      out.write("      </tr>\r\n");
      out.write("      <tr>\r\n");
      out.write("        <td>&nbsp;</td>\r\n");
      out.write("        <td class=\"fonteItenMenu\">Monitores</td>\r\n");
      out.write("      </tr>\r\n");
      out.write("      <tr>\r\n");
      out.write("        <td>&nbsp;</td>\r\n");
      out.write("        <td class=\"fonteItenMenu\">Impressoras</td>\r\n");
      out.write("      </tr>\r\n");
      out.write("      <tr>\r\n");
      out.write("        <td>&nbsp;</td>\r\n");
      out.write("        <td class=\"fonteItenMenu\">Componentes</td>\r\n");
      out.write("      </tr>\r\n");
      out.write("      <tr>\r\n");
      out.write("        <td><img src=\"icones/ic_informatica.gif\" width=\"28\" height=\"36\" /></td>\r\n");
      out.write("        <td class=\"tituloMenu\">Computadores</td>\r\n");
      out.write("      </tr>\r\n");
      out.write("      <tr>\r\n");
      out.write("        <td>&nbsp;</td>\r\n");
      out.write("        <td class=\"fonteItenMenu\">C&acirc;meras digitais </td>\r\n");
      out.write("      </tr>\r\n");
      out.write("      <tr>\r\n");
      out.write("        <td>&nbsp;</td>\r\n");
      out.write("        <td class=\"fonteItenMenu\">Filmadoras </td>\r\n");
      out.write("      </tr>\r\n");
      out.write("      <tr>\r\n");
      out.write("        <td><img src=\"icones/ic_monitor.gif\" /></td>\r\n");
      out.write("        <td class=\"tituloMenu\">Monitores</td>\r\n");
      out.write("      </tr>\r\n");
      out.write("      <tr>\r\n");
      out.write("        <td><img src=\"icones/ic_impressao.gif\"  /></td>\r\n");
      out.write("        <td class=\"tituloMenu\">Impress&atilde;o e Imagem </td>\r\n");
      out.write("      </tr>\r\n");
      out.write("      <tr>\r\n");
      out.write("        <td><img src=\"icones/ic_armazenamento.gif\"  /></td>\r\n");
      out.write("        <td class=\"tituloMenu\">Armazenamento</td>\r\n");
      out.write("\t  <tr>\r\n");
      out.write("      </TR>\r\n");
      out.write("        <td><img src=\"icones/ic_acessorios.gif\"  /></td>\r\n");
      out.write("        <td class=\"tituloMenu\">Acess&oacute;rios e Perif&eacute;ricos </td>\r\n");
      out.write("      </tr>\r\n");
      out.write("    </table>\r\n");
      out.write("  </div>\r\n");
      out.write("  \r\n");
      out.write("  <div id=\"conteudo_login\">\r\n");
      out.write("    <table width=\"100%\" border=\"0\" id=\"tabela_login\">\r\n");
      out.write("      <tr>\r\n");
      out.write("        <td width=\"18%\" align=\"right\">Login:</td>\r\n");
      out.write("        <td colspan=\"2\"><label>\r\n");
      out.write("          <input name=\"txt_login\" type=\"text\" value=\"\" />\r\n");
      out.write("        </label></td>\r\n");
      out.write("      </tr>\r\n");
      out.write("      <tr >\r\n");
      out.write("        <td align=\"right\">Senha:</td>\r\n");
      out.write("        <td colspan=\"2\"><input name=\"txt_senha\" type=\"text\" value=\"\" /></td>\r\n");
      out.write("      </tr>\r\n");
      out.write("      <tr >\r\n");
      out.write("        <td height=\"48\" colspan=\"2\" align=\"center\"><input type=\"submit\" value=\"Entrar\" class=\"botao setaLink\"  />&nbsp;\r\n");
      out.write("        <a href=\"cliente_cadastro.html\"><input name=\"button\" type=\"button\" value=\"Cadastre-se aqui!\" class=\"botao setaLink\"  /></a></td>\r\n");
      out.write("        <td width=\"54%\" align=\"left\">&nbsp;</td>\r\n");
      out.write("      </tr>\r\n");
      out.write("    </table>\r\n");
      out.write("  </div>\r\n");
      out.write("  <div id=\"promocao\">\r\n");
      out.write("  \t<img src=\"imagens/promocao/promo1.jpg\" /><br /><br />\r\n");
      out.write("\t<img src=\"imagens/promocao/promo2.jpg\" /><br /><br />\r\n");
      out.write("\t<img src=\"imagens/promocao/promo3.jpg\" />\r\n");
      out.write("\t</div>\r\n");
      out.write("  <div class=\"clear\"></div>\r\n");
      out.write("  \r\n");
      out.write("  <div id=\"rodape\" class=\"fonteItenMenu\">e-compra &reg;</div>\r\n");
      out.write("</form>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
