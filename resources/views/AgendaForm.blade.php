<!doctype html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <link rel="icon" type="image/x-icon" href="/img/pata.png" />
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Agenda Form</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
      </head>
@php
    if (!empty($agenda->id)) {
        $route = route('agenda.update', $agenda->id);
    } else {
        $route = route('agenda.store');
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

        <h1>Formulário Agenda</h1>

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
            @if (!empty($agenda->id))
                @method('PUT')
            @endif

                <input type="hidden" name="id"
                    value="@if (!empty(old('id'))) {{ old('id') }} @elseif(!empty($agenda->id)) {{ $agenda->id }} @else {{ '' }} @endif" /><br>

                    <div class="col-3">
                    <label class="form-label">Nome Veterinário</label><br>
                    <input type="text" class="form-control" name="veterinario"
                        value="@if (!empty(old('veterinario'))) {{ old('veterinario') }} @elseif(!empty($agenda->veterinario)) {{ $agenda->veterinario }} @else {{ '' }} @endif" /><br>
                </div>

                <div class="col-3">
                    <label class="form-label">Paciente</label><br>
                    <input type="text" class="form-control" name="paciente"
                        value="@if (!empty(old('paciente'))) {{ old('paciente') }} @elseif(!empty($agenda->paciente)) {{ $agenda->paciente }} @else {{ '' }} @endif" /><br>
                </div>

                <div class="col-3">
                    <label class="form-label">Tipo consulta/procedimento</label><br>
                    <input type="text" class="form-control" name="consulta"
                        value="@if (!empty(old('consulta'))) {{ old('consulta') }} @elseif(!empty($agenda->consulta)) {{ $agenda->consulta }} @else {{ '' }} @endif" /><br>
                </div>
                <div class="col-3">
                    <label class="form-label">Data</label><br>
                    <input type="date" class="form-control" name="dia"
                        value="@if (!empty(old('dia'))) {{ old('dia') }} @elseif(!empty($agenda->dia)) {{ $agenda->dia }} @else {{ '' }} @endif" /><br>
                </div>

                <div class="col-3">
                    <label class="form-label">Horario</label><br>
                    <input type="time" class="form-control" name="horario"
                        value="@if (!empty(old('horario'))) {{ old('horario') }} @elseif(!empty($agenda->horario)) {{ $agenda->horario }} @else {{ '' }} @endif" /><br>
                </div>


                <button class="btn btn-success" type="submit">
                    <i class="fa-solid fa-save"></i> Salvar
                </button>
                <a href='{{ route('agenda.index') }}' class="btn btn-primary"><i class="fa-solid fa-arrow-left"></i>
                    Voltar</a>
            </form>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N" crossorigin="anonymous">
        </script>
    </body>
    </html>
