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


<style type="text/css">
<!--
.style1 {font-size: 14px}
-->
</style>
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
        <td height="35" colspan="5" class="fonte_titulo">Pedidos</td>
      </tr>
      <tr class="fonteItenMenu">
        <td height="39" colspan="5">Filtrar por status:
          <select name="select" size="1">
            <option value="0"></option>
            <option value="1">Aguardando pagamento</option>
            <option value="2">Preparando o envio</option>
            <option value="3">Produto enviado</option>
			<option value="4">Finalizado</option>
          </select>        </td>
      </tr>
	</table>

	<table width="100%" height="175" id="tabela_painel">
      <tr class="alinha_centro">
        <th width="13%" align="center"class="fonte_titulo">N&uacute;mero do pedido </th>

        <th width="11%"  align="center"class="fonte_titulo">Data da Compra        </th>
        <th width="21%" align="center"class="fonte_titulo">Status do pedido </th>
        <th width="16%" align="center"class="fonte_titulo">Alterar <br /> status</th>
      </tr>

	  <tr class="alinha_centro">
        <td height="40" align="center">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td><a href="#dialog2" name="modal" class="setaLink"><img src="/ecompra/public/image/icones/ic_editar.gif" width="28" height="36" class="setaLink" title="Alterar status do pedido" /></a></td>
      </tr>
      <tr class="fonteItenMenu alinha_centro">
        <td height="52" colspan="4" align="center" class="sem_borda"><span class="sem_borda"><a href="/ecompra/Painel/painel_logado.jsp">
          <input name="button" type="button" value="Cancelar" class="botao setaLink" />
        </a></span></td>
      </tr>

      <tr align="center">
        <td height="260" colspan="4" class="sem_borda">&nbsp;&nbsp;</td>
      </tr>
    </table>
  </div>
  <div class="clear"></div>
 <div class="clear"></div>
		<div id="icone_tree_painel"><img src="/ecompra/public/image/tree_painel.gif" class="setaLink" title="O e-Compra possui responsabilidade ambiental!"/></div>

</form>



<div id="boxes">




<!-- Janela Modal com Bloco de Nota -->
<div id="dialog2" class="window">
<div align="right"><input type="image" src="/ecompra/public/image/icones/ic_fechar.png" title="Fechar janela" class="close"/></div>
   <table width="100%" height="519" id="tabela_painel">
      <tr>
        <td height="33" colspan="6" class="fonte_titulo">Detalhes do pedido
        <div align="right"></div></td>
      </tr>
      <tr class="fonteItenMenu">
        <td height="24" colspan="6" class="sem_borda" style="font-size:14px;font-weight:bold">N&deg; do Pedido:&nbsp;</td>
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
      <tr class="fonteItenMenu">
        <th height="21" colspan="2"class="sem_borda"><span class="fonte_titulo">Endere&ccedil;o de Entrega </span></th>
        <th width="31%" height="21"class="sem_borda"><span class="fonte_titulo">Produtos</span></th>
        <th width="10%" height="21"class="sem_borda"><span class="fonte_titulo">Quantidade</span></th>
        <th height="21" colspan="2"class="sem_borda"><span class="fonte_titulo">Pre&ccedil;o</span></th>
      </tr>
      <tr class="fonteItenMenu alinha_centro">
        <td width="16%" align="right" class="sem_borda">Destinat&aacute;rio:</td>
        <td width="17%" height="20" align="center" class="sem_borda">&nbsp;</td>
        <td height="20" colspan="2" align="right" class="sem_borda">&nbsp;</td>
        <td width="21%">&nbsp;</td>
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
        <td colspan="2" rowspan="3" align="center" class="sem_borda" >&nbsp;</td>
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
	  <tr>
        <td height="30" colspan="6" class="fonte_titulo">Alterar status do pedido<div align="right"></div></td>
      </tr>
	  <tr class="fonteItenMenu">
		<td height="39" colspan="5"><strong>Alterar status:</strong>
		  <select name="select" size="1">
			<option value="0"></option>
			<option value="1">Aguardando pagamento</option>
			<option value="2">Preparando o envio</option>
			<option value="3">Produto enviado</option>
			<option value="4">Finalizado</option>
		  </select>        </td>
      </tr>
      <tr class="fonteItenMenu alinha_centro">
        <td height="57" colspan="5" align="center" class="sem_borda"><a href="index_logado.html">
          <input name="button" type="button" value="Cancelar" class="botao close" />
        </a></td>
      </tr>
</table>

</div>
<!-- Fim Janela Modal com Bloco de Nota -->



<!-- Máscara para cobrir a tela -->
  <div id="mask"></div>

</div>



</body>
</html>
