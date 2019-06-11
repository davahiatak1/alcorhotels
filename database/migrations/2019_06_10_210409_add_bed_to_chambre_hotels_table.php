<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddBedToChambreHotelsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('chambre_hotels', function (Blueprint $table) {
            $table->string('adulte')->nullable();
            $table->string('categorie')->nullable();
            $table->string('facilitie')->nullable();
            $table->string('size')->nullable();
            $table->string('bed')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('chambre_hotels', function (Blueprint $table) {
            //
        });
    }
}
