<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class BrandTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('brand')->insert([
            'name_brand' => 'Barnd G',
           
        ]);

        DB::table('brand')->insert([
            'name_brand' => 'Barnd F',
           
        ]);

        DB::table('brand')->insert([
            'name_brand' => 'Barnd E',
           
        ]);


        DB::table('brand')->insert([
            'name_brand' => 'Barnd D',
           
        ]);



        DB::table('brand')->insert([
            'name_brand' => 'Barnd C',
           
        ]);

        DB::table('brand')->insert([
            'name_brand' => 'Barnd B',
           
        ]);

        DB::table('brand')->insert([
            'name_brand' => 'Barnd A',
           
        ]);
        DB::table('brand')->insert([
            'name_brand' => 'Barnd O',
           
        ]);
    }
}
