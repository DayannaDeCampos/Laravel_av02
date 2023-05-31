<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Brinquedo;
use App\Models\Categoria;

class BrinquedoController extends Controller
{
    function index()
    {
        $brinquedos = Brinquedo::All();

        return view('BrinquedoList')->with(['brinquedos' => $brinquedos]);
    }

    function create()
    {
        $categorias = Categoria::orderBy('nome')->get();

        return view('BrinquedoForm')->with(['categorias' => $categorias]);
    }

    function store(Request $request)
    {
        $request->validate(
            [
                'nome' => 'required | max: 120',
                'cor' => 'required | max: 120',
                'estoque' => 'required | max: 20',
                'valor' => ' nullable | max: 100',
            ],
            [
                'nome.required' => 'O nome é obrigatório',
                'nome.max' => 'Só é permitido 120 caracteres',
                'cor.required' => 'A cor é obrigatória',
                'cor.max' => 'Só é permitido 120 caracteres',
                'estoque.required' => 'A quantidade em estoque é obrigatório',
                'estoque.max' => 'Só é permitido 20 caracteres',
                'valor.required' => 'O valor é obrigatório',
                'valor.max' => 'Só é permitido 20 caracteres',


            ]
        );



        //dd( $request->nome);
        Brinquedo::create([
            'nome' => $request->nome,
            'cor' => $request->cor,
            'estoque' => $request->estoque,
            'valor' => $request->valor,

        ]);

        return \redirect()->action(
            'App\Http\Controllers\BrinquedoController@index'
        );
    }

    function edit($id)
    {

        $brinquedo = Brinquedo::findOrFail($id);
        $categorias = Categoria::orderBy('nome')->get();

        return view('BrinquedoForm')->with([
            'brinquedo' => $brinquedo,
            'categorias' => $categorias,
        ]);
    }

    function show($id)
    {

        $brinquedo = Brinquedo::findOrFail($id);

        $categorias = Categoria::orderBy('nome')->get();

        return view('BrinquedoForm')->with([
            'brinquedo' => $brinquedo,
            'categorias' => $categorias,
        ]);
    }

    function update(Request $request)
    {
        //dd( $request->nome);
        $request->validate(
            [
                'nome' => 'required | max: 120',
                'cor' => 'required | max: 120',
                'estoque' => 'required | max: 20',
                'valor' => ' nullable | max: 100',
            ],
            [
                'nome.required' => 'O nome é obrigatório',
                'nome.max' => 'Só é permitido 120 caracteres',
                'cor.required' => 'A cor é obrigatória',
                'cor.max' => 'Só é permitido 120 caracteres',
                'estoque.required' => 'A quantidade em estoque é obrigatório',
                'estoque.max' => 'Só é permitido 20 caracteres',
                'valor.required' => 'O valor é obrigatório',
                'valor.max' => 'Só é permitido 20 caracteres',


            ]
        );



        Brinquedo::updateOrCreate(
            ['id' => $request->id],
            [
                'nome' => $request->nome,
                'cor' => $request->cor,
                'estoque' => $request->estoque,
                'valor' => $request->valor,
            ]
        );

        return \redirect()->action(
            'App\Http\Controllers\BrinquedoController@index'
        );
    }
    //

    function destroy($id)
    {
        $brinquedo = Brinquedo::findOrFail($id);

        $brinquedo->delete();

        return \redirect()->action(
            'App\Http\Controllers\BrinquedoController@index'
        );
    }

    function search(Request $request)
    {
        $campo = $request->campo;

        if (!empty($campo)) {
            $brinquedos = Brinquedo::where($campo, 'like', '%' . $request->valor . '%')->get();
        } else {
            $brinquedos = Brinquedo::all();
        }


        return view('BrinquedoList')->with(['brinquedos' => $brinquedos]);
    }
}
// npm install --save-dev vite laravel-vite-plugin
// npm install --save-dev @vitejs/plugin-vue
// npm run build
