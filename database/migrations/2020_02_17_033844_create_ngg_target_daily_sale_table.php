<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateNggTargetDailySaleTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ngg_target_daily_sale', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('name_branchname_id');
            $table->string('username');
            $table->string('target_degree');
            $table->string('target_degre_sell');
            $table->string('day');
            $table->string('month');
            $table->string('year');
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
        Schema::dropIfExists('ngg_target_daily_sale');
    }
}
