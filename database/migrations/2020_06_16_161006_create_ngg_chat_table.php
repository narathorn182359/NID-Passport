<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateNggChatTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ngg_chat', function (Blueprint $table) {

            $table->string('owner_room')->nullable();
            $table->string('chat_partner')->nullable();
            $table->string('msg')->nullable();
            $table->string('coderoom')->nullable();
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
        Schema::dropIfExists('ngg_chat');
    }
}
