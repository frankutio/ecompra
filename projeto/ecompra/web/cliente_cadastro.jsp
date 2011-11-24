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
        <form method="post" action="/ecompra/Cliente">
            <input type="hidden" name="operacao" value="cadastro_cliente" />
            <div id="topo">&nbsp;
                <div id="carrinho"><a href="/ecompra/cliente_carrinho.jsp" class="setaLink"><img src="/ecompra/public/image/icones/ic_carrinho.gif" border="0" /><span class="texto_opcoes">Meu carrinho</span></a></div>
                <div id="cadastro"><a href="/ecompra/cliente_cadastro.jsp"  class="setaLink"><img src="/ecompra/public/image/icones/ic_cadastro.gif" border="0" /><span class="texto_opcoes" >Cadastre-se aqui!</span></a></div>
                <div id="login"><a href="/ecompra/cliente_login.jsp" class="setaLink"><img src="/ecompra/public/image/icones/ic_login.gif" border="0"/><span class="texto_opcoes">Login</span></a></div>
            </div>
            <div class="clear"></div>
            <div id="logo"><a href="index.jsp"><img src="/ecompra/public/image/logo3.gif" border="0" title="Retornar para a loja!" class="setaLink"  /></a></div>
            <div class="clear"></div>
            <div id="menu_super">
                <p class="barNav">
                    <a href="caminho/arquivo.html" >ACESSÓRIOS E PERIFÉRICOS</a>
                    <a href="caminho/arquivo.html">ARMAZENAMENTO</a>
                    <a href="caminho/arquivo.html">IMPRESS&Atilde;O E IMAGEM </a>
                    <a href="cliente_monitores.jsp" title="Monitores">MONITORES</a>
                    <a href="clinete_computadores.jsp" title="Computadores">COMPUTADORES</a>
                    <a href="cliente_notebooks.jsp" title="Notebooks" >NOTEBOOKS </a>
                </p>
            </div>
            <div class="clear"></div>
            <div id="localizador"><span class="texto_localizador">HOME/CADASTRO CLIENTE</span></div>
            <div id="menu_lateral">
                <table width="100%" border="0">
                    <tr>
                        <td width="16%"><img src="/ecompra/public/image/icones/ic_notebook.gif"/></td>
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
                        <td><img src="/ecompra/public/image/icones/ic_informatica.gif" width="28" height="36" /></td>
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
                        <td><img src="/ecompra/public/image/icones/ic_monitor.gif" /></td>
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
                        <td><img src="/ecompra/public/image/icones/ic_impressao.gif"/></td>
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
                        <td><img src="/ecompra/public/image/icones/ic_armazenamento.gif"/></td>
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
                        <td><img src="/ecompra/public/image/icones/ic_acessorios.gif"/></td>
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
                <table width="100%" border="0" id="tabela_cadastro">
                    <tr>
                        <td width="17%" align="right">CPF:<span class="obrigatorio">*</span></td>
                        <td colspan="2"><label>
                                <input name="txt_cpf" type="text" value="" />
                            </label></td>
                    </tr>
                    <tr >
                        <td align="right">Nome:<span class="obrigatorio">*</span></td>
                        <td colspan="2"><input name="txt_nome" type="text" value="" size="40" /></td>
                    </tr>
                    <tr >
                        <td align="right">Endere&ccedil;o:<span class="obrigatorio">*</span></td>
                        <td colspan="2"><input name="txt_endereco" type="text" value="" size="40" /></td>
                    </tr>
                    <tr >
                        <td align="right">Estado:<span class="obrigatorio">*</span></td>
                        <td colspan="2"><input name="txt_estado" type="text" value="" /> UF:<span class="obrigatorio">*</span>      <select name="select_uf" size="1">
                                <option value="0">- UF - </option>
                                <option value="1">AC</option>
                                <option value="4">AL</option>
                                <option value="2">AM</option>
                                <option value="1">AP</option>
                                <option value="4">BA</option>
                                <option value="2">CE</option>
                                <option value="1">DF</option>
                                <option value="4">ES</option>
                                <option value="2">GO</option>
                                <option value="4">MA</option>
                                <option value="2">MG</option>
                                <option value="1">MS</option>
                                <option value="4">MT</option>
                                <option value="2">PA</option>
                                <option value="1">PB</option>
                                <option value="4">PE</option>
                                <option value="2">PI</option>
                                <option value="4">PR</option>
                                <option value="2">RJ</option>
                                <option value="1">RN</option>
                                <option value="4">RO</option>
                                <option value="2">RR</option>
                                <option value="1">RS</option>
                                <option value="4">SC</option>
                                <option value="2">SE</option>
                                <option value="2">SP</option>
                                <option value="1">TO</option>
                            </select></td>
                    </tr>
                    <tr >
                        <td align="right">Telefone fixo:</td>
                        <td colspan="2"><input name="txt_tel_fixo" type="text" value="" /></td>
                    </tr>
                    <tr >
                        <td align="right">Telefone celular:<span class="obrigatorio">*</span></td>
                        <td colspan="2"><input name="txt_tel_cel" type="text" value="" /></td>
                    </tr>
                    <tr >
                        <td align="right">Sexo:<span class="obrigatorio">*</span></td>
                        <td colspan="2">
                            <input type="radio" name="radio" value="feminino">
                            Feminino
                            <input type="radio" name="radio" value="masculino">
                            Maculino
                        </td>
                                    </tr>
                    <tr >
                        <td align="right">Estado civil:</td>
                        <td colspan="2"><label>
                                <select name="select_estado_civil" size="1">
                                    <option value="0">- Selecione - </option>
                                    <option value="1">Casado</option>
                                    <option value="4">Separado</option>
                                    <option value="2">Solteiro</option>
                                    <option value="3">Vi&uacute;vo</option>
                                    <option value="5">Outros</option>
                                </select>
                            </label></td>
                    </tr>
                    <tr >
                        <td align="right">E-mail:<span class="obrigatorio">*</span></td>
                        <td colspan="2"><input name="txt_email" type="text" value="" size="40" /></td>
                    </tr>
                    <tr >
                        <td align="right">Login:<span class="obrigatorio">*</span></td>
                        <td colspan="2"><input name="txt_login" type="text" value="" /></td>
                    </tr>
                    <tr >
                        <td align="right">Senha:<span class="obrigatorio">*</span></td>
                        <td colspan="2"><input name="txt_senha" type="password" value="" /></td>
                    </tr>
                    <tr >
                        <td align="right">Confirmar Senha:<span class="obrigatorio">*</span></td>
                        <td colspan="2"><input name="txt_conf_senha" type="password" value="" /></td>
                    </tr>
                    <tr >
                        <td  height="44" colspan="2" align="center">
                            <input type="submit" value="Salvar" class="botao setaLink"/>&nbsp;
                            <a href="/ecompra/index.jsp" class="setaLink"><input name="btn_cancelar" type="button" value="Cancelar" class="botao setaLink" /></a></td>
                        <td width="51%" align="center">&nbsp;</td>
                    </tr>
                    <tr >
                        <td  height="22" colspan="3" class="obrigatorio">&nbsp;(*) Campos de preenchimento obrigat&oacute;rio. </td>
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
            <div id="rodape" class="fonteItenMenu">e-compra &reg;</div>
        </form>
    </body>
</html>
