<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateNggHistoryCommentTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ngg_history_comment', function (Blueprint $table) {
            $table->bigIncrements('id_com');
            $table->string('staff_com');
            $table->string('msg_com');
            $table->string('img_com');
            $table->dateTime('createdAt');

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('ngg_history_comment');
    }
}
