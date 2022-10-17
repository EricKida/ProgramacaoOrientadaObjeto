<%-- 
    Document   : JavaServerTagLibrary
    Created on : 17 de out de 2022, 14:56:48
    Author     : Fatec
--%>

-<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<html>
  <head>
    <title>JSTL Page</title>
  </head>

  <body>
    <c:forEach var="i" begin="1" end="10" step="1">
      <c:out value="${i}" />

      <br />
    </c:forEach>
              <div class="col-sm-12 text-center pt-5">
            <a href="index.html" class="btn btn-outline-dark">Voltar</a>
        </div>
          <%@ include file="/WEB-INF/jspf/body.jspf" %>
    <!-- Permite a adição de bibliotecas para resolver tarefas, como execução e análise de dados entre outras -->
</body>
</html>