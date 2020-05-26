<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class CompanyTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('company')->insert([
            'name_company_eng' => 'Tai Minere',
            'name_company_th' => '....',
        ]);
        DB::table('company')->insert([
            'name_company_eng' => 'Unique Wear',
            'name_company_th' => '....',
        ]);
        DB::table('company')->insert([
            'name_company_eng' => 'NIO Achievers',
            'name_company_th' => '....',
        ]);
        DB::table('company')->insert([
            'name_company_eng' => 'Sestosenso',
            'name_company_th' => '....',
        ]);
        DB::table('company')->insert([
            'name_company_eng' => 'NGG ENTERPRISE CO., LTD.',
            'name_company_th' => '....',
        ]);
        DB::table('company')->insert([
            'name_company_eng' => 'DTZ Luxury',
            'name_company_th' => '....',
        ]);
        DB::table('company')->insert([
            'name_company_eng' => 'Cien - Korat',
            'name_company_th' => '....',
        ]);
        DB::table('company')->insert([
            'name_company_eng' => 'HPT',
            'name_company_th' => '....',
        ]);
        DB::table('company')->insert([
            'name_company_eng' => 'CherChim',
            'name_company_th' => '....',
        ]);








    }
}
