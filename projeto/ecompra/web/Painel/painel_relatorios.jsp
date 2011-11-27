<%@page contentType="text/html" pageEncoding="ISO-8859-1" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="Entidade.Painel.Impl.Administrador"%>


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

    <table width="100%" height="274" id="tabela_painel">

      <tr>
        <th height="35" colspan="3">Gerar relat&oacute;rios </th>
      </tr>
      <tr>
        <th width="29%" height="35">Vendas</th>
        <th width="40%" height="35" colspan="-2">Clientes</th>
        <th width="31%" height="35" colspan="-2">Produtos</th>
      </tr>
      <tr>
        <td height="35" >
            Vendas finalizadas no mês
            <select size="1">
              <option value="0"></option>
              <option value="1">Jan</option>
              <option value="2">Fev</option>
              <option value="3">Mar</option>
              <option value="4">Abr</option>
              <option value="5">Mai</option>
              <option value="6">Jun</option>
              <option value="7">Jul</option>
              <option value="8">Ago</option>
              <option value="9">Set</option>
              <option value="10">Out</option>
              <option value="11">Nov</option>
              <option value="12">Dez</option>
            </select>
            <br  /></td>
        <td colspan="-2" rowspan="2"><input name="radiobutton" type="radio" value="radiobutton" />
        Total cadastrados </td>
        <td colspan="-2" rowspan="2"><input name="radiobutton" type="radio" value="radiobutton" />
        Total cadastrados </td>
      </tr>
      <tr>
        <td height="35" ><input name="radiobutton" type="radio" value="radiobutton" />
          Total de vendas finalizadas</td>
      </tr>
      <tr>
        <td height="35"><input name="radiobutton" type="radio" value="radiobutton" />
          Aguardando pagamento </td>
        <td colspan="-2" rowspan="2"><input name="radiobutton" type="radio" value="radiobutton" />
          Cadastro bloqueado </td>
        <td height="35" colspan="-2"><input name="radiobutton" type="radio" value="radiobutton" />
          Com estoque </td>
      </tr>
      <tr>
        <td height="35"><input name="radiobutton" type="radio" value="radiobutton" />
        Aguardando envio </td>
        <td height="35" colspan="-2"><input name="radiobutton" type="radio" value="radiobutton" />
          Sem estoque </td>
      </tr>
      <tr >
        <td height="46" colspan="3" align="center" class="sem_borda">
            <a href="/ecompra/Painel/painel_produto_incluir.jsp" class="setaLink">
                <input name="button2" type="button" class="botao setaLink"  title="Gerar relatório" value="Gerar relatório" /></a>
            &nbsp;
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
