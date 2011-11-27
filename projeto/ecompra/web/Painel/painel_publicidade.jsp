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
  <table width="100%" border="1" align="center">
  	<tr>
        <td height="35" class="fonte_titulo">Publicidade</td>
      </tr>
      <tr class="fonteItenMenu">
        <td height="5">&nbsp;</td>
      </tr>
	<tr>
        <td height="35" class="fonte_titulo">Banner Superior </td>
      </tr>
      <tr class="fonteItenMenu">
        <td height="69">Arquivo:
          <input name="textarea2" type="text" value="" size="30" />
        <a href="#" class="setaLink"><img src="/ecompra/public/image/icones/ic_banner.gif" width="28" height="35" class="setaLink" title="Alterar"/></a></td>
      </tr>

   </table>
  <table height="29" align="left">
  	<tr>
            <td width="510"><span class="sem_borda">
              <a href="/ecompra/Painel/painel_logado.jsp" class="setaLink">
                <input name="button22" type="button" class="botao setaLink"  title="Cancelar" value="Cancelar" />
            </a></span>&nbsp;
            <a href="/ecompra/index.jsp" class="setaLink">
                <input name="button222" type="button" class="botao setaLink"  title="Visualizar_banners" value="Visualizar banners" />
            </a></td>

	</tr>
  </table>
   <table width="23%" height="328" border="1" align="right" id="tabela_painel">

      <tr>
        <th height="35" colspan="1">Banner lateral 1 </th>
      </tr>

	  <tr class="fonteItenMenu">

        <td width="62%" height="75">Arquivo:<br /><input name="textarea2" type="text" value="" size="20" />
          <a href="#"><img src="/ecompra/public/image/icones/ic_banner.gif" width="28" height="35" class="setaLink" title="Alterar"/></a>
          <a href="#"></a></td>
      </tr>
	   <tr>
        <th height="35" colspan="2">Banner lateral 2 </th>
      </tr>
	  <tr class="fonteItenMenu">
        <td width="62%" height="57">Arquivo:<br /><input name="textarea2" type="text" value="" size="20" />
            <a href="#" class="setaLink"><img src="/ecompra/public/image/icones/ic_banner.gif" width="28" height="35" class="setaLink" title="Alterar"/></a>
            <a href="#"></a></td>
      </tr>
	   <tr>
        <th height="35" colspan="2">Banner lateral 3 </th>
      </tr>
	  <tr class="fonteItenMenu">
       <td width="62%" height="75">Arquivo:<br /><input name="textarea2" type="text" value="" size="20" />
           <a href="#" class="setaLink"><img src="/ecompra/public/image/icones/ic_banner.gif" width="28" height="35" class="setaLink" title="Alterar"/></a>
           <a href="#"></a></td>
      </tr>
    </table>
  </div>
  <div class="clear"></div>
    <div id="icone_tree_painel"><img src="/ecompra/public/image/tree_painel.gif" class="setaLink" title="O e-Compra possui responsabilidade ambiental!"/></div>
</form>
</body>
</html>
