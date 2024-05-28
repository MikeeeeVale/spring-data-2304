<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Editar Livro</title>
    <link href="/css/bootstrap.min.css" rel="stylesheet"/>
</head>
<body>
    <div class="container">
        <h1>Editar Livro</h1>
        <form action="/livros/update" method="post">
            <input type="hidden" name="id" value="${livro.id}"/>
            <div>
                <label class="'form-label">Título:</label>
                <input type="text" name="titulo" class="form-control" value="${livro.titulo}"/>
            </div>
            <div>
                <label class="form-label">Gênero</label>
                <select name="genero" class="form-select">
                    <c:forEach var="item" items="${generos}">
                        <option ${item.id == livro.genero.id ? "selected" : ""} value="${item.id}">${item.nome}</option>
                    </c:forEach>
                </select>
            </div>
            <hr/>
            <a href="/livros/list" class="btn btn-secondary">Voltar</a>
            <button type="submit" class="btn btn-success">Salvar</button>
        </form>
        </div>
</body>
</html>