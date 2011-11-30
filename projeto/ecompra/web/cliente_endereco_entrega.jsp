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
<form method="post" action="trab_diplomacao">
  <div id="topo">&nbsp;
                <div id="sair"><a href="/ecompra/Login?acao=SAIR" class="setaLink"><img src="/ecompra/public/image/icones/ic_sair.gif" border="0"/><span class="texto_opcoes">Sair</span></a></div>
                <div id="carrinho"><a href="/ecompra/Cliente/cliente_carrinho_logado.jsp" class="setaLink"><img src="/ecompra/public/image/icones/ic_carrinho.gif" border="0" /><span class="texto_opcoes">Meu carrinho</span></a></div>
                <div id="cadastro"><a href="/ecompra/Cliente/cliente_cadastro_alterar.jsp"  class="setaLink"><img src="/ecompra/public/image/icones/ic_meu_cadastro.gif" border="0" /><span class="texto_opcoes" >Meu cadastro</span></a></div>
                <div id="meus_pedidos"><a href="/ecompra/Cliente/cliente_meus_pedidos.jsp" class="setaLink"><img src="/ecompra/public/image/icones/ic_meus_pedidos.gif" border="0"/><span class="texto_opcoes">Meus pedidos</span></a></div>
            </div>
  <div class="clear"></div>
  <div id="logo"><a href="index.html"><img src="/ecompra/public/image/logo3.gif" border="0" title="Retornar para a loja!" class="setaLink"  /></a></div>
  <div class="clear"></div>
  <div id="menu_super">
    <p class="barNav">
	<a href="caminho/arquivo.html" >ACESSÓRIOS E PERIFÉRICOS</a>
	<a href="caminho/arquivo.html">ARMAZENAMENTO</a>
	<a href="caminho/arquivo.html">IMPRESS&Atilde;O E IMAGEM </a>
	<a href="cliente_monitores.html" title="Monitores">MONITORES</a>
	<a href="clinete_computadores.html" title="Computadores">COMPUTADORES</a>
	<a href="cliente_notebooks.html" title="Notebooks" >NOTEBOOKS </a>
	</p>
  </div>
  <div class="clear"></div>
    <div id="localizador"><span class="texto_localizador">Bem-vindo ${usuarioLogado.nome}! HOME/ENDERE&Ccedil;O ENTREGA</span></div>
    <div id="menu_lateral">
    <table width="100%" border="0">
      <tr>
        <td width="16%"><img src="icones/ic_notebook.gif"></td>
        <td width="84%" class="tituloMenu">Notebooks</td>
      </tr>

      <tr>
        <td>&nbsp;</td>
        <td class="fonteItenMenu setaLink">Notebooks</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td class="fonteItenMenu setaLink">Netbooks</td>
      </tr>

      <tr>
        <td><img src="icones/ic_informatica.gif" width="28" height="36" /></td>
        <td class="tituloMenu">Computadores</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td class="fonteItenMenu setaLink">Computadores</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td class="fonteItenMenu setaLink">All in One  </td>
      </tr>
      <tr>
        <td><img src="icones/ic_monitor.gif" /></td>
        <td class="tituloMenu">Monitores</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td class="fonteItenMenu setaLink">Monitores de LED </td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td class="fonteItenMenu setaLink">Monitores LCD </td>
      </tr>
      <tr>
        <td><img src="icones/ic_impressao.gif"></td>
        <td class="tituloMenu">Impress&atilde;o e Imagem </td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td class="fonteItenMenu setaLink">Impressoras</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td class="fonteItenMenu setaLink">Scanners</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td class="fonteItenMenu setaLink">Multifuncionais</td>
      </tr>
      <tr>
        <td><img src="icones/ic_armazenamento.gif"></td>
        <td class="tituloMenu">Armazenamento</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td class="fonteItenMenu setaLink">Pen-Drives</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td class="fonteItenMenu setaLink">HD Externo </td>
      </tr>
      <tr>
        <td><img src="icones/ic_acessorios.gif"></td>
        <td class="tituloMenu">Acess&oacute;rios e Perif&eacute;ricos </td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td class="fonteItenMenu setaLink">Teclado</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td class="fonteItenMenu setaLink">Caixa de som </td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td class="fonteItenMenu setaLink">Mouse</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td class="fonteItenMenu setaLink">Webcam</td>
      </tr>
    </table>
  </div>

  <div id="conteudo_login">
    <table width="100%" border="0" id="tabela_painel">
      <tr>
        <th height="37" colspan="3" >Endere&ccedil;o de entrega </th>
      </tr>
        <td width="16%" class="sem_borda"></td>
      <tr >
        <td height="28" align="right" class="obrigatorio sem_borda">Destinat&aacute;rio:</td>
        <td colspan="2" class="sem_borda">&nbsp;${usuarioLogado.nome}</td>
      </tr>
      <tr >
        <td height="27" align="right" class="obrigatorio sem_borda">Endere&ccedil;o:</td>
        <td colspan="2" class="sem_borda">&nbsp;${usuarioLogado.endereco}</td>
      </tr>
      <tr >
        <td height="30" align="right" class="obrigatorio sem_borda">Cidade:</td>
        <td colspan="2" class="sem_borda">&nbsp;${usuarioLogado.cidade}</td>
      </tr>
      <tr >
        <td height="30" align="right" class="obrigatorio sem_borda">UF: </td>
        <td colspan="2" class="sem_borda">&nbsp;${usuarioLogado.uf}</td>
      </tr>
      <tr >
        <td height="26" align="right" class="obrigatorio sem_borda">Cep:</td>
        <td colspan="2" class="sem_borda">&nbsp;${usuarioLogado.cep}</td>
      </tr>

      <tr >
        <td  height="196" colspan="2" align="center" valign="top"><br /><br />
            <a href="cliente_pagamento.html"><input type="button" value="Prosseguir" class="botao_cliente setaLink"/></a>
            &nbsp;
            <a href="index.html">
            <input name="button" type="button" value="Alterar Endere&ccedil;o" class="botao_cliente setaLink" />
                </a></p></td>
        <td width="46%" align="center">&nbsp;</td>
      </tr>
   </table>
  </div>
  <div id="promocao">
  	<img src="/ecompra/public/image/promocao/promo1.jpg" /><br /><br />
	<img src="/ecompra/public/image/promocao/promo2.jpg" /><br /><br />
	<img src="/ecompra/public/image/promocao/promo3.jpg" />
	</div>
  <div class="clear"></div>
  <div class="clear"></div>
		<div id="icone_tree"><a href="#"><img src="/ecompra/public/image/tree.png" class="setaLink" title="O e-Compra possui reponsabilidade ambiental!"  /></a></div>
  <div id="rodape" class="fonteItenMenu setaLink">e-compra &reg;</div>
</form>
</body>
</html>
