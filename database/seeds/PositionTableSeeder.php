<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class PositionTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('position')->insert([
            'name_position' => 'PC (Gold & Jewelry)',
            
        ]);
    }
}
