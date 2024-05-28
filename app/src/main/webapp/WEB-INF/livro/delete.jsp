<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8" />
        <title>Remover Livro</title>
        <link href="/css/bootstrap.min.css" rel="stylesheet"/>
    </head>
    <body>
        <div class="container">
        <h1>Remover Livro</h1>
        <form action="/livro/delete" method="post">
            <input type="hidden" name="id" value="${genero.id}"/>
            <p>Tem certeza que deseja remover o gênero${genero.nome}?</p>
            <hr/>
            <a href="/livros/list" class="btn btn-secondary">Voltar</a>
            <button type="submit" class="btn btn-danger">Remover</button>
        </form>
        </div>
    </body>
</html>

