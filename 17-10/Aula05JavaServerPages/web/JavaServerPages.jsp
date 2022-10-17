<%-- 
    Document   : JavaServerPages
    Created on : 17 de out de 2022, 14:04:43
    Author     : Fatec
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<html>
    <head>
        <title>JSP Page</title>
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    </head>
    <body>
        <h2 class="text-center">
            <%
                out.println("Página JSP");
            %>
        <!-- Pode Gerar um Código JSP dentro de um HTML -->
        </h2>
        <h3 class="text-center">
        <%
            int dia = Integer.parseInt((new SimpleDateFormat("dd")).format(new Date()));
            int mes = Integer.parseInt((new SimpleDateFormat("MM")).format(new Date()));
            int ano = Integer.parseInt((new SimpleDateFormat("yyyy")).format(new Date()));
            String mest = "";
            if(mes == 1){
               mest = "Janeiro";
            }else if(mes == 2){
               mest = "Fevereiro";
            }else if(mes == 3){
                mest = "Março";
            }else if(mes == 4){
                mest = "Abril";
            }else if(mes == 5){
                mest = "Maio";
            }else if(mes == 6){
                mest = "Junho";
            }else if(mes == 7){
                mest = "Julho";
            }else if(mes == 8){
                mest = "Agosto";    
            }else if(mes == 9){
                mest = "Setembro";
            }else if(mes == 10){
                mest = "Outubro";
            }else if(mes == 11){
                mest = "Novembro";
            }else if(mes == 12){
                mest = "Dezembro";
            }else{
                mest = "Fim dos Tempos";
                        }
            out.println("<br>Hoje é dia " + dia + " de " + mest + " de " + ano);
        %>
        <!-- Tem operadores, concatenadores, estrutura de programação etc... -->
        </h3>
        <div class="col-sm-12 text-center pt-5">
            <a href="index.html" class="btn btn-outline-dark">Voltar</a>
        </div>
    </body>
</html>