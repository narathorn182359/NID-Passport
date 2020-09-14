<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\User;
use Illuminate\Support\Facades\DB;
class RegisterController extends Controller
{
    
    public function register (Request $request)
    {
        /* $this->validate($request, [
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|max:255|unique:users',
            'password' => 'required|string|min:6|confirmed',
        ]); */

        $user = User::create([
            'username' => $request->username,
            'id_card' => $request->id_card,
            'password' => bcrypt($request->password),
        ]);

        return response()->json([
            'success' => 'User created'
        ]);
    }


    public function resetpasswordissue (Request $request)
    {
      


      $check = DB::table('users')->where('username',$request->code_staff)->count();



            if($check > 0){

         
                DB::table('ngg_request_password')->insert([
                    'code_staff' =>  $request->code_staff
            ]);
    



        $list_noti = array();
            $setmeg_noti = DB::table('ngg_key_notification')
            ->where('login_status', '1')
            ->where('code_staff', '94018')
            ->get();
    
            $setmeg_noti_2 = DB::table('ngg_key_notification')
            ->where('login_status', '1')
            ->where('code_staff', '51248')
            ->get();
    
            $setmeg_noti_3 = DB::table('ngg_key_notification')
            ->where('login_status', '1')
            ->where('code_staff', '51262')
            ->get();
    
            foreach ($setmeg_noti as $item) {
                array_push($list_noti, $item->player_id);
    
            }
            foreach ($setmeg_noti_2 as $item) {
                array_push($list_noti, $item->player_id);
    
            }
    
            foreach ($setmeg_noti_3 as $item) {
                array_push($list_noti, $item->player_id);
    
            }
        $heading = array(
            "en" => "พนักงานไม่สามารถเข้าระบบได้",
        );
    
        $content = array(
            "en" => "รหัสนักงานคือ ". $request->code_staff,
        );
    
        $fields = array(
            'app_id' => "16adf426-0420-49fa-b189-d71af438789a",
            'include_player_ids' => $list_noti,
            'data' => array("foo" => "bar"),
            'contents' => $content,
            'headings' =>  $heading,
        );
    
        $fields = json_encode($fields);
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, "https://onesignal.com/api/v1/notifications");
        curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type: application/json; charset=utf-8'));
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_HEADER, false);
        curl_setopt($ch, CURLOPT_POST, true);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $fields);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        $response = curl_exec($ch);
        curl_close($ch);
        return response()->json(['status'=>'200']);

    }else{
        return response()->json(['status'=>'404']);
    }
           
    }


    public function resetpassword (Request $request)
    {

        DB::table('users')
        ->where('username',$request->code_staff)
        ->update([
            'password' =>  bcrypt('0000'),
            'created_at' => date('Y-m-d H:i:s'),
        ])
       ;

    }
}
