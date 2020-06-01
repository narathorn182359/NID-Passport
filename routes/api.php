<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Input;
use Carbon\Carbon;
use App\Classes\PushBots;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
      $user = $request->user();
      $data = DB::table('users')
      ->leftJoin('users_detail', 'users.username', '=', 'users_detail.Code_Staff')
      ->leftJoin('users_group','users_detail.Code_Staff', '=','users_group.username_id')
      ->orWhere('username',$user->username)
      ->orWhere('id_card',$user->username)
      ->first();
      return response()->json($data);
});

Route::middleware('auth:api')->get('/get_username', function (Request $request) {
      $user = $request->user();

      return response()->json($user->username);
});


Route::middleware('auth:api')->get('/listmenu', function (Request $request) {
      $user = $request->user();
      $data = DB::table('users')
      ->leftJoin('user_role', 'users.username', '=', 'user_role.username_id')
      ->leftJoin('menu_master', 'user_role.name_menu_id', '=', 'menu_master.id')
      ->orWhere('username',$user->username)
      ->orWhere('id_card',$user->username)
      ->select('icon','url_menu','name_menu')
      ->get();
      return response()->json($data);
});

Route::middleware('auth:api')->get('/liststaff', function (Request $request) {
      $user = $request->user();
      $data = DB::table('users')
      ->leftJoin('users_detail', 'users.username', '=', 'users_detail.staff_id')
      ->leftJoin('department', 'users_detail.department_id', '=', 'department.id')
      ->leftJoin('company', 'users_detail.company_id', '=', 'company.id')
      ->leftJoin('lavel', 'users_detail.lavel', '=', 'lavel.id')
      ->leftJoin('job_family', 'users_detail.job_family', '=', 'job_family.id')
      ->leftJoin('position', 'users_detail.position_id', '=', 'position.id')
      ->get();
      return response()->json($data);
});

Route::middleware('auth:api')->get('/department', function (Request $request) {
      $user = $request->user();
      $data = DB::table('department')->get();
      return response()->json($data);
});


Route::middleware('auth:api')->get('/job_family', function (Request $request) {
      $user = $request->user();
      $data = DB::table('job_family')->get();
      return response()->json($data);
});


Route::middleware('auth:api')->get('/lavel', function (Request $request) {
      $user = $request->user();
      $data = DB::table('lavel')->get();
      return response()->json($data);
});


Route::middleware('auth:api')->get('/position', function (Request $request) {
      $user = $request->user();
      $data = DB::table('position')->get();
      return response()->json($data);
});


Route::middleware('auth:api')->get('/company', function (Request $request) {
      $user = $request->user();
      $data = DB::table('company')->get();
      return response()->json($data);
});

Route::middleware('auth:api')->get('/brand', function (Request $request) {
      $user = $request->user();
      $data = DB::table('brand')->get();
      return response()->json($data);
});

Route::middleware('auth:api')->get('/feednew', function (Request $request) {

});


Route::middleware('auth:api')->post('/getDetailnew', function (Request $request) {
      $user = $request->user();
      $data = $request->json()->all();

      if($data['id'] == '8'){
            $json = DB::table('ngg_list_mc')
            ->select('id','subject','img_mc','id_ad')
            ->get();
      }else{
            $json = DB::table('advertise')->Where('type_id',$data['id'])
            ->leftJoin('ngg_banner', 'advertise.id_ad', '=', 'ngg_banner.advertise_id')
            ->select('id_ad','subject','count_read','mc','img_ad')
            ->get();
      }

      return response()->json($json);
});




Route::middleware('auth:api')->post('/get_detail_new', function (Request $request) {
    $user = $request->user();
    $data = $request->json()->all();

    $advertise = DB::table('advertise')
    ->where('id_ad',$data['id'])
    ->get();

    return response()->json($advertise);
});








Route::middleware('auth:api')->post('/gethead_new', function (Request $request) {
      $user = $request->user();
      $data = $request->json()->all();

      if($data['id'] == '8'){

        $advertise = DB::table('ngg_list_mc')->Where('id_ad',$data['id'])
        ->get();


      }else{
        $advertise = DB::table('advertise')->Where('type_id',$data['id'])
        ->select('id_ad','active','count_read','id_ad','img_ad','mc','subject','type_id')
        ->get();
      }


      $advertise_heade = DB::table('advertise_heade')
      ->select('name_adver','img')
      ->Where('id',$data['id'])
      ->get();




      return response()->json([ 'advertise' =>  $advertise,
                                'advertise_heade' => $advertise_heade
                                ]);

                            });


