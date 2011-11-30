<%@page contentType="text/html" pageEncoding="ISO-8859-1" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    String mensagem = (String) session.getAttribute("msgError");
    if (mensagem != null) {
        session.removeAttribute("msgError");
    }
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
        <title>e-Compra</title>
        <link rel="stylesheet" type="text/css" href="/ecompra/public/css/geral.css" />
    </head>
    <body class="body">
        <form method="post" action="LoginF">
            <div id="topo">&nbsp;
                <div id="carrinho"><a href="/ecompra/cliente_carrinho.jsp" class="setaLink"><img src="/ecompra/public/image/icones/ic_carrinho.gif" border="0" /><span class="texto_opcoes">Meu carrinho</span></a></div>
                <div id="cadastro"><a href="/ecompra/cliente_cadastro.jsp"  class="setaLink"><img src="/ecompra/public/image/icones/ic_cadastro.gif" border="0" /><span class="texto_opcoes" >Cadastre-se aqui!</span></a></div>
                <div id="login"><a href="/ecompra/cliente_logiin.jsp" class="setaLink"><img src="/ecompra/public/image/icones/ic_login.gif" border="0"/><span class="texto_opcoes">Login</span></a></div>
            </div>
            <div class="clear"></div>
            <div id="logo"><a href="/ecompra/index.jsp"><img src="/ecompra/public/image/logo3.gif" border="0" title="Retornar para a loja!" class="setaLink"  /></a></div>
            <div class="clear"></div>

            <div id="menu_super">
                <p class="barNav">
                    <a href="caminho/arquivo.html" >ACESSÓRIOS E PERIFÉRICOS</a>
                    <a href="caminho/arquivo.html">ARMAZENAMENTO</a>
                    <a href="caminho/arquivo.html">IMPRESS&Atilde;O E IMAGEM </a>
                    <a href="/ecompra/cliente_monitores.jsp" title="Monitores">MONITORES</a>
                    <a href="/ecompra/cliente_computadores.jsp" title="Computadores">COMPUTADORES</a>
                    <a href="/ecompra/cliente_notebooks.jsp" title="Notebooks" >NOTEBOOKS </a>
                </p>
            </div>
            <div class="clear"></div>
            <div id="localizador"><span class="texto_localizador">HOME/LOGIN</span></div>
            <div id="menu_lateral">
                <table width="100%" border="0">
                    <tr>
                        <td width="16%"><img src="/ecompra/public/image/icones/ic_notebook.gif"  /></td>
                        <td width="84%" class="tituloMenu">Notebooks</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="fonteItenMenu setaLink"><a href="/ecompra/cliente_notebooks.jsp" class="setaLink" title="Notebooks">Notebooks</a></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="fonteItenMenu setaLink">Netbooks</td>
                    </tr>
                    <tr>
                        <td><img src="/ecompra/public/image/icones/ic_informatica.gif" width="28" height="36" /></td>
                        <td class="tituloMenu">Computadores</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="fonteItenMenu setaLink"><a href="/ecompra/cliente_computadores.jsp" class="setaLink" title="Computadores">Computadores</a></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="fonteItenMenu setaLink">All in One </td>
                    </tr>
                    <tr>
                        <td><img src="/ecompra/public/image/icones/ic_monitor.gif" /></td>
                        <td class="tituloMenu">Monitores</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="fonteItenMenu setaLink"><a href="/ecompra/cliente_monitores.jsp" class="setaLink" title="Monitores de LED">Monitores de LED</a> </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="fonteItenMenu setaLink">Monitores LCD </td>
                    </tr>
                    <tr>
                        <td><img src="/ecompra/public/image/icones/ic_impressao.gif"  /></td>
                        <td class="tituloMenu">Impress&atilde;o e Imagem </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="fonteItenMenu setaLink">Impressoras</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="fonteItenMenu setaLink">Scanners</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="fonteItenMenu setaLink">Multifuncionais</td>
                    </tr>
                    <tr>
                        <td><img src="/ecompra/public/image/icones/ic_armazenamento.gif"  /></td>
                        <td class="tituloMenu">Armazenamento</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="fonteItenMenu setaLink">Pen-Drives</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="fonteItenMenu setaLink">HD Externo </td>
                    </tr>
                    <tr>
                        <td><img src="/ecompra/public/image/icones/ic_acessorios.gif"  /></td>
                        <td class="tituloMenu">Acess&oacute;rios e Perif&eacute;ricos </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="fonteItenMenu setaLink">Teclado</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="fonteItenMenu setaLink">Caixa de som  </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="fonteItenMenu setaLink">Mouse</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="fonteItenMenu setaLink">Webcam</td>
                    </tr>
                </table>
            </div>

            <div id="conteudo_login">
            <%
                if (mensagem != null) {
            %><div id="mensagem_erro"><%=mensagem%></div><%

                }
            %>
                <table width="100%" border="0" id="tabela_login">
                    <tr>
                        <td width="18%" align="right">Login:</td>
                        <td colspan="2"><label>
                                <input name="txt_login" type="text" value="" />
                            </label></td>
                    </tr>
                    <tr >
                        <td align="right">Senha:</td>
                        <td colspan="2"><input name="txt_senha" type="password" value="" /></td>
                    </tr>
                    <tr >
                        <td height="48" colspan="2" align="center"><input type="submit" value="Entrar" class="botao setaLink"  />&nbsp;
                            <a href="/ecompra/cliente_cadastro.jsp"><input name="button" type="button" value="Cadastre-se aqui!" class="botao setaLink"  /></a></td>
                        <td width="54%" align="left">&nbsp;</td>
                    </tr>
                </table>
            </div>
            <div id="promocao">
                <img src="/ecompra/public/image/promocao/promo1.jpg" /><br /><br />
                <img src="/ecompra/public/image/promocao/promo2.jpg" /><br /><br />
                <img src="/ecompra/public/image/promocao/promo3.jpg" />
            </div>

            <div class="clear"></div>
            <div id="icone_tree"><a href="#"><img src="/ecompra/public/image/tree.png" class="setaLink" title="O e-Compra possui reponsabilidade ambiental!"  /></a></div>

            <div class="clear"></div>

            <div id="rodape" class="fonteItenMenu setaLink">e-compra &reg;</div>
        </form>
    </body>
</html>
