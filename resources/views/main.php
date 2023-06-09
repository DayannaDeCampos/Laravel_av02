<?php
  include'../Util.php';
  util::verificar();

?>
<html>
  <head>
    <title>Pet Lover</title>
    <meta charset="utf-8">
    <link rel="icon" type="image/x-icon" href="/img/pata.png" />
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
  </head>
  <body style="background-image: url(/img/background.jpg)">

  <nav class="navbar" style="background-color: rgb(184, 151, 214)">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">
      <img src="/img/logo.png" alt="Logo" width="30" height="24" class="d-inline-block align-text-top">
      <b>Pet Lover</b>
    </a>
    <a class="nav-link" href="{{ url('/usuario') }}">Listar Pacientes</a>
          <a class="nav-link" href="{{ url('/agenda') }}">Listar Agenda</a>
          <a class="nav-link" href="{{ url('/brinquedo') }}">Listar Brinquedos</a>
          <a class="nav-link" href="{{ url('/medicamento') }}">Listar Medicamentos</a>
          <a class="nav-link" href="{{ url('/leitura') }}">CRUD Miguel</a>
          <a class="btn btn-danger" href="{{ route('logout') }}"
                onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
                <i class='fas fa-sign-out-alt'></i> {{ __('Sair') }}</a>
            <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                @csrf
            </form>
  </div>
</nav>
<div class="container">
  <br>
		<h5>Tela de cadastros</h5>
		<?php
				echo "<b>Seja bem vindo: </b>" .$_SESSION['login']. " ";
		?>

<div class="d-grid gap-2 col-6 mx-auto">
<a href="{{ url('/usuario') }}"button href="UsuarioForm.php" class="btn btn" style="background-color: rgb(184, 151, 214)" type="button">Cadastrar Paciente(pet)</button></a>
<a href="{{ url('/brinquedo') }}" button class="btn btn" style="background-color: rgb(184, 151, 214)" type="button">Cadastrar Brinquedos para venda</button> </a>
<a href="{{ url('/agenda') }}" button class="btn btn" style="background-color: rgb(184, 151, 214)" type="button">Cadastrar Agenda</button> </a>
<a href="{{ url('/medicamento') }}" button class="btn btn" style="background-color: rgb(184, 151, 214)" type="button">Cadastrar Medicamentos</button> </a>
<a href="{{ url('/leitura') }}" button class="btn btn" style="background-color: rgb(184, 151, 214)" type="button">Cadastrar Leituras</button> </a>
</div>




 <section >
           <br> <br> <h4>Contato</h4>
            <footer>
                <ul>
                <center> <span class="material-symbols-outlined">phone_in_talk</span>
                <a>Telefone: (49) 9 8883-2143 </a><br>
                <span class="material-symbols-outlined">outgoing_mail</span>
                <a>Email: PetLover@gmail.com </a><br>
                <span class="material-symbols-outlined">location_on</span>
                <a>ENDEREÇO: <p>Rua das rosas,<br>
                        Bairro do céu<br>
                        Chapecó/SC</p> </a></li>
            </center>
        </ul>
    </footer>

    <footer>
        <div>
            <center><img src="/img/icone.png"></center>
            <center>
                <h1>Pet Shop</h1>
            </center>
        </div>
    </footer>
    </div>
    <footer>
        <p>Copyright &copy 2023 por Dayanna de Campos Henrique e Julia Vertuoso. Todos os direitos reservados.</p>
    </footer>
         </section>
  </body>
</html>
