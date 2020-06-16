<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateNggChatGroupUserTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ngg_chat_group_user', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('code_staff');
            $table->string('code_room_id');
            $table->string('status_confirm');
            $table->string('status_out_group');
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
        Schema::dropIfExists('ngg_chat_group_user');
    }
}
