<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Leitura;
use App\Models\Mac;
use App\Models\Sensor;

class LeituraController extends Controller
{
    function index()
    {
        $leituras = Leitura::All();


        return view('LeituraList')->with(['leituras' => $leituras]);
    }

    function create()
    {
        $mac = Mac::orderBy('nome')->get();
        $sensor = Sensor::orderBy('nome')->get();

        return view('LeituraForm')->with(['mac' => $mac,'sensor' => $sensor]);
    }

    function store(Request $request)
    {
        $request->validate(
            [
                'data_leitura' => 'required',
                'hora_leitura' => 'required',
                'valor_sensor' => 'required | max: 50',
                'sensor_id' => ' required |max: 100',
                'mac_id' => ' required |max: 100',

            ],
            [
                'data_leitura.required' => 'A data é obrigatória',
                'hora_leitura.required' => 'A hora é obrigatória',
                'valor_sensor.required' => 'O valoe do sensor é obrigatório',
                'valor_sensor.max' => 'Só é permitido 50 caracteres',
                'sensor_id.required' => 'A identificação do sensor é obrigatória',
                'sensor_id.max' => 'Só é permitido 100 caracteres',
                'mac_id.required' => 'A identificação do mac é obrigatória',
                'mac_id.max' => 'Só é permitido 100 caracteres',

            ]
        );

        $dados = [
            'data_leitura' => $request->data_leitura,
            'hora_leitura' => $request->hora_leitura,
            'valor_sensor' => $request->valor_sensor,
            'sensor_id' => $request->sensor_id,
            'mac_id' => $request->mac_id,
        ];



        Leitura::create($dados);

        return \redirect()->action(
            'App\Http\Controllers\LeituraController@index'
        );
    }

    function edit($id)
    {

        $leitura = Leitura::findOrFail($id);

        $mac = Mac::orderBy('nome')->get();
        $sensor = Sensor::orderBy('nome')->get();

        return view('LeituraForm')->with([
            'leitura' => $leitura,
            'mac' => $mac,
            'sensor' => $sensor,
        ]);
    }

    function show($id)
    {

        $leitura = Leitura::findOrFail($id);

        $mac = Mac::orderBy('nome')->get();
        $sensor = Sensor::orderBy('nome')->get();

        return view('LeituraForm')->with([
            'leitura' => $leitura,
            'mac' => $mac,
            'sensor' => $sensor,
        ]);
    }

    function update(Request $request)
    {
        //dd( $request->nome);
        $request->validate(
            [
                'data_leitura' => 'required',
                'hora_leitura' => 'required',
                'valor_sensor' => 'required | max: 50',
                'sensor_id' => ' required |max: 100',
                'mac_id' => ' required |max: 100',

            ],
            [
                'data_leitura.required' => 'A data é obrigatória',
                'hora_leitura.required' => 'A hora é obrigatória',
                'valor_sensor.required' => 'O valoe do sensor é obrigatório',
                'valor_sensor.max' => 'Só é permitido 50 caracteres',
                'sensor_id.required' => 'A identificação do sensor é obrigatória',
                'sensor_id.max' => 'Só é permitido 100 caracteres',
                'mac_id.required' => 'A identificação do mac é obrigatória',
                'mac_id.max' => 'Só é permitido 100 caracteres',

            ]
        );

        $dados = [
            'data_leitura' => $request->data_leitura,
            'hora_leitura' => $request->hora_leitura,
            'valor_sensor' => $request->valor_sensor,
            'sensor_id' => $request->sensor_id,
            'mac_id' => $request->mac_id,
        ];



        Leitura::updateOrCreate(
            ['id' => $request->id],
             $dados
        );

        return \redirect()->action(
            'App\Http\Controllers\LeituraController@index'
        );
    }
    //

    function destroy($id)
    {
        $leitura = Leitura::findOrFail($id);

        $leitura->delete();

        return \redirect()->action(
            'App\Http\Controllers\LeituraController@index'
        );
    }

    function search(Request $request)
    {
        $campo = $request->campo;

        if (!empty($campo)) {
            $leituras = Leitura::where($campo, 'like', '%' . $request->valor . '%')->get();
        } else {
            $leituras = Leitura::all();
        }


        return view('LeituraList')->with(['leituras' => $leituras]);
    }
}
// npm install --save-dev vite laravel-vite-plugin
// npm install --save-dev @vitejs/plugin-vue
// npm run build
