<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
class UnitController extends Controller
{
    public function  get_name(Request $request)
    {
        $json = file_get_contents('http://hr.ngg.link/public_html/hrxapiemployee');
        $obj = json_decode($json);
        foreach($obj as $item){
          
            $count =  DB::table('users_detail')->where('staff_id',strval($item->nem_code))->count();
            if($count == 0){
                DB::table('users_detail')->insert([
                    ['staff_id' => $item->nem_code,
                    'title' => $item->nem_thai_title,
                    'name' => $item->nem_thai_firstname,
                    'lastname' => $item->nem_thai_lastname,
                    'sex' => $item->nem_sex,
                    'address' => '-',
                    'phone' => '-',
                    'department_id' => $item->nem_department_id,
                    'position_id' =>$item->nem_position_id,
                    'company_id' => $item->nem_company_id,
                    'card_id' =>$item->nem_id_card,
                    'nickname'=>$item->nem_nickname,
                    'job_family'=>'-',
                    'lavel'=>'-',
                    'brand' =>'-'
                    ]
                ]);
            }       
        }

        return "ดึงข้อมูลพนักงานสำเร็จ";
    }






    public function  get_position(Request $request)
    {
        $json = file_get_contents('http://hr.ngg.link/public_html/hrxapiposition');
        $obj = json_decode($json);
        foreach($obj as $item){
          
            $count =  DB::table('position')->where('name_position',strval($item->nps_name))->count();
            if($count == 0){
                DB::table('position')->insert([
                    [
                        'name_position' => $item->nps_name,
                        'id_position' => $item->id,
                        
                        
                        ]
                ]);
            }       
        }

        return "ดึงข้อมูลตำแหน่งสำเร็จ";
    }


    public function  get_department(Request $request)
    {
        $json = file_get_contents('http://hr.ngg.link/public_html/hrxapidepartment');
        $obj = json_decode($json);
        foreach($obj as $item){
          
            $count =  DB::table('department')->where('name_department',strval($item->ndp_name))->count();
            if($count == 0){
                DB::table('department')->insert(
                    ['name_department' => $item->ndp_name,
                     'id_department' => $item->ndp_id,
                    
                    ]
                );
            }       
        }

        return "ดึงข้อมูลแผนกสำเร็จ";
    }



    public function  add_user(Request $request){
        set_time_limit(0);
       $user  = DB::table('users_detail')->get();
      // dd($user);
        foreach($user as $item){
          
            $count =  DB::table('users')->where('username',strval($item->Code_Staff))->count();
            if($count == 0 &&  $item->Code_Staff != ''){
                DB::table('users')->insert([
                    'username' => $item->Code_Staff,
                    'id_card' => $item->IDCardNumber,
                    'password' => bcrypt('0000'),  
                ]);
            }       
        }
        return "เพิ่มผู้ใช้สำเร็จ";
    }




    public function  add_role(Request $request){
        set_time_limit(0);

        $user  = DB::table('users_detail')->get();
        
        $menu_master  = DB::table('menu_master')
        ->whereNotIn('id', [1])
        ->whereNotIn('id', [2])
        ->whereNotIn('id', [3])
        ->whereNotIn('id', [4])
      
        ->get();
       
        foreach($user as $item){
            foreach($menu_master as $items){

                $role_menu  = DB::table('user_role')
                ->where('username_id',$item->Code_Staff)
                ->where('name_menu_id',$items->id)
                ->count();
                if($role_menu == 0 &&  $item->Code_Staff != "") {
                    DB::table('user_role')->insert([
                        'username_id' => $item->Code_Staff,
                        'card_id_id' => $item->IDCardNumber,
                        'name_menu_id' => $items->id,  
                    ]);
                }
            }  
        }  
    }
}
