<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAlcorsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('alcors', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('name1')->nullable();
            $table->string('name2')->nullable();
            $table->string('logo')->nullable();
            $table->string('photo1')->nullable();
            $table->string('photo2')->nullable();
            $table->text('titre')->nullable();
            $table->longText('about')->nullable();
            $table->string('facebook')->nullable();
            $table->string('twitter')->nullable();
            $table->string('intagram')->nullable();
            $table->string('skype')->nullable();
            $table->string('mail1')->nullable();
            $table->string('mail2')->nullable();
            $table->string('mail3')->nullable();
            $table->string('mail4')->nullable();
            $table->string('mail5')->nullable();
            $table->string('tel1')->nullable();
            $table->string('tel2')->nullable();
            $table->string('tel3')->nullable();
            $table->string('tel4')->nullable();
            $table->string('tel5')->nullable();
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
        Schema::dropIfExists('alcors');
    }
}
