<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateNggRealTimeInOutTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ngg__real_time_in_out', function (Blueprint $table) {
            $table->string('staff_id');
            $table->string('first_name');
            $table->string('last_name');
            $table->string('company_i');
            $table->string('position_name');
            $table->string('time');
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
        Schema::dropIfExists('ngg__real_time_in_out');
    }
}
