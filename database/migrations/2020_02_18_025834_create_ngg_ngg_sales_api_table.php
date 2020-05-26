<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateNggNggSalesApiTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ngg_sales_api', function (Blueprint $table) {
            $table->bigIncrements('ID');
            $table->string('BRANCHNAME')->nullable();
            $table->string('M_NETAMOUNT_AFTER_VAT')->nullable();
            $table->string('SALEPERSONCODE')->nullable();
            $table->string('SALEPERSONNAME')->nullable();
            $table->string('CREATEBYNAME')->nullable();
            $table->dateTime('CREATED_AT_A')->nullable();
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
        Schema::dropIfExists('ngg_ngg_sales_api');
    }
}
