<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateNggTargetSingleSalesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ngg_target_single_sales', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('name_branchname');
            $table->string('username');
            $table->string('target_single');
            $table->string('target_sell');
            $table->string('month');
            $table->string('year');
            $table->string('created_by');
            $table->string('update_by');
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
        Schema::dropIfExists('ngg_target_single_sales');
    }
}
