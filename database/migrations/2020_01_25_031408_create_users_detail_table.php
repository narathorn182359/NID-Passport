<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUsersDetailTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users_detail', function (Blueprint $table) {
            $table->string('Code_Staff')->nullable();
            $table->string('Card_Staff')->nullable();
            $table->string('Name_Thai')->nullable();
            $table->string('Name_Eng')->nullable();
            $table->string('Faction')->nullable();
            $table->string('Department')->nullable();
            $table->string('Degree')->nullable();
            $table->string('Workplace')->nullable();
            $table->string('Working_status')->nullable();
            $table->string('Position')->nullable();
            $table->string('DateofBirth')->nullable();
            $table->string('StartDate')->nullable();
            $table->string('HireDate')->nullable();
            $table->string('IDCardNumber')->nullable();
            $table->string('Sex')->nullable();
            $table->string('FamilyStatus')->nullable();
            $table->string('JGStatus')->nullable();
            $table->string('Yearsofservice')->nullable();
            $table->string('Age')->nullable();
            $table->string('Nickname')->nullable();
            $table->string('TelephoneNumber')->nullable();
            $table->string('Address')->nullable();
            $table->string('Current_Address')->nullable();
            $table->string('Resigned_Date')->nullable();
            $table->string('Vacation_leave')->nullable();
            $table->string('Sick_leave')->nullable();
            $table->string('Business_leave_necessary')->nullable();
            $table->string('Maternity_leave_paid')->nullable();
            $table->string('Maternity_leave_not_paid')->nullable();
            $table->string('Ordination_leaven')->nullable();
            $table->string('Marriage_leave')->nullable();
            $table->string('Accident_leave')->nullable();
            $table->string('Military_leave')->nullable();
            $table->string('Sterilization_leave')->nullable();
            $table->string('Time_offset')->nullable();
            $table->string('Leave_without_pay')->nullable();
            $table->string('Sick_leave_not_receiving_wages')->nullable();
            $table->string('Cremation_leave')->nullable();
            $table->string('Leave_instead_of_holidays')->nullable();
            $table->string('Leave_to_study')->nullable();
            $table->string('Take_a_break')->nullable();
            $table->string('Absence_from_work')->nullable();
            $table->string('img')->default('user.svg');
            $table->string('active')->default('1');
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
        Schema::dropIfExists('users_detail');
    }
}
