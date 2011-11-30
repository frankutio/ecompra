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
<form method="post" action="ProdutoServlet?operacao=alterar_produto">

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
        <div class="boas_vindas_painel">&nbsp;Bem vindo ${usuarioLogado.nome}!</div>
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

<table width="100%" height="422" id="tabela_painel_control">
  <tr>
    <th height="35" colspan="3">Alterar produto </th>
  </tr>

  <c:forEach items="${busca_alterar}" var="busca_alterar">
  <input type="hidden" name="cod_produto_parametro" value="${busca_alterar.cod_produto}" />
  <tr>
      <td width="13%" align="right" >C&oacute;digo produto: </td>
      <td width="35%" height="43"><input name="cod_produto" type="text" value="${busca_alterar.cod_produto}" /></td>
      <td width="52%" align="center" >&nbsp;</td>
  </tr>
  <tr  >
      <td  align="right">Nome:</td>
      <td height="46"><input name="nome" type="text" value="${busca_alterar.nome}" size="40" /></td>
      <td width="52%" align="center" >&nbsp;</td>
  </tr>
  <tr  >
      <td  align="right">Descri&ccedil;&atilde;o:</td>
      <td height="46"><textarea name="descricao" cols="30" rows="2">${busca_alterar.descricao}</textarea></td>
      <td width="52%" align="center" >&nbsp;Fotos atuais do produto:</td>
  </tr>
  <tr  >
      <td align="right" >Pre&ccedil;o:</td>
      <td height="56"><input name="preco" type="text" value="${busca_alterar.preco}" /></td>
      <td width="52%" rowspan="2" align="center" >
          <img src="${Produto.foto}"/> <img src="${Produto}"/></td>
  </tr>
  <tr  >
      <td align="right" >Quantidade:</td>
      <td height="24"><input name="quantidade" type="text" value="${busca_alterar.quantidade}" /></td>
  </tr>
  <tr  >
      <td align="right">Fabricante:</td>
      <td height="56"><input name="fabricante" type="text" value="${busca_alterar.fabricante}" size="40" /></td>
      <td width="52%" rowspan="2" align="center" >
           <img src="${Produto}"/> <img src="${Produto}"/></td>
  </tr>
  <tr  >
      <td align="right">Foto:<span class="obrigatorio">*</span></td>
      <td height="46"><input name="foto" type="file" />&nbsp;</td>
  </tr>
  </c:forEach>

  <tr >
    <td height="46" colspan="2" align="right" class="sem_borda">
        <input name="submit"type="submit" value="Salvar" class="botao setaLink"  title="Salvar alteração do produto"/>&nbsp;</td>
    <td align="left"><span class="sem_borda" ><a href="/ecompra/ProdutoServlet?operacao=buscar_produtos" class="setaLink">
        <input type="button" value="Cancelar" class="botao setaLink"  title="Cancelar"   /></a></td>
  </tr>
</table>
</div>
<div class="clear"></div>
<div id="icone_tree_painel"><img src="/ecompra/public/image/tree_painel.gif" class="setaLink" title="O e-Compra possui responsabilidade ambiental!"/></div>
</form>
</body>
</html>
