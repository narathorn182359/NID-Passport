<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateNggBannerTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ngg_banner', function (Blueprint $table) {
            $table->bigIncrements('id_banner');
            $table->string('advertise_id');
            $table->string('img_banner');
            $table->string('active_banner')->default('0');
            $table->dateTime('created_at_banner');
            $table->dateTime('updated_at_banner');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('ngg_banner');
    }
}
