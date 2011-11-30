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

<!--MENSAGENS-->
    <c:if test="${upOk != null}">
        <a href="${upOk.contexto}">Baixar</a>
        ${upOk.contexto}
    </c:if>

    <c:if test="${Erro != null}">
        Ops! parace que houve um erro ao tentar carregar o arquivo!<br />
        Erro: ${Erro}
    </c:if>

<!-- FIM DAS MSGS-->

  <table width="100%" border="1" align="center">
  	<tr>
        <td height="35" class="fonte_titulo">Publicidade</td>
      </tr>
      <tr class="fonteItenMenu">
        <td height="1" class="sem_borda"></td>
      </tr>
	<tr>
        <td height="35" class="fonte_titulo">Banner Superior </td>
      </tr>
      <tr class="fonteItenMenu">
        <td height="69">Arquivo:
          <input name="textarea2" type="file" value="" size="30" />
        </td>
      </tr>

   </table>
  <table height="249" align="left">
  	<tr>
  		<td colspan="2">&nbsp;</td>
	</tr>
  	<tr>
  	  <td colspan="2">&nbsp;</td>
	  </tr>
  	<tr>
  	  <td colspan="2">&nbsp;</td>
	  </tr>
  	<tr>
  	  <td colspan="2">&nbsp;</td>
	  </tr>
  	<tr>
  	  <td colspan="2">&nbsp;</td>
	  </tr>
  	<tr >
  	  <td width="315" align="right" height="128" ><a href="painel_logado.html" class="setaLink">
  	    	<input  name="button222" type="reset" class="botao setaLink"  title="Visualizar banners" value="Visualizar banners" />&nbsp;
  	  </a></td>
	  <td width="189" align="left"><a href="painel_logado.html" class="setaLink">
	    <input  name="button22" type="button" class="botao setaLink"  title="Cancelar" value="Cancelar" />&nbsp;
	  </a></td>
  	</tr>
  </table>
   <table width="28%" height="305" border="1" align="right" id="tabela_painel">

      <tr>
        <th height="21" colspan="1">Banner lateral 1 </th>
      </tr>

	  <tr class="fonteItenMenu">

        <td width="62%" height="74">Arquivo:<br />
          <input name="textarea2" type="file" value="" size="20" />
          <a href="painel_produto_alterar.html"></a><a href="painel_produto_incluir.html"></a></td>
      </tr>
	   <tr>
        <th height="21" colspan="2">Banner lateral 2 </th>
      </tr>
	  <tr class="fonteItenMenu">
        <td width="62%" height="75">Arquivo:<br />
          <input name="textarea2" type="file" value="" size="20" />
			<a href="painel_produto_alterar.html" class="setaLink"></a><a href="painel_produto_incluir.html"></a></td>
      </tr>
	   <tr>
        <th height="21" colspan="2">Banner lateral 3 </th>
      </tr>
	  <tr class="fonteItenMenu">
       <td width="62%" height="75">Arquivo:<br /><input name="textarea2" type="file" value="" size="20" />
        </td>
      </tr>
    </table>
  </div>
  <div class="clear"></div>
    <div id="icone_tree_painel"><img src="/ecompra/public/image/tree_painel.gif" class="setaLink" title="O e-Compra possui responsabilidade ambiental!"/></div>
</form>
</body>
</html>
