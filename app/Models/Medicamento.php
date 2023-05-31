<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Usuario extends Model
{
    use HasFactory;
    protected $table = "medicamento";

    protected $fillable = [
        'nome', 'lote', 'validade','estoque'
    ];


}

?>
