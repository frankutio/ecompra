<%@page contentType="text/html" pageEncoding="ISO-8859-1" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Insere Cliente</title>
    </head>
    <body>

        <form action="Cliente">

            <input type="hidden" name="operacao" value="termoValido" />


            Cpf: <input type="text" name="cpf" /><br />
            E-mail: <input type="text" name="email" /><br />
            Senha: <input name="senha" type="password"/><br />
            <input type="submit" value="Incluir" />
        </form>

        <%
            if (request.getAttribute("Mensagem") != null) {
                out.print(request.getAttribute("Mensagem"));
            }
        %>

    </body>
</html>