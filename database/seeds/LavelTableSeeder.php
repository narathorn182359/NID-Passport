<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class LavelTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('lavel')->insert([
            'name_lavel' => 'Officer',       
        ]);
    }
}
