<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Agenda extends Model
{
    use HasFactory;
    protected $table = "agenda";

    protected $fillable = [
        'veterinario', 'paciente', 'consulta','dia','horario'
    ];

    //public function categoria(){
        //return $this->belongsTo(Categoria::class,'categoria_id','id');
    //}

}

?>
