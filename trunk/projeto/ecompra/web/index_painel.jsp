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
        <form method="post" action="LoginPainel">
            <div id="topo">&nbsp;
            <div id="painel_topo">Painel Administrativo <span style="font-size:50px;">e</span>-compra</div>
                <!--
                 <div id="sair"><img src="icones/ic_sair.gif" border="0"  /><span class="texto_opcoes">Sair</span></div>
	<div id="relatorios"><img src="icones/ic_relatorios.gif" border="0"  /><span class="texto_opcoes">Gerar Relatórios</span></div>
	<div id="publicidade"><img src="icones/ic_publicidade.gif" border="0"  /><span class="texto_opcoes">Publicidade</span></div>
	<div id="clientes"><img src="icones/ic_clientes.gif" border="0"  /><span class="texto_opcoes">Clientes</span></div>
	<div id="pedidos"><img src="icones/ic_pedidos.gif" border="0"  /><span class="texto_opcoes">Pedidos</span></div>
	<div id="produtos"><img src="icones/ic_produtos.gif" border="0"  /><span class="texto_opcoes">Produtos</span></div>
	-->
            </div>
            <div class="clear"></div>
            <div id="logo"><a href="index_painel.jsp"><img src="/ecompra/public/image/logo3.gif" border="0" title="Retornar para a loja!" class="setaLink"  /></a></div>
            <div class="clear"></div>
            <div id="menu_super">
                <p class="barNav">&nbsp;
                    <div style="float: left;color:#9BBA1E;margin-top:-23px">&nbsp;Fa&ccedil;a seu login!</div>
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
            <div class="clear"></div>
            <div id="conteudo_tela_painel">
                <%
                    if (mensagem != null) {
                %><div id="mensagem_erro">&nbsp<%=mensagem%></div><%

                    }
                %>
                <table width="100%" border="0" id="tabela_login">
                    <tr>
                        <td width="18%" align="right">Login:</td>
                        <td colspan="2">
                            <label>
                                <input name="txt_login" type="text" value="" />
                            </label></td>
                    </tr>
                    <tr >
                        <td align="right">Senha:</td>
                        <td colspan="2"><input name="txt_senha" type="password" value="" /></td>
                    </tr>
                    <tr >
                        <td height="48" colspan="2" align="center">
                            <input name="submit" type="submit" class="botao setaLink" value="Entrar"/>
                        &nbsp;
                        <input name="button2" type="button" class="botao setaLink " value="Cancelar"  /></td>
                        <td width="51%" align="center"></td>
                    </tr>
                </table>
            </div>
            <div class="clear"></div>
            <div id="icone_tree_painel"><img src="/ecompra/public/image/tree_painel.gif" class="setaLink" title="O e-Compra possui responsabilidade ambiental!"/></div>
        </form>
    </body>
</html>
