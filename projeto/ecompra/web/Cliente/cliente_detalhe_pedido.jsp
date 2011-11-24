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
            <div id="localizador"><span class="texto_localizador">Bem vindo <%=((Cliente) session.getAttribute("usuarioLogado")).getNome()%>! HOME/MEUS PEDIDOS/DETALHES PEDIDO</span></div>

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
                <table width="100%" height="709" id="tabela_painel">
                  <tr>
                    <th height="35" colspan="6" class="fonte_titulo">Detalhes do pedido</th>
                  </tr>
                  <tr class="fonteItenMenu">
                    <td height="26" colspan="6" style="font-size:14px;font-weight:bold" class="sem_borda">N&deg; do Pedido:&nbsp;</td>
                  </tr>
                  <tr class="fonteItenMenu">
                    <td height="21" colspan="6"class="sem_borda">Data do Pedido:&nbsp;</td>
                  </tr>
                  <tr class="fonteItenMenu">
                    <td height="23" colspan="6"class="sem_borda">Status do Pedido: &nbsp;</td>
                  </tr>
                  <tr class="fonteItenMenu">
                    <td height="21" colspan="6"class="sem_borda">Data do Envio:&nbsp;</td>
                  </tr>

                  <tr class="fonteItenMenu alinha_centro">
                    <th colspan="2" align="center"class="fonte_titulo">Endere&ccedil;o de Entrega </th>
                    <th width="31%"  align="center"class="fonte_titulo">Produtos</th>
                    <th width="10%" align="center"class="fonte_titulo">Quantidade</th>
                    <th width="21%" align="center"class="fonte_titulo">Pre&ccedil;o</th>
                  </tr>
                  <tr class="fonteItenMenu alinha_centro">
                    <td width="16%" align="right" class="sem_borda">Destinat&aacute;rio:</td>
                    <td width="17%" height="20" align="center" class="sem_borda">&nbsp;</td>
                    <td height="20" colspan="2" align="right" class="sem_borda">&nbsp;</td>
                    <td>&nbsp;</td>
                  </tr>
                  <tr class="fonteItenMenu alinha_centro">
                    <td align="right" class="sem_borda">Endere&ccedil;o:</td>
                    <td height="20" align="center"  class="sem_borda">&nbsp;</td>
                    <td height="20" colspan="2" align="right" class="sem_borda">&nbsp;</td>
                    <td>&nbsp;</td>
                  </tr>
                  <tr class="fonteItenMenu alinha_centro">
                    <td align="right" class="sem_borda">Cidade:</td>
                    <td height="20" align="center"  class="sem_borda">&nbsp;</td>
                    <td height="20" colspan="2" align="right" class="sem_borda">&nbsp;</td>
                    <td>&nbsp;</td>
                  </tr>
                  <tr class="fonteItenMenu alinha_centro">
                    <td align="right" class="sem_borda">UF: </td>
                    <td height="20" align="center"  class="sem_borda">&nbsp;</td>
                    <td height="20" colspan="2" align="right" class="sem_borda">&nbsp;</td>
                    <td>&nbsp;</td>
                  </tr>
                  <tr class="fonteItenMenu alinha_centro">
                    <td align="right" class="sem_borda">Cep:</td>
                    <td height="36" align="center"  class="sem_borda">&nbsp;</td>
                    <td height="36" colspan="2" align="right" class="sem_borda">&nbsp;</td>
                    <td>&nbsp;</td>
                  </tr>
                  <tr class="fonteItenMenu alinha_centro">
                    <td colspan="2" rowspan="3" align="center" >&nbsp;</td>
                    <td height="29" colspan="2" align="right" >Subtotal:</td>
                    <td>&nbsp;</td>
                  </tr>
                  <tr class="fonteItenMenu alinha_centro">
                    <td height="27" colspan="2" align="right">Frete:</td>
                    <td>&nbsp;</td>
                  </tr>
                  <tr class="fonteItenMenu alinha_centro">
                    <td height="30" colspan="2" align="right">Total:</td>
                    <td>&nbsp;</td>
                  </tr>
                  <tr class="fonteItenMenu alinha_centro">
                    <td height="67" colspan="5" align="center" class="sem_borda"><a href="index_logado.html">
                      <input name="button" type="button" value="Cancelar" class="botao_cliente setaLink" />
                    </a></td>
                  </tr>

                  <tr align="center">
                    <td height="260" colspan="5" class="sem_borda">&nbsp;&nbsp;</td>
                  </tr>
                </table>
            </div>
            <div id="promocao">
                <img src="/ecompra/public/image/imagens/promocao/promo1.jpg" /><br /><br />
                <img src="/ecompra/public/image/imagens/promocao/promo2.jpg" /><br /><br />
                <img src="/ecompra/public/image/imagens/promocao/promo3.jpg" />
            </div>
            <div class="clear"></div>
            <div class="clear"></div>
            <div id="icone_tree"><a href="#"><img src="/ecompra/public/image/tree.png" class="setaLink" title="O e-Compra possui reponsabilidade ambiental!"  /></a></div>
            <div id="rodape" class="fonteItenMenu setaLink">e-compra &reg;</div>
        </form>
    </body>
</html>
