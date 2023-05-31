<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Agenda;
use App\Models\Categoria;

class AgendaController extends Controller
{
    function index()
    {
        $agendas = Agenda::All();


        return view('AgendaList')->with(['agendas' => $agendas]);
    }

    function create()
    {
        $categorias = Categoria::orderBy('nome')->get();

        return view('AgendaForm')->with(['categorias' => $categorias]);
    }

    function store(Request $request)
    {
        $request->validate(
            [
                'veterinario' => 'required | max: 50',
                'paciente' => 'required | max: 20',
                'consulta' => 'required | max: 100',
                'dia' => 'required | max: 50',
                'horario' => 'required | max: 6',

            ],
            [
                'veterinario.required' => 'O veterinario é obrigatório',
                'veterinario.max' => 'Só é permitido 50 caracteres',
                'paciente.required' => 'O veterinario do paciente é obrigatório',
                'paciente.max' => 'Só é permitido 20 caracteres',
                'consulta.required' => 'O tipo de consulta é obrigatório',
                'consulta.max' => 'Só é permitido 100 caracteres',
                'dia.required' => 'A data é obrigatória',
                'dia.max' => 'Só é permitido 50 caracteres',
                'horario.required' => 'O horario é obrigatório',
                'horario.max' => 'Só é permitido 6 caracteres',
            ]
        );



        //dd( $request->veterinario);
        Agenda::create([
            'veterinario' => $request->veterinario,
            'paciente' => $request->paciente,
            'consulta' => $request->consulta,
            'dia' => $request->dia,
            'horario' => $request->horario,

        ]);

        return \redirect()->action(
            'App\Http\Controllers\AgendaController@index'
        );
    }

    function edit($id)
    {

        $agenda = Agenda::findOrFail($id);

        $categorias = Categoria::orderBy('nome')->get();

        return view('AgendaForm')->with([
            'agenda' => $agenda,
            'categorias' => $categorias,
        ]);
    }

    function show($id)
    {

        $agenda = Agenda::findOrFail($id);

        $categorias = Categoria::orderBy('nome')->get();

        return view('AgendaForm')->with([
            'agenda' => $agenda,
            'categorias' => $categorias,
        ]);
    }

    function update(Request $request)
    {
        //dd( $request->veterinario);
        $request->validate(
            [
                'veterinario' => 'required | max: 50',
                'paciente' => 'required | max: 20',
                'consulta' => 'required | max: 100',
                'dia' => 'required | max: 50',
                'horario' => 'required | max: 6',

            ],
            [
                'veterinario.required' => 'O veterinario é obrigatório',
                'veterinario.max' => 'Só é permitido 50 caracteres',
                'paciente.required' => 'O veterinario do paciente é obrigatório',
                'paciente.max' => 'Só é permitido 20 caracteres',
                'consulta.required' => 'O tipo de consulta é obrigatório',
                'consulta.max' => 'Só é permitido 100 caracteres',
                'dia.required' => 'A data é obrigatória',
                'dia.max' => 'Só é permitido 50 caracteres',
                'horario.required' => 'O horario é obrigatório',
                'horario.max' => 'Só é permitido 6 caracteres',
            ]
        );


        Agenda::updateOrCreate(
            ['id' => $request->id],
            [
            'veterinario' => $request->veterinario,
            'paciente' => $request->paciente,
            'consulta' => $request->consulta,
            'dia' => $request->dia,
            'horario' => $request->horario,

            ]
        );

        return \redirect()->action(
            'App\Http\Controllers\AgendaController@index'
        );
    }
    //

    function destroy($id)
    {
        $agenda = Agenda::findOrFail($id);

        $agenda->delete();

        return \redirect()->action(
            'App\Http\Controllers\AgendaController@index'
        );
    }

    function search(Request $request)
    {
        $campo = $request->campo;

        if (!empty($campo)) {
            $agendas = Agenda::where($campo, 'like', '%' . $request->valor . '%')->get();
        } else {
            $agendas = Agenda::all();
        }


        return view('AgendaList')->with(['agendas' => $agendas]);
    }
}
// npm install --save-dev vite laravel-vite-plugin
// npm install --save-dev @vitejs/plugin-vue
// npm run build
