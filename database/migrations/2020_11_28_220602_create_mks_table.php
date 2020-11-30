<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateMksTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('mks', function (Blueprint $table) {
            $table->id();
            $table->string('title');
            $table->dateTime('date_time');
            $table->integer('img_id');
            $table->integer('teacher_id');
            $table->integer('price_id');
            $table->integer('client_qnt')->default(1);
            $table->boolean('status')->default(1);
            $table->boolean('sms')->default(0);
            $table->integer('studio')->default(2);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('mks');
    }
}
