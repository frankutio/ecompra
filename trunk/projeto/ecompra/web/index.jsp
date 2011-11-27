<%@page contentType="text/html" pageEncoding="ISO-8859-1" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
        <title>e-Compra</title>
        <link type="text/css" rel="stylesheet" href="/ecompra/public/css/geral.css" />
    </head>

    <body class="body">
        <form method="post" action="#">
            <div id="topo">&nbsp;
                <div id="carrinho"><a href="/ecompra/cliente_carrinho.jsp" class="setaLink"><img src="/ecompra/public/image/icones/ic_carrinho.gif" border="0" /><span class="texto_opcoes">Meu carrinho</span></a></div>
                <div id="cadastro"><a href="/ecompra/cliente_cadastro.jsp"  class="setaLink"><img src="/ecompra/public/image/icones/ic_cadastro.gif" border="0" /><span class="texto_opcoes" >Cadastre-se aqui!</span></a></div>
                <div id="login"><a href="/ecompra/cliente_login.jsp" class="setaLink"><img src="/ecompra/public/image/icones/ic_login.gif" border="0"/><span class="texto_opcoes">Login</span></a></div>
            </div>
            <div class="clear"></div>
            <div id="logo">
                <a href="/ecompra/index.jsp"><img src="/ecompra/public/image/logo3.gif" border="0" title="Retornar para a loja!" class="setaLink"  /></a>
            </div>
            <div class="clear"></div>
            <div id="menu_super">
                <p class="barNav">
                    <a href="caminho/arquivo.html" >ACESSÓRIOS E PERIFÉRICOS</a>
                    <a href="caminho/arquivo.html">ARMAZENAMENTO</a>
                    <a href="caminho/arquivo.html">IMPRESS&Atilde;O E IMAGEM </a>
                    <a href="/ecompra/cliente_monitores.jsp" title="Monitores">MONITORES</a>
                    <a href="/ecompra/clinete_computadores.jsp" title="Computadores">COMPUTADORES</a>
                    <a href="/ecompra/cliente_notebooks.jsp" title="Notebooks" >NOTEBOOKS </a>
                </p>
            </div>
            <div class="clear"></div>
            <div id="localizador" ><span class="texto_localizador" >HOME</span></div>
            <div id="banner_topo"><img src="/ecompra/public/image/promocao/banner_super.png" border="0"  /></div>

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

            <div id="conteudo">
                <table width="100%" border="0">
                    <tr align="center">
                        <td height="179"><img src="/ecompra/public/image/produtos/img_001.gif" width="138" height="110" /><br />
                            <span class="descProduto">Computador Apple iMac MC508BZ Intel Core i3 3.06 GHz, 4GB, 500GB, Tela 21,5", Com Teclado Sem Fio e Magic Mouse</span></td>
                        <td><img src="/ecompra/public/image/produtos/img_002.gif" width="159" height="116" /><br />
                            <span class="descProduto">Caixa De Som 2.1 - Clone - 11113-CL</span></td>
                        <td><img src="/ecompra/public/image/produtos/img_003.gif" width="130" height="107" /><br />
                            <span class="descProduto">Cartucho HP 56b Preto - HP - C6656BB</span></td>
                        <td><img src="/ecompra/public/image/produtos/img_004.gif" width="130" height="107" /><br />
                            <span class="descProduto">Computador N3 Intel Pentium Dual Core 3.0Ghz E5700, 2GB, 500GB HD, Linux Momentum, Gravador DVD, Teclado e Mouse</span></td>
                    </tr>
                    <tr align="center">
                        <td><img src="/ecompra/public/image/produtos/img_005.gif" width="130" height="107" /><br />
                            <span class="descProduto">Computador Apple iMac MC508BZ Intel Core i3 3.06 GHz, 4GB, 500GB, Tela 21,5&quot;, Com Teclado Sem Fio e Magic Mouse</span></td>
                        <td><img src="/ecompra/public/image/produtos/img_003.gif" width="130" height="107" /><br />
                            <span class="descProduto">Cartucho HP 56b Preto - HP - C6656BB</span></td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr align="center">
                        <td><img src="/ecompra/public/image/produtos/img_003.gif" width="130" height="107" /><br />
                            <span class="descProduto">Cartucho HP 56b Preto - HP - C6656BB</span></td>
                        <td><img src="/ecompra/public/image/produtos/img_001.gif" width="138" height="110" /><br />
                            <span class="descProduto">Computador Apple iMac MC508BZ Intel Core i3 3.06 GHz, 4GB, 500GB, Tela 21,5&quot;, Com Teclado Sem Fio e Magic Mouse</span></td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </div>

            <div id="promocao_loja">
                <img src="/ecompra/public/image/promocao/promo1.jpg" /><br /><br />
                <img src="/ecompra/public/image/promocao/promo2.jpg" /><br /><br />
                <img src="/ecompra/public/image/promocao/promo3.jpg" />
            </div>

            <div class="clear"></div>
            <div id="icone_tree">
                <img src="/ecompra/public/image/tree.gif" class="setaLink" title="O e-Compra possui responsabilidade ambiental!"/>
            </div>
            <div class="clear"></div>

            <div id="rodape" class="fonteItenMenu">e-compra &reg;</div>

        </form>
    </body>

</html>