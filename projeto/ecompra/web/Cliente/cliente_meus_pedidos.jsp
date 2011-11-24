<%@page language="java" contentType="text/html;charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="Entidade.Portal.Impl.Cliente"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
        <title>e-Compra</title>
        <link rel="stylesheet" type="text/css" href="/ecompra/public/css/geral.css" />
    </head>
    <body class="body">
        <form method="post" action="trab_diplomacao">
            <div id="topo">&nbsp;
                <div id="sair"><a href="/ecompra/Login?acao=SAIR" class="setaLink"><img src="/ecompra/public/image/icones/ic_sair.gif" border="0"/><span class="texto_opcoes">Sair</span></a></div>
                <div id="carrinho"><a href="/ecompra/Cliente/cliente_carrinho_logado.jsp" class="setaLink"><img src="/ecompra/public/image/icones/ic_carrinho.gif" border="0" /><span class="texto_opcoes">Meu carrinho</span></a></div>
                <div id="cadastro"><a href="/ecompra/Cliente/cliente_cadastro_alterar.jsp"  class="setaLink"><img src="/ecompra/public/image/icones/ic_meu_cadastro.gif" border="0" /><span class="texto_opcoes" >Meu cadastro</span></a></div>
                <div id="meus_pedidos"><a href="/ecompra/Cliente/cliente_meus_pedidos.jsp" class="setaLink"><img src="/ecompra/public/image/icones/ic_meus_pedidos.gif" border="0"/><span class="texto_opcoes">Meus pedidos</span></a></div>
            </div>
            <div class="clear"></div>
            <div id="logo">
                <a href="/ecompra/Cliente/index_logado.jsp"><img src="/ecompra/public/image/logo3.gif" border="0" title="Retornar para a loja!" class="setaLink"  /></a>
            </div>
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
            <div id="localizador"><span class="texto_localizador">Bem vindo <%=((Cliente) session.getAttribute("usuarioLogado")).getNome()%>! HOME/MEUS PEDIDOS</span></div>
            <div id="banner_topo"><img src="/ecompra/public/image/promocao/banner_super.png" border="0"  /></div>

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
                <table width="100%" height="489" id="tabela_painel">
                    <tr>
                        <th height="35" colspan="5" class="fonte_titulo">Meus pedidos  </th>
                    </tr>
                    <tr class="fonteItenMenu">
                        <td height="39" colspan="5">Filtrar por:
                            <select name="select" size="1">
                                <option value="0">- Selecione -</option>
                                <option value="1">N&uacute;mero do pedido</option>
                                <option value="2">Produtos</option>
                                <option value="3">Data da compra</option>
                                <option value="4">Status</option>
                            </select>        </td>
                    </tr>
                    <tr class="fonteItenMenu alinha_centro">
                        <th width="13%" align="center"class="fonte_titulo">N&uacute;mero do pedido </th>
                        <th width="11%"  align="center"class="fonte_titulo">Data da Compra        </th>
                        <th width="21%" align="center"class="fonte_titulo">Status do pedido </th>
                        <th width="16%" align="center"class="fonte_titulo">Acompanhar<br /> pedido </th>
                    </tr>
                    <tr class="fonteItenMenu alinha_centro">
                        <td height="40" align="center">&nbsp;</td>

                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td><a href="/ecompra/Cliente/cliente_detalhe_pedido.jsp">
                                <img src="/ecompra/public/image/icones/ic_acompanhar_pedido.gif" class="setaLink" title="Acompanhar pedido" ></a></td>
                    </tr>
                    <tr class="fonteItenMenu alinha_centro">
                        <td height="67" colspan="4" align="center" class="sem_borda"><span class="sem_borda"><a href="index_logado.jsp">
                                    <input name="button" type="button" value="Cancelar" class="botao_cliente setaLink" />
                                </a></span></td>
                    </tr>

                    <tr align="center">
                        <td height="260" colspan="4" class="sem_borda">&nbsp;&nbsp;</td>
                    </tr>
                </table>
            </div>
            <div id="promocao">
                <img src="/ecompra/public/image/promocao/promo1.jpg" /><br /><br />
                <img src="/ecompra/public/image/promocao/promo2.jpg" /><br /><br />
                <img src="/ecompra/public/image/promocao/promo3.jpg" />
            </div>
            <div class="clear"></div>
            <div class="clear"></div>
            <div id="icone_tree"><a href="#"><img src="/ecompra/public/image/tree.png" class="setaLink" title="O e-Compra possui reponsabilidade ambiental!"  /></a></div>
            <div id="rodape" class="fonteItenMenu setaLink">e-compra &reg;</div>
        </form>
    </body>
</html>