Route::middleware('auth:api')->get('/get_salse', function (Request $request) {
      $user = $request->user();
      $data = $request->json()->all();
      $json = DB::table('ngg_target_daily_sale')
      ->Where('month',date("m"))
      ->Where('year',date("Y"))
      ->Where('username',$user->username)
      ->get();
      return response()->json($json);
});


Route::middleware('auth:api')->get('/get_salse_sumdaily', function (Request $request) {
      $user = $request->user();
      $data = $request->json()->all();
      $json = DB::table('ngg_target_daily_sale')
      ->Where('month',date("m"))
      ->Where('year',date("Y"))
      ->Where('username',$user->username)
      ->get()->sum('target_degre_sell');
      return response()->json($json);
});


Route::middleware('auth:api')->post('/get_sales_search', function (Request $request) {
      $user = $request->user();
      $data = $request->json()->all();
      $json = DB::table('ngg_target_daily_sale')
      ->Where('day',$data["day"] )
      ->Where('month',$data["month"])
      ->Where('year',$data["year"])
      ->Where('username',$user->username)
      ->get();
      return response()->json($json);
});




Route::middleware('auth:api')->post('/save_profile', function (Request $request) {
      $user = $request->user();
      $data = $request->json()->all();

      $json = DB::table('users_detail')
      ->Where('Card_Staff',$user->username)
      ->update(['TelephoneNumber' =>  $data['phone'] ]);

      return response($data['phone'],200)->header('Content-Type', 'application/json');
});




Route::middleware('auth:api')->get('/banner', function (Request $request) {
    $user = $request->user();

      $ngg_banner = DB::table('ngg_banner')
      ->Where('active_banner','1')
      ->get();

      $advertise_heade = DB::table('advertise_heade')
      ->select('id','name_adver','name_thai','active_adver','img')
      ->get();


      return response()->json([
        'ngg_banner' => $ngg_banner
          ,
          'advertise_heade' =>  $advertise_heade
      ]);
});

Route::middleware('auth:api')->post('/getimg', function (Request $request) {
      $user = $request->user();
      $data = $request->json()->all();
      $json = DB::table('ngg_img_group_advertise')
      ->Where('advertise_id_img',$data['id'])->get();
      return response($json)->header('Content-Type', 'application/json');
});




Route::middleware('auth:api')->post('/getimg_banner_d', function (Request $request) {
      $user = $request->user();
      $data = $request->json()->all();
      $json = DB::table('ngg_banner')
      ->Where('advertise_id',$data['id'])->get();
      return response($json)->header('Content-Type', 'application/json');
});



Route::middleware('auth:api')->get('/sales_single', function (Request $request) {
      $user = $request->user();
      $data = $request->json()->all();
      $json = DB::table('ngg_target_single_sales')
      ->Where('username',$user->username )->first();
      return response()->json($json);
});



Route::middleware('auth:api')->get('/getalluser', function (Request $request) {

      $user = $request->user();
      $data = $request->json()->all();
      $i  = Input::get('search') ;
      if($i != ""){
            $json = DB::table('users_detail')

            ->orWhere('Name_Thai','LIKE','%'. $i.'%')
            ->orderBy('Name_Thai', 'asc')
            ->paginate(25);
      }else{

            $json = DB::table('users_detail')
            ->orderBy('Name_Thai', 'asc')
            ->paginate(25);
      }


      return response()->json( $json);


});

Route::middleware('auth:api')->post('/get_detail_staff', function (Request $request) {

      $user = $request->user();
      $data = $request->json()->all();
      $json = DB::table('users_detail')
      ->Where('Code_Staff',$data['id'])->get();

      return response()->json($json);


});





Route::middleware('auth:api')->post('/getkm360list', function (Request $request) {

      $user = $request->user();
      $data = $request->json()->all();
      $json = DB::table('ngg_km_category_detail')
      ->leftJoin('ngg_km_img_category_detail','ngg_km_category_detail.id','ngg_km_img_category_detail.id_km_detail')
      ->Where('id_km_cat',$data['id'])

      ->select('id','id_km_cat','km_title','km_separate_id','km_name_img')
      ->get();

      return response()->json($json);
});






Route::middleware('auth:api')->get('/getkm360list_search', function (Request $request) {

      $user = $request->user();
      $data = $request->json()->all();
      $json = DB::table('ngg_km_category_detail')->get();
      return response()->json($json);
});



