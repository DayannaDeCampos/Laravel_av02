<?php

use App\Http\Controllers\ProfileController;
use App\Http\Controllers\UsuarioController;
use App\Http\Controllers\AgendaController;
use App\Http\Controllers\BrinquedoController;
use App\Http\Controllers\MedicamentoController;
use App\Http\Controllers\LeituraController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/dashboard', function () {
    return view('dashboard');
})
    ->middleware(['auth', 'verified'])
    ->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::resource('usuario', UsuarioController::class);
    Route::post('usuario/search', [UsuarioController::class, 'search']);

    Route::resource('agenda', AgendaController::class);
   Route::post('agenda/search', [AgendaController::class, 'search']);

   Route::resource('brinquedo', BrinquedoController::class);
   Route::post('brinquedo/search', [BrinquedoController::class, 'search']);

   Route::resource('medicamento', MedicamentoController::class);
   Route::post('medicamento/search', [MedicamentoController::class, 'search']);

   Route::resource('leitura', LeituraController::class);
   Route::post('leitura/search', [LeituraController::class, 'search']);

    Route::get('/profile', [ProfileController::class, 'edit'])->name(
        'profile.edit'
    );
    Route::patch('/profile', [ProfileController::class, 'update'])->name(
        'profile.update'
    );
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name(
        'profile.destroy'
    );
});

require __DIR__ . '/auth.php';
