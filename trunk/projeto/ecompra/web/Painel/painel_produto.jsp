<%@page contentType="text/html" pageEncoding="ISO-8859-1" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="Entidade.Painel.Impl.Administrador"%>
<%
    //tratamento msgERROR
    String mensagem = (String) session.getAttribute("msgError");
    if (mensagem != null) {
        session.removeAttribute("msgError");
    }
    String msg_sucesso = (String) session.getAttribute("msgSucesso");
    if (msg_sucesso != null) {
        session.removeAttribute("msgSucesso");
        session.removeAttribute("buscar_produtos");
    }

%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>e-Compra</title>
<link rel="stylesheet" type="text/css" href="/ecompra/public/css/geral.css" />

<c:forEach items="${buscar_produtos}" var="buscar_produtos">
<c:set var="resposta_confirm" value='' scope="request" />
<script type="text/javascript">
function excluir_confirm()
{
    resposta_confirm=confirm("Confima a exclusão do produto?[Em estoque: ${buscar_produtos.quantidade}]");
if (resposta_confirm==true)
  {
  location.href="/ecompra/ProdutoServlet?operacao=excluir_produto&cod_produto=${buscar_produtos.cod_produto}";
  }
else
  {
  location.href="/ecompra/ProdutoServlet?operacao=buscar_produtos";
  }
}
</script>
</c:forEach>
</head>
<body class="body">
<form method="post" action="/ecompra/ProdutoServlet?operacao=pesquisar_produtos">

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
   <%
      if (msg_sucesso!= null){
        //request.getSession().removeAttribute("operacao");
        %><div id="mensagem_erro"><script LANGUAGE="JavaScript" TYPE="text/javascript">alert("<%=msg_sucesso%>")</script></div><%
    }
   %>
<table width="100%" align="center">
    <tr>
    <td height="35" colspan="3" class="fonte_titulo">Pesquisar produto</td>
  </tr>
  <tr class="fonteItenMenu">
    <td height="35">C&oacute;digo produto:
      <label>
      <input name="txt_cod_produto" type="text" value="" size="10" />
      </label></td>
    <td height="35">Nome:
    <input name="txt_nome" type="text" value="" size="40" /></td>
    <td>Fabricante:
    <input name="txt_fabricante" type="text" value="" /></td>
  </tr>
  <tr align="center">
    <td height="35" colspan="3">
       <input name="submit" type="submit" class="botao setaLink"  title="Pesquisar produto" value="Pesquisar" />
    </td>
  </tr>
</table>
<!--jsp-->

<table width="100%" height="175" id="tabela_painel">

    <tr>
        <th width="14%">C&oacute;digo produto </th>
        <th height="35" colspan="2">Nome produto </th>
        <th width="23%">Qtd. Estoque </th>
        <th width="11%">Alterar</th>
        <th width="11%">Excluir</th>
    </tr>
<!-- percorre produtos montando as linhas da tabela -->
<c:if test="${empty buscar_produtos}">
    <c:if test="${empty pesquisar_produtos }">
        <span class="obrigatorio">Nenhum Produto Cadastrado!</span>
    </c:if>
</c:if>
<c:forEach items="${buscar_produtos}" var="buscar_produtos">
    <tr>
        <td height="42" class="alinha_centro">${buscar_produtos.cod_produto}</td>
        <td colspan="2">${buscar_produtos.nome} </td>
        <td class="alinha_centro">${buscar_produtos.quantidade}</td>
        <td align="center"><a href="/ecompra/ProdutoServlet?operacao=busca_alterar&cod_produto=${buscar_produtos.cod_produto}&nome=${buscar_produtos.nome}" class="setaLink">
            <img src="/ecompra/public/image/icones/ic_editar.gif" class="setaLink" title="Alterar"/></a></td>
        <td align="center"><img src="/ecompra/public/image/icones/ic_excluir.gif" class="setaLink" title="Excluir" onclick="excluir_confirm()"/></td>
    </tr>
</c:forEach>

<c:forEach items="${pesquisar_produtos}" var="pesquisar_produtos">
    <tr>
        <td height="42" class="alinha_centro">${pesquisar_produtos.cod_produto}</td>
        <td colspan="2">${pesquisar_produtos.nome} </td>
        <td class="alinha_centro">${pesquisar_produtos.quantidade}</td>
        <td align="center"><a href="/ecompra/Painel/painel_produto_alterar.jsp" class="setaLink"><img src="/ecompra/public/image/icones/ic_editar.gif" class="setaLink" title="Alterar"/></a></td>
        <td align="center"><a href="/ecompra/ProdutoServlet?operacao=excluir_produto&cod_produto=${buscar_produtos.cod_produto}" class="setaLink"><img src="/ecompra/public/image/icones/ic_excluir.gif" class="setaLink" title="Excluir" /></a></td>
    </tr>
</c:forEach>

<!--FIM montagem table -->
  <tr >
    <td height="46" colspan="6" align="center" class="sem_borda">
        <a href="/ecompra/ProdutoServlet?operacao=cadastro_produto" class="setaLink">
            <input name="button2" type="button" class="botao setaLink"  title="Incluir novo produto" value="Incluir Produto" /></a>&nbsp;
        <a href="/ecompra/Painel/painel_logado.jsp" class="setaLink">
            <input name="button22" type="button" class="botao setaLink"  title="Cancelar" value="Cancelar" /></a></td>
  </tr>
</table>
</div>
<div class="clear"></div>
<div id="icone_tree_painel"><img src="/ecompra/public/image/tree_painel.gif" class="setaLink" title="O e-Compra possui responsabilidade ambiental!"/></div>
</form>
</body>
</html>