Route::middleware('auth:api')->post('/getkmimgpreview', function (Request $request) {

      $user = $request->user();
      $data = $request->json()->all();
      $json = DB::table('ngg_km_img_category_detail')
      ->Where('id_km_detail',$data['id'])
      ->get();
      return response()->json($json);
});




Route::middleware('auth:api')->post('/getkmimgdetail', function (Request $request) {

      $user = $request->user();
      $data = $request->json()->all();
      $json = DB::table('ngg_km_category_detail')
      ->Where('id',$data['id'])
      ->first();
      return response()->json($json);
});




Route::middleware('auth:api')->get('/get_km360', function (Request $request) {
      $user = $request->user();
      $data = $request->json()->all();
      $json = DB::table('ngg_km_category')
      ->select('id_km_cat','img')
      ->get();
      return response()->json($json);
});


Route::middleware('auth:api')->get('/get_iform', function (Request $request) {
      $user = $request->user();
      $data = $request->json()->all();
      $json = DB::table('ngg_iform')->get();
      return response()->json($json);
});


Route::middleware('auth:api')->post('/count_read', function (Request $request) {
      $user = $request->user();
      $data = $request->json()->all();
      $count = DB::table('advertise')
      ->where('id_ad',$data['id'])
      ->first();

      $sum = 1+ $count->count_read;
       DB::table('advertise')
      ->where('id_ad',$data['id'])
      ->update(['count_read' => $sum ]);
      return response()->json($sum);
});


Route::middleware('auth:api')->get('/get_list_benefits', function (Request $request) {
      $user = $request->user();
      $data = $request->json()->all();
      $json = DB::table('ngg_list_benefits')->get();
      return response()->json($json);
});



Route::middleware('auth:api')->post('/micro', function (Request $request) {

      $user = $request->user();
      $data = $request->json()->all();
      $json = DB::table('advertise')
      ->leftJoin('ngg_banner','advertise.id_ad','ngg_banner.advertise_id')
      ->Where('mc',$data['id'])
      ->select('mc','id_ad','type_id','subject','img_banner','count_read','img_ad')
      ->get();
      return response()->json($json);
});


Route::middleware('auth:api')->post('/micro_name', function (Request $request) {

      $user = $request->user();
      $data = $request->json()->all();
      $json = DB::table('ngg_list_mc')
      ->Where('id',$data['id'])
      ->first();
      return response()->json($json);
});



Route::middleware('auth:api')->post('/getProduct', function (Request $request) {

      $user = $request->user();
      $data = $request->json()->all();
      $json = DB::table('ngg_km_separate')->get();
      return response()->json($json);


});



Route::middleware('auth:api')->post('/getProduct_list', function (Request $request) {

      $user = $request->user();
      $data = $request->json()->all();
      $json = DB::table('ngg_km_category_detail')
      ->leftJoin('ngg_km_img_category_detail','ngg_km_category_detail.id','ngg_km_img_category_detail.id_km_detail')
      ->where('km_separate_id', $data['id'])
      ->select('id','km_separate_id','km_title','id_km_cat','km_name_img')
      ->get();
      return response()->json($json);


});


Route::middleware('auth:api')->post('/getkmfile', function (Request $request) {

      $user = $request->user();
      $data = $request->json()->all();
      $json = DB::table('ngg_km_file')
      ->where('id_cate_detail', $data['id'])
      ->get();
      return response()->json($json);


});




Route::middleware('auth:api')->post('/password_ch', function (Request $request) {
      $user = $request->user();
      $data = $request->json()->all();
      if (Hash::check($data['password_old'], $user->password)) {
          DB::table('users')
          ->where('username', $user->username)
          ->update(['password' => Hash::make($data['password_new'])]);
          return response()->json([
              'success' => '200'
          ]);
      }else
      {
          return response()->json([
              'success' => "404"
          ]);
      }


  });



  Route::middleware('auth:api')->get('/kmhr', function (Request $request) {

      $user = $request->user();
      $data = $request->json()->all();
      $json = DB::table('ngg_km_hr_list')
      ->get();
      return response()->json($json);


});


Route::middleware('auth:api')->get('/gethrbp', function (Request $request) {

    $user = $request->user();
    $json = DB::table('ngg_benefits_hrbp')
    ->where('code_staff',$user->username)
    ->get();
    return response()->json($json);

});



Route::middleware('auth:api')->get('/getaccident', function (Request $request) {

    $user = $request->user();
    $json = DB::table('ngg_benefits_accident')
    ->where('code_staff',$user->username)
    ->get();
    return response()->json($json);

});




