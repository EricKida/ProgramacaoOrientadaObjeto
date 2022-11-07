<%-- 
    Document   : juros-simples
    Created on : 7 de nov de 2022, 16:09:24
    Author     : Fatec
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Juros Simples</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <div class="col-sm-12 container-fluid">
            <h1 class="text-center">Juros Simples</h1>
            <%

                String errorMessage = null;
                boolean hasParameterC = request.getParameter("C") != null;
                boolean hasParameterI = request.getParameter("I") != null;
                boolean hasParameterT = request.getParameter("T") != null;

                double C = 0, I = 0, T = 0, resultado = 0;
                try {
                    C = Double.parseDouble(request.getParameter("C"));
                    I = Double.parseDouble(request.getParameter("I"));
                    T = Double.parseDouble(request.getParameter("T"));
                    resultado = C * I * T;
                } catch (Exception ex) {
                    errorMessage = ex.getMessage();
                }

            %>
            <% if (errorMessage != null) { %>
            <div class="col-sm-12 text-center">
                <button class="btn btn-danger">ERRO</button>
            </div>
            <% } %>

            <% if (hasParameterC && hasParameterI && hasParameterT) {%>
            <%= C%> * <%= I%> * <%= T%> = <%=resultado%>
            <%}%>

        </div>
        <div class="col-sm-4 container-fluid">
            <div class="row">
                <form>
                    <div class="input-group mb-3">
                        <input type="number" name="C" class="form-control" placeholder="Insira o Capital">
                        <span class="input-group-text" id="basic-addon2">$</span>
                    </div>

                    <div class="input-group mb-3">
                        <input type="number" name="I" class="form-control" placeholder="Insira a Taxa">
                        <span class="input-group-text" id="basic-addon2">%</span>
                    </div>

                    <div class="input-group mb-3">
                        <input type="number" name="I" class="form-control" placeholder="Insira o Tempo">
                        <span class="input-group-text" id="basic-addon2">T</span>
                    </div>

                    <input class="btn btn-primary" type="submit" value="Calcular Juros">
                </form>
            </div>
        </div>
    </body>
</html>
