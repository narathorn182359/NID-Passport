<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateNggKmImgCategoryDetailTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ngg_km_img_category_detail', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('id_km_detail')->nullable();
            $table->string('km_count')->nullable();
            $table->string('km_name_img')->nullable();
            $table->string('km_remark')->nullable();
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
        Schema::dropIfExists('ngg_km_img_category_detail');
    }
}
