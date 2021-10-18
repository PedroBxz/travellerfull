<!doctype html>
<html lang="pt-br">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
        integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>Dados Usuário</title>
    <link rel="shortcut icon" href="../images/plane-solid.svg" />
    <jsp:useBean id="Usuario" type="model.Usuario" scope="session"/> 
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
</head>

<body>
    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous">
    </script>

    <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
        <div class="container-fluid">
            <a class="navbar-brand" href="../index.html"><i class="fas fa-plane"></i>Traveller</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link" aria-current="page" href="../index.html">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./cidades.html">Conheça Cidades</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                            data-bs-toggle="dropdown" aria-expanded="false">
                            ServiÃ§os
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="./hoteis.html">Hotéis e Hospedagem</a></li>
                            <li><a class="dropdown-item" href="./carros.html">Aluguéis de carros</a></li>
                        </ul>
                    </li>
                </ul>
                <div class="navbar-nav  mb-2 mb-lg-0">
                    <li class="nav-item"><a href="./login.jsp" class="nav-link">Login</a></li>
                </div>
            </div>
        </div>
    </nav>

    <div class="container mt-2">
    <h1 class="display-3 text-center">Seus Dados</h1>
        <h1 class="display-4 text-center">Olá <c:out value = "${Usuario.nome}"/></h1>
        <h1 class="lead text-center"><c:out value = "${Usuario.email}"/></h1>
        
    </div>
    <div class="mx-5">

        <div class="row">
            <div class="col-sm-12 col-md-6">
                <div class="form-group">
                    <label for="nome">Nome</label>
                    <input type="text" name="nome" id="nome" class="form-control" value = <c:out value = "${Usuario.nome}"/> disabled>
                </div>
                
            </div>
            <div class="col-md-6 col-sm-12">
                
                <label for="senha">Senha</label>
                <input type="password" name="senha" id="senha" class="form-control" value = <c:out value = "${Usuario.senha}"/> disabled>
            </div>
        </div>
        
        <div class="row">
            <div class="col-sm-12 col-md-6">
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" name="email" id="email" class="form-control" value = <c:out value = "${Usuario.email}"/> disabled>
                </div>
                
            </div>
            <div class="col-md-6 col-sm-12">
                
                <label for="acesso">Nivel de Acesso</label>
                <select name="acesso" id="acesso" class="form-control">
                    <option value="" selected disabled>Selecione uma opção</option>
                    <option value="A" disabled>Administrador</option>
                    <option value="U">Usuário</option>
                </select>
                
            </div>
        </div>
        
        <div class="row">
            <div class="col-sm-12 col-md-6">
                <div class="form-group">
                    <label for="nasc">Data de Nascimento</label>
                    <input type="date" name="nasc" id="nasc" class="form-control" value= <c:out value = "${Usuario.nasc}"/>>
                </div>
                
            </div>
            <div class="col-md-6 col-sm-12">
                
                <label for="estado">Estado</label>
                <select id="estado" name="estado" class="form-control">
                    <option value="" selected disabled>Selecione seu estado</option>
                    <option value="AC">Acre</option>
                    <option value="AL">Alagoas</option>
                    <option value="AP">Amapá</option>
                    <option value="AM">Amazonas</option>
                    <option value="BA">Bahia</option>
                    <option value="CE">CearÃ¡</option>
                    <option value="DF">Distrito Federal</option>
                    <option value="ES">Espírito Santo</option>
                    <option value="GO">Goiás</option>
                    <option value="MA">Maranhão</option>
                    <option value="MT">Mato Grosso</option>
                    <option value="MS">Mato Grosso do Sul</option>
                    <option value="MG">Minas Gerais</option>
                    <option value="PA">Pará</option>
                    <option value="PB">Paraíba</option>
                    <option value="PR">Paraná</option>
                    <option value="PE">Pernambuco</option>
                    <option value="PI">Piauí­</option>
                    <option value="RJ">Rio de Janeiro</option>
                    <option value="RN">Rio Grande do Norte</option>
                    <option value="RS">Rio Grande do Sul</option>
                    <option value="RO">Rondônia</option>
                    <option value="RR">Roraima</option>
                    <option value="SC">Santa Catarina</option>
                    <option value="SP">São Paulo</option>
                    <option value="SE">Sergipe</option>
                    <option value="TO">Tocantins</option>
                    <option value="EX">Estrangeiro</option>
                </select>
                
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12 col-md-6">
                <div class="form-group">
                    <label for="foto">Foto</label>
                    <input type="file" name="foto" id="foto" class="form-control" accept="image/png, image/jpeg">
                </div>
                
            </div>
            <div class="col-md-6 col-sm-12">
                
                <label for="genero">GÃªnero</label>
                <select name="genero" id="genero" class="form-control">
                    <option value="" selected disabled>Selecione uma opção</option>
                    <option value="F">Feminino</option>
                    <option value="M">Masculino</option>
                    <option value="B">Não-Binário</option>
                    <option value="O">Outro</option>
                    <option value="P">Prefiro não informar</option>
                </select>
                
            </div>
        </div>
    </div>
        
        
        
        
    </body>
    
    </html>