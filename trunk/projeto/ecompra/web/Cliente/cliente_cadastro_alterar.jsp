<%@page language="java" contentType="text/html;charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
        <title>e-Compra</title>
        <link rel="stylesheet" type="text/css" href="/ecompra/public/css/geral.css" />
        <script language="JavaScript">
        function validaCampoObrigatorio(form){
                    var erro=0;
                    var obrigatorio;
                    for (i=0;i<form.length;i++){
                        obrigatorio = form[i].lang;
                        if (obrigatorio==1){
                           if (form[i].value == ""){
                               var nome = form[i].name;
                               erro++;
                           }
                        }
                    }
                    if(erro>=1){
                                alert("Existe(m) " + erro + " campo(s) obrigatório(s) vazio(s)! ")
                                return false;
                    } else
                                return true;
        }

        </script>
    </head>
    <body class="body">
        <form method="post" action="/ecompra/Cliente" onSubmit="return validaCampoObrigatorio(this)">
        <input type="hidden" name="operacao" value="alterar_cliente" />
            <div id="topo">&nbsp;
                <div id="sair"><a href="/ecompra/Login?acao=SAIR" class="setaLink"><img src="/ecompra/public/image/icones/ic_sair.gif" border="0"/><span class="texto_opcoes">Sair</span></a></div>
                <div id="carrinho"><a href="/ecompra/Cliente/cliente_carrinho_logado.jsp" class="setaLink"><img src="/ecompra/public/image/icones/ic_carrinho.gif" border="0" /><span class="texto_opcoes">Meu carrinho</span></a></div>
                <div id="cadastro"><a href="/ecompra/Cliente/cliente_cadastro_alterar.jsp"  class="setaLink"><img src="/ecompra/public/image/icones/ic_meu_cadastro.gif" border="0" /><span class="texto_opcoes" >Meu cadastro</span></a></div>
                <div id="meus_pedidos"><a href="/ecompra/Cliente/cliente_meus_pedidos.jsp" class="setaLink"><img src="/ecompra/public/image/icones/ic_meus_pedidos.gif" border="0"/><span class="texto_opcoes">Meus pedidos</span></a></div>
            </div>
            <div class="clear"></div>
            <div id="logo">
                <a href="/ecompra/Cliente/index_logado.jsp"><img src="/ecompra/public/image/logo3.gif" border="0" title="Retornar para a loja!" class="setaLink"  /></a>
            </div>
            <div class="clear"></div>

            <div id="menu_super">
                <p class="barNav">
                    <a href="caminho/arquivo.html" >ACESSÓRIOS E PERIFÉRICOS</a>
                    <a href="caminho/arquivo.html">ARMAZENAMENTO</a>
                    <a href="caminho/arquivo.html">IMPRESS&Atilde;O E IMAGEM </a>
                    <a href="/ecompra/cliente_monitores.jsp" title="Monitores">MONITORES</a>
                    <a href="/ecompra/cliente_computadores.jsp" title="Computadores">COMPUTADORES</a>
                    <a href="/ecompra/cliente_notebooks.jsp" title="Notebooks" >NOTEBOOKS </a>
                </p>
            </div>
            <div class="clear"></div>
            <div id="localizador"><span class="texto_localizador">Bem-vindo ${usuarioLogado.nome}! HOME/MEU CADASTRO</span></div>

            <div id="menu_lateral">
                <table width="100%" border="0">
                    <tr>
                        <td width="16%"><img src="/ecompra/public/image/icones/ic_notebook.gif"  /></td>
                        <td width="84%" class="tituloMenu">Notebooks</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="fonteItenMenu setaLink"><a href="/ecompra/cliente_notebooks.jsp" class="setaLink" title="Notebooks">Notebooks</a></td>
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
                        <td class="fonteItenMenu setaLink"><a href="/ecompra/cliente_computadores.jsp" class="setaLink" title="Computadores">Computadores</a></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="fonteItenMenu setaLink">All in One </td>
                    </tr>
                    <tr>
                        <td><img src="/ecompra/public/image/icones/ic_monitor.gif" /></td>
                        <td class="tituloMenu">Monitores</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="fonteItenMenu setaLink"><a href="/ecompra/cliente_monitores.jsp" class="setaLink" title="Monitores de LED">Monitores de LED</a> </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="fonteItenMenu setaLink">Monitores LCD </td>
                    </tr>
                    <tr>
                        <td><img src="/ecompra/public/image/icones/ic_impressao.gif"  /></td>
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
                        <td><img src="/ecompra/public/image/icones/ic_armazenamento.gif"  /></td>
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
                        <td><img src="/ecompra/public/image/icones/ic_acessorios.gif"  /></td>
                        <td class="tituloMenu">Acess&oacute;rios e Perif&eacute;ricos </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="fonteItenMenu setaLink">Teclado</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="fonteItenMenu setaLink">Caixa de som  </td>
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
                        <th height="37" colspan="3" >Meu cadastro </th>
                    </tr>
                     
                    <input type="hidden" name="cpf_cliente" value="${usuarioLogado.cpf}" />
                    <tr>
                        <td width="21%" align="right" >CPF:<span class="obrigatorio">*</span></td>
                        <td colspan="2"><label>
                                <input lang="0" name="txt_cpf" disabled="disabled" type="text" value="${usuarioLogado.cpf}" />
                            </label></td>
                    </tr>
                    <tr >
                        <td align="right">Nome:<span class="obrigatorio">*</span></td>
                        <td colspan="2"><input lang="1" name="txt_nome" type="text" value="${usuarioLogado.nome}" size="40" /></td>
                    </tr>
                    <tr >
                        <td align="right">Endere&ccedil;o:<span class="obrigatorio">*</span></td>
                        <td colspan="2"><input lang="1" name="txt_endereco" type="text" value="${usuarioLogado.endereco}" size="40" /></td>
                    </tr>
                    <tr >
                        <td align="right">Cidade:<span class="obrigatorio">*</span></td>
                        <td colspan="2">
                            <input lang="1" name="txt_cidade" type="text" value="${usuarioLogado.cidade}" />&nbsp;&nbsp;UF:<span class="obrigatorio">*</span>
                            <select lang="0" name="select_uf" size="1">
                                <option value="${usuarioLogado.uf}">[${usuarioLogado.uf}]</option>
                                <option value="AC">AC</option>
                                <option value="AL">AL</option>
                                <option value="AM">AM</option>
                                <option value="AP">AP</option>
                                <option value="BA">BA</option>
                                <option value="CE">CE</option>
                                <option value="DF">DF</option>
                                <option value="ES">ES</option>
                                <option value="GO">GO</option>
                                <option value="MA">MA</option>
                                <option value="MG">MG</option>
                                <option value="MS">MS</option>
                                <option value="MT">MT</option>
                                <option value="PA">PA</option>
                                <option value="PB">PB</option>
                                <option value="PE">PE</option>
                                <option value="PI">PI</option>
                                <option value="PR">PR</option>
                                <option value="RJ">RJ</option>
                                <option value="RN">RN</option>
                                <option value="RO">RO</option>
                                <option value="RR">RR</option>
                                <option value="RS">RS</option>
                                <option value="SC">SC</option>
                                <option value="SE">SE</option>
                                <option value="SP">SP</option>
                                <option value="TO">TO</option>
                            </select></td>
                    </tr>
                    <tr >
                        <td align="right">Cep:</td>
                        <td colspan="2"><input lang="0" name="txt_cep" type="text" value="${usuarioLogado.cep}" /></td>
                    </tr>
                    <tr >
                        <td align="right">Telefone fixo:</td>
                        <td colspan="2"><input lang="0" name="txt_tel_fixo" type="text" value="${usuarioLogado.tel_fixo}" /></td>
                    </tr>
                    <tr >
                        <td align="right">Telefone celular:<span class="obrigatorio">*</span></td>
                        <td colspan="2"><input lang="1" name="txt_tel_cel" type="text" value="${usuarioLogado.tel_cel}" /></td>
                    </tr>
                    <tr >
                        <td align="right">Sexo:<span class="obrigatorio">*</span></td>
                        <td colspan="2"><label>
                                <input lang="1" name="radio" type="radio" value="feminino" />
                                Feminino
                                <input lang="1" name="radio" type="radio" value="masculino" />
                                Masculino
                            </label></td>
                    </tr>
                    <tr >
                        <td align="right">Estado civil:  </td>
                        <td colspan="2"><label>
                                <select lang="0" name="select_estado_civil" size="1">
                                    <option value="" class="">[${usuarioLogado.estado_civil}]</option>
                                    <option value="Casado">Casado</option>
                                    <option value="Separado">Separado</option>
                                    <option value="Solteiro">Solteiro</option>
                                    <option value="Viuvo">Vi&uacute;vo</option>
                                    <option value="Outros">Outros</option>
                                </select>
                            </label></td>
                    </tr>
                    <tr >
                        <td align="right">E-mail:<span class="obrigatorio">*</span></td>
                        <td colspan="2"><input lang="1" name="txt_email" type="text" value="${usuarioLogado.email}" size="40" /></td>
                    </tr>
                    <tr >
                        <td align="right">Login:<span class="obrigatorio">*</span></td>
                        <td colspan="2"><input lang="1" name="txt_login" type="text" value="${usuarioLogado.login}" /></td>
                    </tr>
                    <tr >
                        <td align="right">Senha:<span class="obrigatorio">*</span></td>
                        <td colspan="2"><input lang="1" name="txt_senha" type="password" value="" /></td>
                    </tr>
                    <tr >
                        <td align="right">Confirmar senha:<span class="obrigatorio">*</span> </td>
                        <td colspan="2"><input lang="1" name="txt_conf_senha" type="password" value="" /></td>
                    </tr>
                    <tr >
                        <td  height="44" colspan="2" align="center">
                            <input type="submit" value="Salvar" class="botao setaLink"/>&nbsp;
                            <a href="/ecompra/Cliente/index_logado.jsp">
                                <input name="button" type="button" value="Cancelar" class="botao setaLink" /></a></td>
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
            <div id="rodape" class="fonteItenMenu setaLink">e-compra &reg;</div>
        </form>
    </body>
</html>
