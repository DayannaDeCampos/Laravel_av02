<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Medicamento;
use App\Models\Categoria;

class MedicamentoController extends Controller
{
    function index()
    {
        $medicamentos = Medicamento::All();


        return view('MedicamentoList')->with(['medicamentos' => $medicamentos]);
    }

    function create()
    {
        $categorias = Categoria::orderBy('nome')->get();

        return view('MedicamentoForm')->with(['categorias' => $categorias]);
    }

    function store(Request $request)
    {
        $request->validate(
            [
                'nome' => 'required | max: 120',
                'lote' => 'required | max: 120',
                'validade' => 'required | max: 50',
                'estoque' => ' nullable | max: 100',

            ],
            [
                'nome.required' => 'O nome é obrigatório',
                'nome.max' => 'Só é permitido 120 caracteres',
                'lote.required' => 'O lote é obrigatório',
                'lote.max' => 'Só é permitido 120 caracteres',
                'validade.required' => 'A validade é obrigatória',
                'validade.max' => 'Só é permitido 50 caracteres',
                'estoque.required' => 'O estoque é obrigatório',
                'estoque.max' => 'Só é permitido 100 caracteres',
            ]
        );


        Medicamento::create([
            'nome' => $request->nome,
            'lote' => $request->lote,
            'validade' => $request->validade,
            'estoque' => $request->estoque,

        ]);

        return \redirect()->action(
            'App\Http\Controllers\MedicamentoController@index'
        );
    }

    function edit($id)
    {

        $medicamento = Medicamento::findOrFail($id);

        $categorias = Categoria::orderBy('nome')->get();

        return view('MedicamentoForm')->with([
            'medicamento' => $medicamento,
            'categorias' => $categorias,
        ]);
    }

    function show($id)
    {

        $medicamento = Medicamento::findOrFail($id);

        $categorias = Categoria::orderBy('nome')->get();

        return view('MedicamentoForm')->with([
            'medicamento' => $medicamento,
            'categorias' => $categorias,
        ]);
    }

    function update(Request $request)
    {
        //dd( $request->nome);
        $request->validate(
            [
                'nome' => 'required | max: 120',
                'lote' => 'required | max: 120',
                'validade' => 'required | max: 50',
                'estoque' => ' nullable | max: 100',

            ],
            [
                'nome.required' => 'O nome é obrigatório',
                'nome.max' => 'Só é permitido 120 caracteres',
                'lote.required' => 'O lote é obrigatório',
                'lote.max' => 'Só é permitido 120 caracteres',
                'validade.required' => 'A validade é obrigatória',
                'validade.max' => 'Só é permitido 50 caracteres',
                'estoque.required' => 'O estoque é obrigatório',
                'estoque.max' => 'Só é permitido 100 caracteres',
            ]
        );


        Medicamento::updateOrCreate(
            ['id' => $request->id],
            [
                'nome' => $request->nome,
            'lote' => $request->lote,
            'validade' => $request->validade,
            'estoque' => $request->estoque,
            ]
        );

        return \redirect()->action(
            'App\Http\Controllers\MedicamentoController@index'
        );
    }
    //

    function destroy($id)
    {
        $medicamento = Medicamento::findOrFail($id);

        $medicamento->delete();

        return \redirect()->action(
            'App\Http\Controllers\MedicamentoController@index'
        );
    }

    function search(Request $request)
    {
        $campo = $request->campo;

        if (!empty($campo)) {
            $medicamentos = Medicamento::where($campo, 'like', '%' . $request->valor . '%')->get();
        } else {
            $medicamentos = Medicamento::all();
        }


        return view('MedicamentoList')->with(['medicamentos' => $medicamentos]);
    }
}
// npm install --save-dev vite laravel-vite-plugin
// npm install --save-dev @vitejs/plugin-vue
// npm run build
