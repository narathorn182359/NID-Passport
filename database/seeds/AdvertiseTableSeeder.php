<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class AdvertiseTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
      
        DB::table('advertise_heade')->insert([
            'img' => 'NGG Employee privilege.svg',
            'name_adver' => 'NGG Employee privilege',
            'name_thai' => 'สิทธิประโยชน์ของพนักงาน NGG'
        ]);

        DB::table('advertise_heade')->insert([
            'img' => 'NGG New & Activities.svg',
            'name_adver' => 'NGG New & Activities',
            'name_thai' => 'ข่าวสารและกิจกรรมต่าง ๆ'
        ]);
        DB::table('advertise_heade')->insert([
            'img' => 'Human Resources.svg',
            'name_adver' => 'Human Resources',
            'name_thai' => 'ฝ่ายบุคคล'
        ]);
        DB::table('advertise_heade')->insert([
            'img' => 'Innovation.svg',
            'name_adver' => 'Innovation',
            'name_thai' => 'นวัตกรรมและเทคโนโลยี'
        ]);
        DB::table('advertise_heade')->insert([
            'img' => 'Customer Experience Hub.svg',
            'name_adver' => 'Customer Experience Hub',
            'name_thai' => 'แชร์ประสบการณ์ดี ๆ ของลูกค้า'
        ]);
        
        










        DB::table('group')->insert([
            'name_group' => 'PC',
        
        ]);

        DB::table('group')->insert([
            'name_group' => 'Head Office',
        
        ]);

        DB::table('group')->insert([
            'name_group' => 'Factory',
        
        ]);


        DB::table('users_group')->insert([
            'username_id' => '91392',
            'id_group' => '1',
        ]);


        DB::table('users_group')->insert([
            'username_id' => '91405',
            'id_group' => '1',
        ]);

        DB::table('users_group')->insert([
            'username_id' => '91406',
            'id_group' => '1',
        ]);

        DB::table('users_group')->insert([
            'username_id' => '91414',
            'id_group' => '1',
        ]);

        DB::table('users_group')->insert([
            'username_id' => '91422',
            'id_group' => '1',
        ]);
        DB::table('users_group')->insert([
            'username_id' => '51248',
            'id_group' => '3',
        ]);


    }
}
