<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePlatsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('plats', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedBigInteger('restaurant_id');
            $table->foreign('restaurant_id')->references('id')->on('restaurants');
            $table->string('nom');
            $table->string('image');
            $table->string('prix');
            $table->longText('description');
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
        Schema::dropIfExists('plats');
    }
}
