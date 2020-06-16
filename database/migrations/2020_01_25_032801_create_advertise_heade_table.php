<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAdvertiseHeadeTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('advertise_heade', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('img');
            $table->string('name_adver');
            $table->string('name_thai');
            $table->string('active')->default('1');
            $table->dateTime('created_at_adver');
            $table->dateTime('updated_at_adver');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('advertise_heade');
    }
}
