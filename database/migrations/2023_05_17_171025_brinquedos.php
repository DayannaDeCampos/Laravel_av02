<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('brinquedos', function (Blueprint $table) {
            $table->id();
            $table->string('nome',50);
            $table->string('cor',50);
            $table->string('estoque',100);
            $table->string('valor',50);
            $table->time('horario',6);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        //
    }
};
