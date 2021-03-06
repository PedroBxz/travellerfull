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
  <title>Login</title>
  <link rel="shortcut icon" href="../images/plane-solid.svg" />
</head>

<body>
  <!-- Option 1: Bootstrap Bundle with Popper -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous">
  </script>

  <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
    <div class="container-fluid">
      <a class="navbar-brand" href="../index.html"><i class="fas fa-plane"></i>Traveller</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
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
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown"
              aria-expanded="false">
              Serviços
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
  <div class="row justify-content-center px-3">
    <div class="col-md-6 col-sm-12">
      <h1 class="display-3 text-center">Login</h1>

      <form action="../login" method="post">
        <div class="form-group">
          <label for="email" class="lead">Email</label>
          <input type="email" name="email" id="email" class="form-control" required autofocus
            placeholder="ex: Email@email.com">
        </div>
        <div class="form-group">
          <label for="senha" class="lead">Senha</label>
          <input type="password" name="senha" id="senha" class="form-control" required placeholder="ex: SuaSenha123">

        </div>
        <button type="submit" class="btn btn-primary mt-4">Login</button>
      </form>

    </div>
  </div>

</body>

</html>