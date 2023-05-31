<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Brinquedo extends Model
{
    use HasFactory;
    protected $table = "brinquedo";

    protected $fillable = [
        'nome',
        'cor',
        'estoque',
        'valor',
        'horario',
        'categoria_id'
    ];

    public function categoria()
    {
        return $this->belongsTo(Categoria::class, 'categoria_id', 'id');
    }

}

?>
