<%@page contentType="text/html" pageEncoding="ISO-8859-1" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="Entidade.Painel.Impl.Administrador"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>e-Compra</title>
<link rel="stylesheet" type="text/css" href="/ecompra/public/css/geral.css" />
<script type="text/javascript" src="/ecompra/public/js/jquery.min.js"></script>
<script type="text/javascript" src="/ecompra/public/js/modal.js"></script>

</head>

<body class="body">

<form method="post" action="trab_diplomacao">
<div id="topo">&nbsp;
    <div id="sair"><a href="/ecompra/LoginPainel?acao=SAIR" class="setaLink"><img src="/ecompra/public/image/icones/ic_sair.gif" border="0"  /><span class="texto_opcoes">Sair</span></a></div>
    <div id="relatorios"><a href="/ecompra/Painel/painel_relatorios.jsp" class="setaLink"><img src="/ecompra/public/image/icones/ic_relatorios.gif" border="0"  /><span class="texto_opcoes">Relatórios</span></a></div>
    <div id="publicidade"><a href="/ecompra/Painel/painel_publicidade.jsp" class="setaLink"><img src="/ecompra/public/image/icones/ic_publicidade.gif" border="0"  /><span class="texto_opcoes">Publicidade</span></a></div>
    <div id="clientes"><a href="/ecompra/Painel/painel_bloqueio.jsp" class="setaLink"><img src="/ecompra/public/image/icones/ic_clientes.gif" border="0"  /><span class="texto_opcoes">Clientes</span></a></div>
    <div id="pedidos"><a href="/ecompra/Painel/painel_pedido.jsp" class="setaLink"><img src="/ecompra/public/image/icones/ic_pedidos.gif" border="0"  /><span class="texto_opcoes">Pedidos</span></a></div>
    <div id="produtos"><a href="/ecompra/Painel/painel_produto.jsp" class="setaLink"><img src="/ecompra/public/image/icones/ic_produtos.gif" border="0"  /><span class="texto_opcoes">Produtos</span></a></div>
</div>
<div class="clear"></div>
<div id="logo"><a href="/ecompra/Painel/painel_logado.jsp"><img src="/ecompra/public/image/logo3.gif" border="0" title="Retornar para a loja!" class="setaLink"  /></a></div>
<div class="clear"></div>
    <div id="menu_super">
        <p class="barNav">&nbsp;
            <div class="boas_vindas_painel">&nbsp;Bem vindo <%=((Administrador) session.getAttribute("usuarioLogado")).getNome()%>!</div>
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
    <div id="conteudo_painel">
        <table width="100%" align="center">
            <tr>
                <td height="35" colspan="3" class="fonte_titulo">Pesquisar cliente</td>
            </tr>
            <tr class="fonteItenMenu">
                <td width="17%" height="35">CPF:
                    <label>
                        <input name="textarea" type="text" value="" size="10" />
                    </label></td>
                <td width="83%" height="35">Nome:
                    <input name="textarea2" type="text" value="" size="40" /></td>

            </tr>
            <tr align="center">
                <td height="35" colspan="3"><a href="/ecompra/Painel/painel_produto_incluir.jsp">
                        <input name="button" type="button" class="botao setaLink"  title="Pesquisar produto" value="Pesquisar" />
                    </a></td>
            </tr>
        </table>
        <table width="100%" height="175" id="tabela_painel">

            <tr>
                <th width="14%">CPF </th>
                <th height="35" colspan="2">Nome Cliente </th>
                <th width="27%">Bloquear/Desbloquear</th>
                <th width="15%" height="35" colspan="2">Situa&ccedil;&atilde;o </th>
            </tr>
            <tr>
                <td height="42" class="alinha_centro">05570252780</td>
                <td colspan="2">Sergio de Paula Rodrigues </td>
                <td align="center"><a href="#dialog2" name="modal" class="setaLink"><img src="/ecompra/public/image/icones/ic_bloquear.gif" class="setaLink" title="Bloquear cliente"/></a></td>
                <td align="center">Desbloqueado</td>
            </tr>
            <tr >
                <td height="46" colspan="6" align="center" class="sem_borda">&nbsp; <a href="/ecompra/Painel/painel_logado.jsp" class="setaLink">
                        <input name="button22" type="button" class="botao setaLink"  title="Cancelar" value="Cancelar" /></a></td></tr>
        </table>
    </div>

    <div class="clear"></div>
    <div id="icone_tree_painel"><img src="/ecompra/public/image/tree_painel.gif" class="setaLink" title="O e-Compra possui responsabilidade ambiental!"/></div>

</form>




<div id="boxes">




    <!-- Janela Modal com Bloco de Nota -->
    <div id="dialog2" class="window">
        <div align="right"><input type="image" src="/ecompra/public/image/icones/ic_fechar.png" title="Fechar janela" class="close"/></div>

        <table width="100%" height="35" id="tabela_painel_control">
            <tr>
                <td height="35" colspan="2" class="fonte_titulo">Bloquear cliente</td>
            </tr>
            <tr  >
                <td  align="right">Nome:<span class="obrigatorio"></span></td>
                <td height="46"><input disabled="disabled" name="textarea2"  type="text" value="Sergio de Paula Rodrigues" size="40" /></td>
            </tr>
            <tr>
                <td width="15%"  align="right">CPF:</td>
                <td width="85%" height="43"><input disabled="disabled" name="textarea" type="text" value="05570252780" /></td>
            </tr>
            <tr  >
                <td align="right" >Motivo:<span class="obrigatorio">*</span></td>
                <td height="46"><textarea name="textarea22" cols="40" rows="3"></textarea></td>
            </tr>

            <tr>
                <td  height="22" colspan="3"><span class="obrigatorio">&nbsp;(*) Campos de preenchimento obrigat&oacute;rio.</span> </td>
            </tr>
            <tr >
                <td height="46" colspan="2" align="center" class="sem_borda">
                    <input type="button" value="Salvar" class="botao setaLink"  title="Salvar inclusão do produto" />
                    <input type="button" value="Cancelar" title="Fechar janela" class="close botao setaLink" style="margin-left:150px; margin-top:-20px;"/>		</td>
            </tr>
        </table>
    </div>
    <!-- Fim Janela Modal com Bloco de Nota -->



    <!-- Máscara para cobrir a tela -->
    <div id="mask"></div>

</div>



</body>
</html>