Route::middleware('auth:api')->get('/getemployee', function (Request $request) {

    $user = $request->user();
    $json = DB::table('ngg_benefits_employee')
    ->where('code_staff',$user->username)
    ->get();
    return response()->json($json);

});




Route::middleware('auth:api')->get('/gethealth', function (Request $request) {

    $user = $request->user();
    $json = DB::table('ngg_benefits_health')
    ->where('code_staff',$user->username)
    ->get();
    return response()->json($json);

});





Route::middleware('auth:api')->get('/getinsurance', function (Request $request) {

    $user = $request->user();
    $json = DB::table('ngg_benefits_insurance')
    ->where('code_staff',$user->username)
    ->get();
    return response()->json($json);

});


Route::middleware('auth:api')->get('/getproviden', function (Request $request) {

    $user = $request->user();
    $json = DB::table('ngg_benefits_providen')
    ->where('code_staff',$user->username)
    ->get();
    return response()->json($json);

});



Route::middleware('auth:api')->post('/get_detail_be', function (Request $request) {

    $user = $request->user();
    $data = $request->json()->all();
    $json = DB::table('ngg_benefits')
    ->where('id_list_be', $data['id'])
    ->where('code_staff', $user->username)
    ->get();
    return response()->json($json);


});

Route::middleware('auth:api')->get('/getuserid', function (Request $request) {
      $user = $request->user();
      $data = DB::table('users')
      ->leftJoin('users_detail', 'users.username', '=', 'users_detail.Code_Staff')
      ->leftJoin('users_group','users_detail.Code_Staff', '=','users_group.username_id')
      ->orWhere('username',$user->username)
      ->orWhere('id_card',$user->username)
      ->select('username','id_card')
      ->first();
      return response()->json($data);
});


Route::middleware('auth:api')->post('/alert_daily', function (Request $request) {

    $user = $request->user();
    $data = $request->json()->all();
    $today = Carbon::today();
    $check =  DB::table('alert_daily')
    ->where('code_staff',$user->username)
    ->where('created_at',Carbon::today())
    ->count();
    $success = '';
    if( $check > 0){
        $success = "Y";

    }else{
        DB::table('alert_daily')
        ->insert([
            'code_staff' => $user->username,
            'feeling'  => $data['value'],
            'created_at' =>Carbon::today()
            ]);
            $success = "N";
    }





    return response()->json($success);
});



Route::middleware('auth:api')->get('/alert_daily_c', function (Request $request) {

    $user = $request->user();
    $data = $request->json()->all();
    $today = Carbon::today();
    $check =  DB::table('alert_daily')
    ->where('code_staff',$user->username)
    ->where('created_at',Carbon::today())
    ->count();

    if( $check > 0){
        $success = "Y";

    }else{
        $success = "N";
    }
    return response()->json([
        'success' => $success,
        'username' =>  $user->username
        
                           ]);
});

Route::middleware('auth:api')->post('/get_positin', function (Request $request) {

    $user = $request->user();
    $data = $request->json()->all();
    $position = DB::table('users_detail')
    ->orWhere('Department','LIKE','%'. $data['value'].'%')
    ->orderBy('Department', 'asc')
    ->select('Department')
    ->get();
    $a=array();

    foreach($position as  $i){

        array_push($a, $i->Department);
    }
    $brand_r   = array_unique( $a );
    $array = $a;
    $unique = array();
    foreach($array as $v){
      isset($k[$v]) || ($k[$v]=1) && $unique[] = $v;
      }



    return response()->json($unique);
});




Route::middleware('auth:api')->post('/get_contact', function (Request $request) {


    $user = $request->user();
    $data = $request->json()->all();
    $em = DB::table('users_detail')
    ->Where('Department', $data['value'])
    ->get();


    return response()->json($em);



});


Route::middleware('auth:api')->post('/save_chat', function (Request $request) {





    $data = $request->json()->all();
    $msg = json_encode($data['msg']);
    $check_1 = DB::table('ngg_chat')
    ->Where('coderoom', $data['chat_partner']+$data['owner_room'])
    ->count();


    if( $check_1 > 0){
        DB::table('ngg_chat')
        ->Where('coderoom', $data['chat_partner']+$data['owner_room'])
        ->update([
                    'msg' => $msg,
                   /*   'img_ad' =>$data['img_ad'], */
                    'owner_room' =>$data['owner_room'],
                    'chat_partner' =>$data['chat_partner'],
                    'createdAt' =>$data['createdAt'],
                    'coderoom' => $data['owner_room']+$data['chat_partner']
               ]);
    } else{
        DB::table('ngg_chat')
        ->insert([
                    'msg' => $msg,
                   /*   'img_ad' =>$data['img_ad'], */
                    'owner_room' =>$data['owner_room'],
                    'chat_partner' =>$data['chat_partner'],
                    'createdAt' =>$data['createdAt'],
                    'coderoom' => $data['owner_room']+$data['chat_partner']
               ]);
    }


    return response()->json($data['msg']);

});



