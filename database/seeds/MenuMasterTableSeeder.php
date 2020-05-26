<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class MenuMasterTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
       



        DB::table('menu_master')->insert([
            'name_menu' => 'จัดการพนักงาน',
            'url_menu' => '/settingstaff',
        ]);

        DB::table('menu_master')->insert([
            'name_menu' => 'จัดการ KPI',
            'url_menu' => '/settingstaff',
        ]);

        DB::table('menu_master')->insert([
            'name_menu' => 'จัดการสิทธิ์',
            'url_menu' => '/settingrole',
        ]);

        DB::table('menu_master')->insert([
            'name_menu' => 'จัดการข่าว',
            'url_menu' => '/settinnew',
        ]);

     DB::table('menu_master')->insert([
            'name_menu' => 'KM360',
            'url_menu' => '/km360',
        ]);
        DB::table('menu_master')->insert([
            'name_menu' => 'Time Attendance',
            'url_menu' => '/attendance',
        ]);
        DB::table('menu_master')->insert([
            'name_menu' => 'e-learning',
            'url_menu' => '/e-learning',
        ]);
        DB::table('menu_master')->insert([
            'name_menu' => 'PMS',
            'url_menu' => '/pms',
        ]);
        DB::table('menu_master')->insert([
            'name_menu' => 'HR-Service',
            'url_menu' => '/HR-Service',
        ]);
        DB::table('menu_master')->insert([
            'name_menu' => 'I-Form',
            'url_menu' => '/iform',
        ]);

     





    }
}
