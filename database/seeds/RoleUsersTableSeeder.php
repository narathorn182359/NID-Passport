<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
class RoleUsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('user_role')->insert([
            'username_id' => 'admin',
            'card_id_id' => 'admin',
            'name_menu_id' => '3',
        ]);

        DB::table('user_role')->insert([
            'username_id' => 'admin',
            'card_id_id' => 'admin',
            'name_menu_id' => '4',
        ]);
        DB::table('user_role')->insert([
            'username_id' => 'admin',
            'card_id_id' => 'admin',
            'name_menu_id' => '5',
        ]);
        DB::table('user_role')->insert([
            'username_id' => 'admin',
            'card_id_id' => 'admin',
            'name_menu_id' => '6',
        ]);

    }
}