Route::middleware('auth:api')->post('/get_chat', function (Request $request) {

    $data = $request->json()->all();
    $owner_info =  DB::table('users_detail')
    ->where('Code_Staff',$data['chat_partner'])
    ->select('Name_Thai','img','Position','Code_Staff')
    ->first();

    $owner_room  = DB::table('ngg_chat')
    ->Where('coderoom', $data['chat_partner']+$data['owner_room'])
    ->first();
            if(isset($owner_room)){
            return response()->json([
                  'dataall' =>json_decode($owner_room->msg),
                  'owner_info' =>$owner_info,
                  ]);


             }  else{

                  $null = array(
                        'user' =>'ข้อความจากระบบ',
                        'owner_room' =>  'null',
                        'chat_partner'  => 'null',
                        'msg'  => 'ยินดีต้อนรับค่ะ โปรดใช้คำสุภาพ',
                        'img' =>'user.svg',
                       'createdAt'  => date('Y-m-d H:i:s'),
                  );

                    $dataall[] =  $null;
                  return response()->json([
                        'dataall' =>$dataall,
                        'owner_info' =>$owner_info,
                        ]);}


            });

Route::middleware('auth:api')->post('/get_history_chat', function (Request $request) {

      $user = $request->user();
      $data = $request->json()->all();

        if($data['value'] != ""){
            $name_search =  DB::table('users_detail')
            ->orWhere('Name_Thai','LIKE','%'. $data['value'].'%')
            ->first();

            $room =  $user->username+ $name_search->Code_Staff;
            $history_chat =  DB::table('ngg_chat')
            ->Where('coderoom', $room)
            ->select('owner_room','chat_partner','msg')
            ->orderBy('createdAt', 'DESC')
            ->get();

            foreach($history_chat as $history_chats)
            {

                $name_thai_owner_room =  DB::table('users_detail')->where('Code_Staff',$history_chats->owner_room)->first();
                $name_thai_chat_partner =  DB::table('users_detail')->where('Code_Staff',$history_chats->chat_partner)->first();
                $msg = json_decode($history_chats->msg, true);
                $last = end($msg);
                $data = array(
                      'owner_room' => $history_chats->owner_room,
                      'chat_partner' => $history_chats->chat_partner,
                      'msg' => $last,
                      'name_thai_owner_room' =>$name_thai_owner_room->Name_Thai,
                      'name_thai_chat_partner' =>$name_thai_chat_partner->Name_Thai
                );

                $history_chat_last[] = $data;

            }

            return response()->json($history_chat_last);

        }else{


            $history_chat =  DB::table('ngg_chat')
            ->orWhere('owner_room', $user->username)
            ->orWhere('chat_partner', $user->username)
            ->select('owner_room','chat_partner','msg')
            ->orderBy('createdAt', 'DESC')
            ->get();

              foreach($history_chat as $history_chats)
              {

                  $name_thai_owner_room =  DB::table('users_detail')->where('Code_Staff',$history_chats->owner_room)->first();
                  $name_thai_chat_partner =  DB::table('users_detail')->where('Code_Staff',$history_chats->chat_partner)->first();
                  $msg = json_decode($history_chats->msg, true);
                  $last = end($msg);
                  $data = array(
                        'owner_room' => $history_chats->owner_room,
                        'chat_partner' => $history_chats->chat_partner,
                        'msg' => $last,
                        'name_thai_owner_room' =>$name_thai_owner_room->Name_Thai,
                        'name_thai_chat_partner' =>$name_thai_chat_partner->Name_Thai
                  );

                  $history_chat_last[] = $data;

              }

              return response()->json($history_chat_last);

        }

});




Route::middleware('auth:api')->post('/get_username_all', function (Request $request) {

      $user = $request->user();
      $data = $request->json()->all();
      $username =  DB::table('users_detail')
      ->orWhere('Code_Staff','LIKE','%'. $data['value'].'%')
      ->orWhere('Name_Thai','LIKE','%'. $data['value'].'%')
      ->select('Name_Thai','Position','img')
      ->paginate(15);


      return response()->json($username);


});






Route::post('register', 'Api\RegisterController@register');
