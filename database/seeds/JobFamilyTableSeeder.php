<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class JobFamilyTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
         DB::table('job_family')->insert([
            'name_job_family' => 'Sales',       
        ]);


        DB::table('ngg_role_sales_shop')->insert([
            'username_id' => '91392',   
            'branchname_id' => '1',    
        ]);

        DB::table('ngg_role_sales_shop')->insert([
            'username_id' => '91405',   
            'branchname_id' => '1',    
        ]);


        DB::table('ngg_role_sales_shop')->insert([
            'username_id' => '91406',   
            'branchname_id' => '1',    
        ]);



        DB::table('ngg_role_sales_shop')->insert([
            'username_id' => '91414',   
            'branchname_id' => '1',    
        ]);


        DB::table('ngg_role_sales_shop')->insert([
            'username_id' => '91422',   
            'branchname_id' => '1',    
        ]);



        DB::table('ngg_role_sales_shop')->insert([
            'username_id' => '91445',   
            'branchname_id' => '1',    
        ]);








    }
}
