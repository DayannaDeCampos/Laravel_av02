<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Agenda List</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
        integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
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
        <h1>Listagem da Agenda {{ request()->id }}</h1>
        <form action="{{ action('App\Http\Controllers\AgendaController@search') }}" method="post">
            @csrf
            <div class="row">
                <div class="col-2">
                    <select name="campo" class="form-select">
                        <option value="veterinario">Nome Veterinário</option>
                        <option value="paciente">Paciente</option>
                        <option value="consulta">Tipo Consulta</option>
                    </select>
                </div>
                <div class="col-4">
                    <input type="text" class="form-control" placeholder="Pesquisar" name="valor" />
                </div>
                <div class="col-6">
                    <button class="btn btn-primary" type="submit">
                        <i class="fa-solid fa-magnifying-glass"></i> Buscar
                    </button>
                    <a class="btn btn-success" href='{{ action('App\Http\Controllers\AgendaController@create') }}'><i
                            class="fa-solid fa-plus"></i> Cadastrar</a>
                </div>
            </div>
        </form>
        <table class="table table-striped table-hover">
            <thead>
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Nome Veterinario(a)</th>
                    <th scope="col">Paciente</th>
                    <th scope="col">Consulta</th>
                    <th scope="col">Data</th>
                    <th scope="col">Horario</th>
                    <th scope="col"></th>
                    <th scope="col"></th>
                </tr>
            </thead>

            @foreach ($agendas as $item)
                    <tr>
                        <td scope='row'>{{ $item->id }}</td>
                        <td>{{ $item->veterinario }}</td>
                        <td>{{ $item->paciente }}</td>
                        <td>{{ $item->consulta }}</td>
                        <td>{{ $item->dia }}</td>
                        <td>{{ $item->horario }}</td>
                        <td><a href="{{ action('App\Http\Controllers\AgendaController@edit', $item->id) }}"><i
                                    class='fa-solid fa-pen-to-square' style='color:orange;'></i></a></td>
                        <td>
                            <form method="POST"
                                action="{{ action('App\Http\Controllers\AgendaController@destroy', $item->id) }}">
                                <input type="hidden" name="_method" value="DELETE">
                                @csrf
                                <button type="submit" onclick='return confirm("Deseja Excluir?")'
                                    style='all: unset;'><i class='fa-solid fa-trash' style='color:red;'></i>
                                </button>
                            </form>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N" crossorigin="anonymous">
    </script>
</body>

</html>
