<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateNggKmCategoryDetailTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ngg_km_category_detail', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('id_km_cat')->nullable();
            $table->string('km_title')->nullable();
            $table->text('km_important')->nullable();
            $table->string('km_flie')->nullable();
            $table->string('km_separate_id')->nullable();
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
        Schema::dropIfExists('ngg_km_category_detail');
    }
}
