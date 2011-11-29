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
<form method="post" action="/ecompra/ProdutoServlet">
<input type="hidden" name="operacao" value="incluir_produto" />
    
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
    <table width="100%" height="470" id="tabela_painel_control">
      <tr>
        <th height="35" colspan="2">Incluir novo produto </th>
      </tr>
      <tr>
        <td width="15%"  align="right">C&oacute;digo produto:<span class="obrigatorio">*</span> </td>
        <td width="85%" height="43"><input disabled="disabled"name="txt_cod_produto" type="text" value="Gera&ccedil;&atilde;o autom&aacute;tica"/></td>
      </tr>
      <tr  >
        <td  align="right">Nome:<span class="obrigatorio">*</span></td>
        <td height="46"><input name="txt_nome" type="text" value="" size="40" /></td>
      </tr>
      <tr  >
        <td align="right" >Descri&ccedil;&atilde;o:<span class="obrigatorio">*</span></td>
        <td height="46"><textarea name="txt_descricao" cols="40" rows="3"></textarea></td>
      </tr>
      <tr  >
        <td align="right" >Pre&ccedil;o (R$):<span class="obrigatorio">*</span></td>
        <td height="46"><input name="txt_preco" type="text" value="" /></td>
      </tr>
      <tr  >
        <td align="right" >Quantidade:<span class="obrigatorio">*</span></td>
        <td height="46"><input name="txt_quantidade" type="text" value="" /></td>
      </tr>
      <tr  >
        <td align="right">Fabricante:<span class="obrigatorio">*</span></td>
        <td height="46"><input name="txt_fabricante" type="text" value="" size="40" /></td>
      </tr>
      <tr  >
        <td align="right">Imagem:<span class="obrigatorio">*</span></td>
        <td height="46"><input name="imagem" type="text" value="" />&nbsp;<input type="button" value="Inserir imagem" class="botao setaLink"  title="Inserir imagem do produto"   /></td>
      </tr>
      <tr>
        <td  height="22" colspan="3"><span class="obrigatorio">&nbsp;(*) Campos de preenchimento obrigat&oacute;rio.</span> </td>
      </tr>
      <tr >
        <td height="46" colspan="2" align="center" class="sem_borda">
            <input type="submit" value="Salvar" class="botao setaLink"  title="Salvar inclusão do produto"   />&nbsp;
            <a href="/ecompra/ProdutoServlet?operacao=buscar_produtos" class="setaLink">
                <input type="button" value="Cancelar" class="botao setaLink"  title="Cancelar"   /></a></td>
      </tr>
    </table>
  </div>

  <div class="clear"></div>
		<div id="icone_tree_painel"><img src="/ecompra/public/image/tree_painel.gif" class="setaLink" title="O e-Compra possui responsabilidade ambiental!"/></div>
</form>
</body>
</html>
