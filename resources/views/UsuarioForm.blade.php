<!doctype html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <link rel="icon" type="image/x-icon" href="/img/pata.png" />
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Usuario Form</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
      </head>
@php
    if (!empty($usuario->id)) {
        $route = route('usuario.update', $usuario->id);
    } else {
        $route = route('usuario.store');
    }
@endphp

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

        <h1>Formulário Paciente</h1>

        @if ($errors->any())
            <div class="alert alert-danger">
                <ul>
                    @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
        @endif

        <form action='{{ $route }}' method="POST" enctype="multipart/form-data">
            @csrf
            @if (!empty($usuario->id))
                @method('PUT')
            @endif

            <input type="hidden" name="id"
                value="@if (!empty(old('id'))) {{ old('id') }} @elseif(!empty($usuario->id)) {{ $usuario->id }} @else {{ '' }} @endif" /><br>

                <div class="col-3">
                <label class="form-label">Nome</label><br>
                <input type="text" class="form-control" name="nome"
                    value="@if (!empty(old('nome'))) {{ old('nome') }} @elseif(!empty($usuario->nome)) {{ $usuario->nome }} @else {{ '' }} @endif" /><br>
            </div>

            <div class="col-3">
                <label class="form-label">Nome Pet</label><br>
                <input type="text" class="form-control" name="nomepet"
                    value="@if (!empty(old('nomepet'))) {{ old('nomepet') }} @elseif(!empty($usuario->nomepet)) {{ $usuario->nomepet }} @else {{ '' }} @endif" /><br>
            </div>

            <div class="col-3">
                <label class="form-label">Telefone</label><br>
                <input type="text" class="form-control" name="telefone"
                    value="@if (!empty(old('telefone'))) {{ old('telefone') }} @elseif(!empty($usuario->telefone)) {{ $usuario->telefone }} @else {{ '' }} @endif" /><br>
            </div>
            <div class="col-3">
                <label class="form-label">E-mail</label><br>
                <input type="email" class="form-control" name="email"
                    value="@if (!empty(old('email'))) {{ old('email') }} @elseif(!empty($usuario->email)) {{ $usuario->email }} @else {{ '' }} @endif" /><br>
            </div>
            <div class="col-3">
                <label class="form-label">Categoria</label><br>
                <select name="categoria_id" class="form-select">
                    @foreach ($categorias as $item)
                        <option value="{{ $item->id }}">{{ $item->nome }}</option>
                    @endforeach
                </select>
            </div>
            @php
                $nome_imagem = !empty($usuario->imagem) ? $usuario->imagem : 'sem_imagem.jpg';
            @endphp
            <div class="col-6">
                <br>
                <img class="img-thumbnail" src="/storage/{{ $nome_imagem }}" width="300px" />
                <br><br>
                <input type="file" class="form-control" name="imagem" /><br>
            </div>
            <button class="btn btn-success" type="submit">
                <i class="fa-solid fa-save"></i> Salvar
            </button>
            <a href='{{ route('usuario.index') }}' class="btn btn-primary"><i class="fa-solid fa-arrow-left"></i>
                Voltar</a>
        </form>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N" crossorigin="anonymous">
    </script>
</body>

</html>
