<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('users')->insert([
            'username' => 'admin',
            'id_card' => 'admin',
            'password' => bcrypt('0000'),
        ]);


      /*   DB::table('users_detail')->insert([
            'staff_id' => 'admin',
            'title' => 'title',
            'name' => 'admin',
            'lastname' => 'admin',
            'sex' => 'admin',
            'address' => 'admin',
            'phone' => '-',
            'department_id' => '-',
            'position_id' => '-',
            'company_id' => '-',
            'card_id' => '-',
            'nickname'=>'-',
            'job_family'=>'-',
            'lavel'=>'-',
            'brand' =>'-'
        ]);



        
        DB::table('users')->insert([
            'username' => '91392',
            'id_card' => '-',
            'password' => bcrypt('0000'),
        ]);


        
        DB::table('users_detail')->insert([
            'staff_id' => '91392',
            'title' => 'นางสาว',
            'name' => 'โชติรส',
            'lastname' => 'ตนคลัง',
            'sex' => 'หญิง',
            'address' => 'ข',
            'phone' => '-',
            'department_id' => '1',
            'position_id' => '1',
            'company_id' => '1',
            'card_id' => '-',
            'nickname'=>'นัตตี้',
            'job_family'=>'1',
            'lavel'=>'1',
            'brand' =>'7'
        ]);


       





        DB::table('users')->insert([
            'username' => '91405',
            'id_card' => '-',
            'password' => bcrypt('0000'),
        ]);
        DB::table('users_detail')->insert([
            'staff_id' => '91405',
            'title' => 'นางสาว',
            'name' => 'เกียรติสุดา',
            'lastname' => 'คำแก้ว',
            'sex' => 'หญิง',
            'address' => '-',
            'phone' => '-',
            'department_id' => '1',
            'position_id' => '1',
            'company_id' => '1',
            'card_id' => '-',
            'nickname'=>'มายด์',
            'job_family'=>'1',
            'lavel'=>'1',
            'brand' =>'7'
        ]);



        DB::table('users')->insert([
            'username' => '91406',
            'id_card' => '-',
            'password' => bcrypt('0000'),
        ]);
        DB::table('users_detail')->insert([
            'staff_id' => '91406',
            'title' => 'นางสาว',
            'name' => 'วราภรณ์',
            'lastname' => 'เพชรพอด',
            'sex' => 'หญิง',
            'address' => '-',
            'phone' => '-',
            'department_id' => '1',
            'position_id' => '1',
            'company_id' => '1',
            'card_id' => '-',
            'nickname'=>'จ๊ะเอ๋',
            'job_family'=>'1',
            'lavel'=>'1',
            'brand' =>'7'
        ]);




        DB::table('users')->insert([
            'username' => '91414',
            'id_card' => '-',
            'password' => bcrypt('0000'),
        ]);
        DB::table('users_detail')->insert([
            'staff_id' => '91414',
            'title' => 'นางสาว',
            'name' => 'ถัณชกา',
            'lastname' => 'แสวงกิจ',
            'sex' => 'หญิง',
            'address' => '-',
            'phone' => '-',
            'department_id' => '1',
            'position_id' => '1',
            'company_id' => '1',
            'card_id' => '-',
            'nickname'=>'ออย',
            'job_family'=>'1',
            'lavel'=>'1',
            'brand' =>'7'
        ]);


        DB::table('users')->insert([
            'username' => '91422',
            'id_card' => '-',
            'password' => bcrypt('0000'),
        ]);
        DB::table('users_detail')->insert([
            'staff_id' => '91422',
            'title' => 'นางสาว',
            'name' => 'วลัยลักษณ์',
            'lastname' => 'อัครนุภาพพงศ์',
            'sex' => 'หญิง',
            'address' => 'ข',
            'phone' => '-',
            'department_id' => '1',
            'position_id' => '1',
            'company_id' => '1',
            'card_id' => '-',
            'nickname'=>'นัตตี้',
            'job_family'=>'1',
            'lavel'=>'1',
            'brand' =>'7'
        ]);





        DB::table('users')->insert([
            'username' => '91445',
            'id_card' => '-',
            'password' => bcrypt('0000'),
        ]);
        DB::table('users_detail')->insert([
            'staff_id' => '91445',
            'title' => 'นางสาว',
            'name' => 'ณัฐวรรณ',
            'lastname' => 'ศรีสมุทร',
            'sex' => 'หญิง',
            'address' => '-',
            'phone' => '-',
            'department_id' => '1',
            'position_id' => '1',
            'company_id' => '1',
            'card_id' => '-',
            'nickname'=>'วีว่า',
            'job_family'=>'1',
            'lavel'=>'1',
            'brand' =>'5'
        ]);
 */
















        
    }
}
