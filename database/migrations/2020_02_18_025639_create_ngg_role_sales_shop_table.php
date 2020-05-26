<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateNggRoleSalesShopTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ngg_role_sales_shop', function (Blueprint $table) {

            $table->bigIncrements('id');
            $table->string('username_id');
            $table->string('branchname_id');
            $table->string('created_by')->nullable();
            $table->string('update_by')->nullable();
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
        Schema::dropIfExists('ngg_role_sales_shop');
    }
}
