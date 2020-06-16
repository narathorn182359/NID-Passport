<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateNggBenefitsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ngg_benefits', function (Blueprint $table) {
            $table->bigIncrements('id_be');
            $table->string('id_list_be')->nullable();
            $table->string('code_staff')->nullable();
            $table->string('be_name')->nullable();
            $table->string('be_detail')->nullable();
            $table->string('be_map')->nullable();
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
        Schema::dropIfExists('ngg_benefits');
    }
}
