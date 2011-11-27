<%@page contentType="text/html" pageEncoding="ISO-8859-1" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="Entidade.Painel.Impl.Administrador"%>
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
<form method="post" action="trab_diplomacao">
<div id="topo">&nbsp;
    <div id="sair"><a href="/ecompra/LoginPainel?acao=SAIR" class="setaLink"><img src="/ecompra/public/image/icones/ic_sair.gif" border="0"  /><span class="texto_opcoes">Sair</span></a></div>
    <div id="relatorios"><a href="/ecompra/Painel/painel_relatorios.jsp" class="setaLink"><img src="/ecompra/public/image/icones/ic_relatorios.gif" border="0"  /><span class="texto_opcoes">Relatórios</span></a></div>
    <div id="publicidade"><a href="/ecompra/Painel/painel_publicidade.jsp" class="setaLink"><img src="/ecompra/public/image/icones/ic_publicidade.gif" border="0"  /><span class="texto_opcoes">Publicidade</span></a></div>
    <div id="clientes"><a href="/ecompra/Painel/painel_bloqueio.jsp" class="setaLink"><img src="/ecompra/public/image/icones/ic_clientes.gif" border="0"  /><span class="texto_opcoes">Clientes</span></a></div>
    <div id="pedidos"><a href="/ecompra/Painel/painel_pedido.jsp" class="setaLink"><img src="/ecompra/public/image/icones/ic_pedidos.gif" border="0"  /><span class="texto_opcoes">Pedidos</span></a></div>
    <div id="produtos"><a href="/ecompra/ProdutoServlet?operacao=buscar_produtos" class="setaLink"><img src="/ecompra/public/image/icones/ic_produtos.gif" border="0"  /><span class="texto_opcoes">Produtos</span></a></div>
</div>

<div class="clear"></div>
<div id="logo"><a href="/ecompra/Painel/painel_logado.jsp"><img src="/ecompra/public/image/logo3.gif" border="0" title="Retornar para a loja!" class="setaLink"  /></a></div>
<div class="clear"></div>
<div id="menu_super">
    <p class="barNav">
        <div style="color:#9BBA1E;margin-top:15px;float:left;">&nbsp;Bem vindo <%=((Administrador) session.getAttribute("usuarioLogado")).getNome()%>!</div>
        <!--
<a href="caminho/arquivo.html" >ACESSÓRIOS E PERIFÉRICOS</a>
<a href="caminho/arquivo.html">ARMAZENAMENTO</a>
<a href="caminho/arquivo.html">IMPRESS&Atilde;O E IMAGEM </a>
<a href="caminho/arquivo.html">MONITORES</a>
<a href="caminho/arquivo.html">COMPUTADORES</a>
<a href="caminho/arquivo.html" >NOTEBOOKS </a>
-->
    </p>
</div>
<div id="conteudo_tela_painel">
    
<table width="100%" height="177" border="0" id="tabela_login">
    <tr>
        <td width="4%">&nbsp;</td>
        <td width="24%" height="35" colspan="2"><a href="caminho/arquivo.html" class="setaLink fonteCategorias" >NOTEBOOKS</a></td>
        <td width="72%" colspan="2"><a href="caminho/arquivo.html" class="setaLink fonteCategorias">COMPUTADORES</a></td>
    </tr>
    <tr >
        <td>&nbsp;</td>
        <td height="40" colspan="2"><a href="caminho/arquivo.html" class="setaLink fonteCategorias">MONITORES</a></td>
        <td colspan="2"><a href="caminho/arquivo.html" class="setaLink fonteCategorias">IMPRESS&Atilde;O E IMAGEM</a></td>
    </tr>
    <tr >
        <td>&nbsp;</td>
        <td height="158" colspan="2"><a href="caminho/arquivo.html" class="setaLink fonteCategorias">ARMAZENAMENTO</a></td>
        <td colspan="2"><a href="caminho/arquivo.html"  class="setaLink fonteCategorias">ACESS&Oacute;RIOS E PERIF&Eacute;RICOS</a></td>
    </tr>
    <tr >
        <td colspan="5" align="right" class="fonte_titulo">Incluir Categoria </td>
    </tr>
    <tr >
        <td colspan="5" align="center">Nome :
            <label>
                <input name="txt_nome_categoria" type="text" value="" size="20" />
            </label>
            <input name="button" type="button" class="botao setaLink" title="Incluir nova categoria" value="Incluir Categoria" />
         </td>
    </tr>
</table>
</div>

<div class="clear"></div>
<div id="icone_tree_painel"><img src="/ecompra/public/image/tree_painel.gif" class="setaLink" title="O e-Compra possui responsabilidade ambiental!"/></div>
</form>
</body>
</html>
