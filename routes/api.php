<?php

use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Input;

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
        ->leftJoin('users_group', 'users_detail.Code_Staff', '=', 'users_group.username_id')
        ->orWhere('username', $user->username)
        ->orWhere('id_card', $user->username)
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
        ->orWhere('username', $user->username)
        ->orWhere('id_card', $user->username)
        ->select('icon', 'url_menu', 'name_menu')
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

    if ($data['id'] == '8') {
        $json = DB::table('ngg_list_mc')
            ->select('id', 'subject', 'img_mc', 'id_ad')
            ->get();
    } else {
        $json = DB::table('advertise')->Where('type_id', $data['id'])
            ->leftJoin('ngg_banner', 'advertise.id_ad', '=', 'ngg_banner.advertise_id')
            ->select('id_ad', 'subject', 'count_read', 'mc', 'img_ad')
            ->get();
    }

    return response()->json($json);
});

Route::middleware('auth:api')->post('/get_detail_new', function (Request $request) {
    $user = $request->user();
    $data = $request->json()->all();

    $advertise = DB::table('advertise')
        ->where('id_ad', $data['id'])
        ->get();

    return response()->json($advertise);
});

Route::middleware('auth:api')->post('/gethead_new', function (Request $request) {
    $user = $request->user();
    $data = $request->json()->all();

    if ($data['id'] == '8') {

        $advertise = DB::table('ngg_list_mc')->Where('id_ad', $data['id'])
            ->get();

    } else {
        $advertise = DB::table('advertise')->Where('type_id', $data['id'])
            ->select('id_ad', 'active', 'count_read', 'id_ad', 'img_ad', 'mc', 'subject', 'type_id')
            ->get();
    }

    $advertise_heade = DB::table('advertise_heade')
        ->select('name_adver', 'img')
        ->Where('id', $data['id'])
        ->get();

    return response()->json(['advertise' => $advertise,
        'advertise_heade' => $advertise_heade,
    ]);

});

Route::middleware('auth:api')->get('/get_salse', function (Request $request) {
    $user = $request->user();
    $data = $request->json()->all();
    $json = DB::table('ngg_target_daily_sale')
        ->Where('month', date("m"))
        ->Where('year', date("Y"))
        ->Where('username', $user->username)
        ->get();
    return response()->json($json);
});

Route::middleware('auth:api')->get('/get_salse_sumdaily', function (Request $request) {
    $user = $request->user();
    $data = $request->json()->all();
    $json = DB::table('ngg_target_daily_sale')
        ->Where('month', date("m"))
        ->Where('year', date("Y"))
        ->Where('username', $user->username)
        ->get()->sum('target_degre_sell');
    return response()->json($json);
});

Route::middleware('auth:api')->post('/get_sales_search', function (Request $request) {
    $user = $request->user();
    $data = $request->json()->all();
    $json = DB::table('ngg_target_daily_sale')
        ->Where('day', $data["day"])
        ->Where('month', $data["month"])
        ->Where('year', $data["year"])
        ->Where('username', $user->username)
        ->get();
    return response()->json($json);
});

Route::middleware('auth:api')->post('/save_profile', function (Request $request) {
    $user = $request->user();
    $data = $request->json()->all();

    $json = DB::table('users_detail')
        ->Where('Card_Staff', $user->username)
        ->update(['TelephoneNumber' => $data['phone']]);

    return response($data['phone'], 200)->header('Content-Type', 'application/json');
});

Route::middleware('auth:api')->get('/banner', function (Request $request) {
    $user = $request->user();

    $ngg_banner = DB::table('ngg_banner')
        ->Where('active_banner', '1')
        ->orderBy('section_banner','ASC')
        ->get();

    $advertise_heade = DB::table('advertise_heade')
        ->select('id', 'name_adver', 'name_thai', 'active_adver', 'img')
        ->get();

    return response()->json([
        'ngg_banner' => $ngg_banner
        ,
        'advertise_heade' => $advertise_heade,
    ]);
});

Route::middleware('auth:api')->post('/getimg', function (Request $request) {
    $user = $request->user();
    $data = $request->json()->all();
    $json = DB::table('ngg_img_group_advertise')
        ->Where('advertise_id_img', $data['id'])->get();
    return response($json)->header('Content-Type', 'application/json');
});

Route::middleware('auth:api')->post('/getimg_banner_d', function (Request $request) {
    $user = $request->user();
    $data = $request->json()->all();
    $json = DB::table('ngg_banner')
        ->Where('advertise_id', $data['id'])->get();
    return response($json)->header('Content-Type', 'application/json');
});

Route::middleware('auth:api')->get('/sales_single', function (Request $request) {
    $user = $request->user();
    $data = $request->json()->all();
    $json = DB::table('ngg_target_single_sales')
        ->Where('username', $user->username)->first();
    return response()->json($json);
});

Route::middleware('auth:api')->get('/getalluser', function (Request $request) {

    $user = $request->user();
    $data = $request->json()->all();
    $i = Input::get('search');
    if ($i != "") {
        $json = DB::table('users_detail')

            ->orWhere('Name_Thai', 'LIKE', '%' . $i . '%')
            ->orderBy('Name_Thai', 'asc')
            ->paginate(25);
    } else {

        $json = DB::table('users_detail')
            ->orderBy('Name_Thai', 'asc')
            ->paginate(25);
    }

    return response()->json($json);

});

Route::middleware('auth:api')->post('/get_detail_staff', function (Request $request) {

    $user = $request->user();
    $data = $request->json()->all();
    $json = DB::table('users_detail')
        ->Where('Code_Staff', $data['id'])->first();

    return response()->json($json);

});

Route::middleware('auth:api')->post('/getkm360list', function (Request $request) {

    $user = $request->user();
    $data = $request->json()->all();
    $json = DB::table('ngg_km_category_detail')
        ->leftJoin('ngg_km_img_category_detail', 'ngg_km_category_detail.id', 'ngg_km_img_category_detail.id_km_detail')
        ->Where('id_km_cat', $data['id'])

        ->select('id', 'id_km_cat', 'km_title', 'km_separate_id', 'km_name_img')
        ->get();

    return response()->json($json);
});

Route::middleware('auth:api')->get('/getkm360list_search', function (Request $request) {

    $user = $request->user();
    $data = $request->json()->all();
    $json = DB::table('ngg_km_category_detail')
        ->leftJoin('ngg_km_img_category_detail', 'ngg_km_category_detail.id', 'ngg_km_img_category_detail.id_km_detail')
        ->select('id', 'km_title', 'km_remark', 'km_name_img', 'created_at')
        ->get();
    return response()->json($json);
});

Route::middleware('auth:api')->post('/getkmimgpreview', function (Request $request) {

    $user = $request->user();
    $data = $request->json()->all();
    $json = DB::table('ngg_km_img_category_detail')
        ->Where('id_km_detail', $data['id'])
        ->get();
    return response()->json($json);
});

Route::middleware('auth:api')->post('/getkmimgdetail', function (Request $request) {

    $user = $request->user();
    $data = $request->json()->all();
    $json = DB::table('ngg_km_category_detail')
        ->Where('id', $data['id'])
        ->first();
    return response()->json($json);
});

Route::middleware('auth:api')->get('/get_km360', function (Request $request) {
    $user = $request->user();
    $data = $request->json()->all();
    $json = DB::table('ngg_km_category')
        ->select('id_km_cat', 'img','section')
        ->orderBy('section', 'asc')
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
        ->where('id_ad', $data['id'])
        ->first();

    $sum = 1 + $count->count_read;
    DB::table('advertise')
        ->where('id_ad', $data['id'])
        ->update(['count_read' => $sum]);
    return response()->json($sum);
});

Route::middleware('auth:api')->get('/get_list_benefits', function (Request $request) {
    $user = $request->user();
    $data = $request->json()->all();
    $ngg_list_benefits = DB::table('ngg_list_benefits')->get();

    foreach ($ngg_list_benefits as $item) {
        $ngg_benefits = DB::table('ngg_benefits')
            ->where('id_list_be', $item->id)
            ->where('code_staff', $user->username)
            ->get();
        foreach ($ngg_benefits as $items) {

            $datas = array(
                'head' => $items->be_name,
                'detail' => $items->be_detail,
            );

            $i[] = $datas;

        }
        if (isset($i)) {
            $lastdata = array(
                'icon' => $item->icon,
                'name' => $item->name_benefits,
                'list' => $i,

            );
            unset($i);
        } else {
            $lastdata = array(
                'icon' => $item->icon,
                'name' => $item->name_benefits,
                'list' => array(
                    'head' => "ไม่พบข้อมูล",
                    'detail' => "ไม่พบข้อมูล",
                ),

            );
        }

        $final_data[] = $lastdata;
    }
    return response()->json($final_data);
});

Route::middleware('auth:api')->post('/micro', function (Request $request) {

    $user = $request->user();
    $data = $request->json()->all();
    $json = DB::table('advertise')
        ->leftJoin('ngg_banner', 'advertise.id_ad', 'ngg_banner.advertise_id')
        ->Where('mc', $data['id'])
        ->select('mc', 'id_ad', 'type_id', 'subject', 'img_banner', 'count_read', 'img_ad')
        ->get();
    return response()->json($json);
});

Route::middleware('auth:api')->post('/micro_name', function (Request $request) {

    $user = $request->user();
    $data = $request->json()->all();
    $json = DB::table('ngg_list_mc')
        ->Where('id', $data['id'])
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
        ->leftJoin('ngg_km_img_category_detail', 'ngg_km_category_detail.id', 'ngg_km_img_category_detail.id_km_detail')
        ->where('km_separate_id', $data['id'])
        ->select('id', 'km_separate_id', 'km_title', 'id_km_cat', 'km_name_img')
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
            'success' => '200',
        ]);
    } else {
        return response()->json([
            'success' => "404",
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
        ->where('code_staff', $user->username)
        ->get();
    return response()->json($json);

});

Route::middleware('auth:api')->get('/getaccident', function (Request $request) {

    $user = $request->user();
    $json = DB::table('ngg_benefits_accident')
        ->where('code_staff', $user->username)
        ->get();
    return response()->json($json);

});

Route::middleware('auth:api')->get('/getemployee', function (Request $request) {

    $user = $request->user();
    $json = DB::table('ngg_benefits_employee')
        ->where('code_staff', $user->username)
        ->get();
    return response()->json($json);

});

Route::middleware('auth:api')->get('/gethealth', function (Request $request) {

    $user = $request->user();
    $json = DB::table('ngg_benefits_health')
        ->where('code_staff', $user->username)
        ->get();
    return response()->json($json);

});

Route::middleware('auth:api')->get('/getinsurance', function (Request $request) {

    $user = $request->user();
    $json = DB::table('ngg_benefits_insurance')
        ->where('code_staff', $user->username)
        ->get();
    return response()->json($json);

});

Route::middleware('auth:api')->get('/getproviden', function (Request $request) {

    $user = $request->user();
    $json = DB::table('ngg_benefits_providen')
        ->where('code_staff', $user->username)
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
        ->leftJoin('users_group', 'users_detail.Code_Staff', '=', 'users_group.username_id')
        ->orWhere('username', $user->username)
        ->orWhere('id_card', $user->username)
        ->select('username', 'id_card', 'Name_Thai')
        ->first();
    return response()->json($data);
});

Route::middleware('auth:api')->post('/alert_daily', function (Request $request) {

    $user = $request->user();
    $data = $request->json()->all();
    $today = Carbon::today();
    $check = DB::table('alert_daily')
        ->where('code_staff', $user->username)
        ->where('created_at', Carbon::today())
        ->count();
    $success = '';
    if ($check > 0) {
        $success = "Y";

    } else {
        DB::table('alert_daily')
            ->insert([
                'code_staff' => $user->username,
                'feeling' => $data['value'],
                'created_at' => Carbon::today(),
            ]);
        $success = "N";
    }

    return response()->json($success);
});

Route::middleware('auth:api')->get('/alert_daily_c', function (Request $request) {

    $user = $request->user();
    $data = $request->json()->all();
    $today = Carbon::today();
    $check = DB::table('alert_daily')
        ->where('code_staff', $user->username)
        ->where('created_at', Carbon::today())
        ->count();

    if ($check > 0) {
        $success = "Y";

    } else {
        $success = "N";
    }
    return response()->json([
        'success' => $success,
        'username' => $user->username,

    ]);
});

Route::middleware('auth:api')->post('/get_positin', function (Request $request) {

    $user = $request->user();
    $data = $request->json()->all();
    $user_id = DB::table('users_detail')->where('Code_Staff', $user->username)->first();
    $position = DB::table('users_detail')
        ->whereNotIn('Code_Staff', [$user->username])
        ->Where('Company', $user_id->Company)
        ->Where('Department', 'LIKE', '%' . $data['value'] . '%')
        ->orderBy('Department', 'asc')
        ->select('Department')
        ->get();

    //$position_2   = $position->orWhere('Department', 'LIKE', '%' . $data['value'] . '%')->get();

    $a = array();

    foreach ($position as $i) {

        array_push($a, $i->Department);
    }
    $brand_r = array_unique($a);
    $array = $a;
    $unique = array();
    foreach ($array as $v) {
        isset($k[$v]) || ($k[$v] = 1) && $unique[] = $v;
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
    $user = $request->user();
    $msg = json_encode($data['msg']);
    $check_1 = DB::table('ngg_chat')
        ->Where('coderoom', $data['chat_partner'] + $data['owner_room'])
        ->count();
    $msg_cut = json_decode($msg, true);
    $last = end($msg_cut);

    $msg_info = DB::table('users_detail')->where('Code_Staff', $user->username)->first();
    if ($user->username != $last['owner_room']) {

        if ($last['msg'] != strip_tags($last['msg'])) {
            $content = array(
                "en" => 'ข้อความ: รูปภาพ',
            );

        } else {
            $content = array(
                "en" => 'ข้อความ:' . $last['msg'],
            );

        }

        $heading = array(
            "en" => $msg_info->Name_Thai . "(" . $msg_info->Nickname . ")",
        );

        $setmeg_noti = DB::table('ngg_key_notification')->where('Code_Staff', $last['owner_room'])
            ->where('login_status', '1')
            ->get();

    } else if ($user->username != $last['chat_partner']) {

        if ($last['msg'] != strip_tags($last['msg'])) {
            $content = array(
                "en" => 'ข้อความ: รูปภาพ',
            );

        } else {
            $content = array(
                "en" => 'ข้อความ:' . $last['msg'],
            );

        }
        $heading = array(
            "en" => $msg_info->Name_Thai . "(" . $msg_info->Nickname . ")",
        );
        $setmeg_noti = DB::table('ngg_key_notification')->where('Code_Staff', $last['chat_partner'])
            ->where('login_status', '1')
            ->get();

    }

    if ($setmeg_noti->count() > 0) {
        $list_noti = array();
        foreach ($setmeg_noti as $item) {
            array_push($list_noti, $item->player_id);
        }
        $fields = array(
            'app_id' => "16adf426-0420-49fa-b189-d71af438789a",
            'include_player_ids' => $list_noti,
            'data' => array("foo" => "bar"),
            'contents' => $content,
            'headings' => $heading,

        );
        $fields = json_encode($fields);
        /*  print("\nJSON sent:\n");
        print($fields); */

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

    }

    if ($check_1 > 0) {

        $check = DB::table('ngg_chat')
            ->Where('coderoom', $data['chat_partner'] + $data['owner_room'])->first();

        if ($check->owner_room == $user->username) {

            $count = DB::table('ngg_noti_chat')
                ->Where('codestaff', $check->chat_partner)
                ->Where('coderoom', $data['chat_partner'] + $data['owner_room'])
                ->first();

            DB::table('ngg_noti_chat')
                ->Where('codestaff', $check->chat_partner)
                ->Where('coderoom', $data['chat_partner'] + $data['owner_room'])
                ->update([
                    'count' => $count->count = $count->count + 1,
                ]);

        } else {

            $count = DB::table('ngg_noti_chat')
                ->Where('codestaff', $check->owner_room)
                ->Where('coderoom', $data['chat_partner'] + $data['owner_room'])
                ->first();

            DB::table('ngg_noti_chat')
                ->Where('codestaff', $check->owner_room)
                ->Where('coderoom', $data['chat_partner'] + $data['owner_room'])
                ->update([

                    'count' => $count->count = $count->count + 1,

                ]);

        }

        DB::table('ngg_chat')
            ->Where('coderoom', $data['chat_partner'] + $data['owner_room'])
            ->update([
                'msg' => $msg,
                /*   'img_ad' =>$data['img_ad'], */
                'owner_room' => $data['owner_room'],
                'chat_partner' => $data['chat_partner'],
                'createdAt' => $data['createdAt'],
                'coderoom' => $data['owner_room'] + $data['chat_partner'],

            ]);

    } else {

        if ($data['owner_room'] != $user->usrname) {
            DB::table('ngg_noti_chat')
                ->insert([
                    'codestaff' => $data['chat_partner'],
                    'coderoom' => $data['owner_room'] + $data['chat_partner'],
                    'count' => '1',

                ]);
            DB::table('ngg_noti_chat')
                ->insert([
                    'codestaff' => $data['owner_room'],
                    'coderoom' => $data['owner_room'] + $data['chat_partner'],

                ]);

        }

        DB::table('ngg_chat')
            ->insert([
                'msg' => $msg,
                'owner_room' => $data['owner_room'],
                'chat_partner' => $data['chat_partner'],
                'createdAt' => $data['createdAt'],
                'coderoom' => $data['owner_room'] + $data['chat_partner'],
            ]);

    }

    return response()->json($data['msg']);

});

Route::middleware('auth:api')->post('/get_chat', function (Request $request) {

    $data = $request->json()->all();

    $owner_info = DB::table('users_detail')
        ->where('Code_Staff', $data['chat_partner'])
        ->select('Name_Thai', 'img', 'Position', 'Code_Staff')
        ->first();
    $user = $request->user();

    $owner_info_me = DB::table('users_detail')
        ->where('Code_Staff', $user->username)
        ->select('Name_Thai', 'img', 'Position', 'Code_Staff')
        ->first();

    $owner_room = DB::table('ngg_chat')
        ->Where('coderoom', $data['chat_partner'] + $data['owner_room'])
        ->first();
    if (isset($owner_room)) {
        return response()->json([
            'dataall' => json_decode($owner_room->msg),
            'owner_info' => $owner_info,
            'owner_info_me' => $owner_info_me,
        ]);

    } else {

        $null = array(
            'user' => 'ข้อความจากระบบ',
            'owner_room' => 'null',
            'chat_partner' => 'null',
            'msg' => 'ยินดีต้อนรับค่ะ โปรดใช้คำสุภาพ',
            'img' => 'user.svg',
            'createdAt' => date('Y-m-d H:i:s'),
        );

        $dataall[] = $null;
        return response()->json([
            'dataall' => $dataall,
            'owner_info' => $owner_info,
            'owner_info_me' => $owner_info_me,
        ]);}

});

Route::middleware('auth:api')->post('/get_history_chat', function (Request $request) {

    $user = $request->user();
    $data = $request->json()->all();

    if ($data['value'] != "") {

        $name_search = DB::table('users_detail')
            ->orWhere('Name_Thai', 'LIKE', '%' . $data['value'] . '%')
            ->first();

        $room = $user->username + $name_search->Code_Staff;

        $history_chat = DB::table('ngg_chat')
            ->Where('coderoom', $room)
            ->select('owner_room', 'chat_partner', 'msg')
            ->orderBy('createdAt', 'DESC')
            ->get();

        if ($history_chat->count() > 0) {

            foreach ($history_chat as $history_chats) {

                $name_thai_owner_room = DB::table('users_detail')->where('Code_Staff', $history_chats->owner_room)->first();
                $name_thai_chat_partner = DB::table('users_detail')->where('Code_Staff', $history_chats->chat_partner)->first();
                $msg = json_decode($history_chats->msg, true);
                $last = end($msg);
                $data = array(
                    'owner_room' => $history_chats->owner_room,
                    'chat_partner' => $history_chats->chat_partner,
                    'msg' => $last,
                    'name_thai_owner_room' => $name_thai_owner_room->Name_Thai,
                    'name_thai_chat_partner' => $name_thai_chat_partner->Name_Thai,

                );

                $history_chat_last[] = $data;
            }

            foreach ($history_chat_last as $item) {

                if ($user->username == $item['owner_room']) {
                    $no_ti = DB::table('ngg_noti_chat')
                        ->where('codestaff', $user->username)
                        ->where('coderoom', $room)
                        ->first();

                    $img_d = $item['chat_partner'] . ".jpg";
                    $msg = json_encode($item['msg'], true);
                    if ($item['msg']['msg'] != strip_tags($item['msg']['msg'])) {
                        $data = array(
                            'img' => $img_d,
                            'username' => $item['chat_partner'],
                            'msg' => array(
                                'msg' => "ข้อความภาพ",
                            ),
                            'name_thai' => $item['name_thai_chat_partner'],
                            'noti' => $no_ti->count,

                        );
                    } else {
                        $data = array(
                            'img' => $img_d,
                            'username' => $item['chat_partner'],
                            'msg' => $item['msg'],
                            'name_thai' => $item['name_thai_chat_partner'],
                            'noti' => $no_ti->count,

                        );
                    }

                    $history_chat_last_gen[] = $data;

                } else if ($user->username == $item['chat_partner']) {

                    $no_ti = DB::table('ngg_noti_chat')
                        ->where('codestaff', $user->username)
                        ->where('coderoom', $room)
                        ->first();
                    $img_d = $item['owner_room'] . ".jpg";
                    $msg = json_encode($item['msg'], true);
                    if ($item['msg']['msg'] != strip_tags($item['msg']['msg'])) {
                        $data = array(
                            'img' => $img_d,
                            'username' => $item['owner_room'],
                            'msg' => array(
                                'msg' => "ข้อความภาพ",
                            ),
                            'name_thai' => $item['name_thai_owner_room'],
                            'noti' => $no_ti->count,

                        );
                    } else {
                        $data = array(
                            'img' => $img_d,
                            'username' => $item['owner_room'],
                            'msg' => $item['msg'],
                            'name_thai' => $item['name_thai_owner_room'],
                            'noti' => $no_ti->count,

                        );
                    }

                    $history_chat_last_gen[] = $data;

                }

            }

            return response()->json($history_chat_last_gen);

        } else {

            return response()->json("null");
        }

    } else {

        $history_chat = DB::table('ngg_chat')
            ->orWhere('owner_room', $user->username)
            ->orWhere('chat_partner', $user->username)
            ->select('owner_room', 'chat_partner', 'msg')
            ->orderBy('createdAt', 'DESC')
            ->get();

        if ($history_chat->count() > 0) {

            foreach ($history_chat as $history_chats) {

                $name_thai_owner_room = DB::table('users_detail')->where('Code_Staff', $history_chats->owner_room)->first();
                $name_thai_chat_partner = DB::table('users_detail')->where('Code_Staff', $history_chats->chat_partner)->first();
                $msg = json_decode($history_chats->msg, true);
                $last = end($msg);
                $data = array(
                    'owner_room' => $history_chats->owner_room,
                    'chat_partner' => $history_chats->chat_partner,
                    'msg' => $last,
                    'name_thai_owner_room' => $name_thai_owner_room->Name_Thai,
                    'name_thai_chat_partner' => $name_thai_chat_partner->Name_Thai,

                );

                $history_chat_last[] = $data;

            }

            foreach ($history_chat_last as $item) {
                if ($user->username == $item['owner_room']) {

                    $no_ti = DB::table('ngg_noti_chat')
                        ->where('codestaff', $item['owner_room'])
                        ->where('coderoom', $user->username + $item['chat_partner'])
                        ->first();

                    $img_d = $item['chat_partner'] . ".jpg";
                    $msg = json_encode($item['msg'], true);

                    if ($item['msg']['msg'] != strip_tags($item['msg']['msg'])) {
                        $data = array(
                            'img' => $img_d,
                            'username' => $item['chat_partner'],
                            'msg' => array(
                                'msg' => "ข้อความภาพ",
                            ),
                            'name_thai' => $item['name_thai_chat_partner'],
                            'noti' => $no_ti->count,

                        );
                    } else {
                        $data = array(
                            'img' => $img_d,
                            'username' => $item['chat_partner'],
                            'msg' => $item['msg'],
                            'name_thai' => $item['name_thai_chat_partner'],
                            'noti' => $no_ti->count,

                        );
                    }

                    $history_chat_last_gen[] = $data;

                } else if ($user->username == $item['chat_partner']) {

                    $no_ti = DB::table('ngg_noti_chat')
                        ->where('codestaff', $item['chat_partner'])
                        ->where('coderoom', $user->username + $item['owner_room'])
                        ->first();

                    $img_d = $item['owner_room'] . ".jpg";

                    $msg = json_encode($item['msg'], true);
                    if ($item['msg']['msg'] != strip_tags($item['msg']['msg'])) {
                        $data = array(
                            'img' => $img_d,
                            'username' => $item['owner_room'],
                            'msg' => array(
                                'msg' => "ข้อความภาพ",
                            ),
                            'name_thai' => $item['name_thai_owner_room'],
                            'noti' => $no_ti->count,

                        );
                    } else {
                        $data = array(
                            'img' => $img_d,
                            'username' => $item['owner_room'],
                            'msg' => $item['msg'],
                            'name_thai' => $item['name_thai_owner_room'],
                            'noti' => $no_ti->count,

                        );
                    }

                    $history_chat_last_gen[] = $data;

                }

            }

            return response()->json($history_chat_last_gen);

        }

    }

});

Route::middleware('auth:api')->post('/get_username_all', function (Request $request) {

    $user = $request->user();
    $data = $request->json()->all();
    $user_id = DB::table('users_detail')->where('Code_Staff', $user->username)->first();

    $username = DB::table('users_detail')
        ->whereNotIn('Code_Staff', [$user->username])
        ->Where('Name_Thai', 'LIKE', '%' . $data['value'] . '%')
        ->Where('Company', $user_id->Company)
        ->select('Name_Thai', 'Position', 'img', 'Code_Staff')
        ->orderBy('Name_Thai', 'asc')
        ->paginate(15);

    return response()->json($username);

});

Route::middleware('auth:api')->get('/get_username_all_addroom', function (Request $request) {

    $user = $request->user();
    $data = $request->json()->all();
    $user_id = DB::table('users_detail')->where('Code_Staff', $user->username)->first();
    $username = DB::table('users_detail')
        ->whereNotIn('Code_Staff', ['admin', '99999', $user->username])
        ->Where('Company', $user_id->Company)
        ->select('Name_Thai', 'Position', 'img', 'Code_Staff')
        ->orderBy('Name_Thai', 'asc')
        ->get();

    return response()->json($username);

});

Route::middleware('auth:api')->post('/save_addroom', function (Request $request) {
    $user = $request->user();
    $data = $request->json()->all();
    $check_room = DB::table('ngg_chat_group')->where('name_room', $data['name_group'])->count();
    $null = array([
        'user' => 'ข้อความจากระบบ',
        'owner_room' => 'null',
        'chat_partner' => 'null',
        'msg' => 'ยินดีต้อนรับค่ะ โปรดใช้คำสุภาพ',
        'img' => 'user.svg',
        'createdAt' => date('Y-m-d H:i:s'),
    ]);

    if ($check_room > 0) {

        return response()->json("500");
    } else {

        DB::table('ngg_chat_group')->insert(
            [
                'img' => 'default.png',
                'name_room' => $data['name_group'],
                'msg' => json_encode($null),
                'createdAt' => date('Y-m-d H:i:s'),
            ]);

        $get = DB::table('ngg_chat_group')
            ->where('name_room', $data['name_group'])
            ->first();

        DB::table('ngg_chat_group_user')->insert([
            'code_room_id' => $get->code_room,
            'status_confirm' => '1',
            'status_out_group' => '0',
            'createdAt' => date('Y-m-d H:i:s'),
            'code_staff' => $user->username,
        ]);
        foreach ($data['username'] as $item) {
            DB::table('ngg_chat_group_user')->insert([
                'code_room_id' => $get->code_room,
                'status_confirm' => '0',
                'status_out_group' => '0',
                'createdAt' => date('Y-m-d H:i:s'),
                'code_staff' => $item['Code_Staff'],
            ]);

        }

        return response()->json("200");

    }

});

Route::middleware('auth:api')->post('/get_group_chat', function (Request $request) {
    $user = $request->user();
    $data = $request->json()->all();

    $getgroup = DB::table('ngg_chat_group_user')
        ->leftJoin('ngg_chat_group', 'ngg_chat_group_user.code_room_id', 'ngg_chat_group.code_room')
        ->select('code_staff', 'code_room_id', 'status_confirm', 'status_out_group', 'name_room', 'img', 'msg', 'no_ti')
        ->where('code_staff', $user->username)
        ->where('status_confirm', '1')
        ->get();

    if ($getgroup->count() > 0) {

        foreach ($getgroup as $getgroups) {

            $msg = json_decode($getgroups->msg, true);
            $last = end($msg);
            if ($last['msg'] != strip_tags($last['msg'])) {

                $data = array(

                    'code_room_id' => $getgroups->code_room_id,
                    'name_room' => $getgroups->name_room,
                    'msg' => array(
                        'msg' => "ข้อความภาพ",
                    ),
                    'img' => $getgroups->img,
                    'no_ti' => $getgroups->no_ti,

                );

            } else {

                $data = array(

                    'code_room_id' => $getgroups->code_room_id,
                    'name_room' => $getgroups->name_room,
                    'msg' => $last,
                    'img' => $getgroups->img,
                    'no_ti' => $getgroups->no_ti,

                );

            }

            $getgroup_last[] = $data;

        }

        return response()->json($getgroup_last);
    } else {
        return response()->json("404");
    }

});

Route::middleware('auth:api')->post('/get_chat_group', function (Request $request) {

    $data = $request->json()->all();
    $user = $request->user();

    $ngg_chat_group = DB::table('ngg_chat_group')
        ->where('code_room', $data['id_room'])
        ->first();

    return response()->json([

        'dataall' => json_decode($ngg_chat_group->msg),
        'name_room' => $ngg_chat_group->name_room,

    ]);

});

Route::middleware('auth:api')->post('/save_chat_group', function (Request $request) {

    $data = $request->json()->all();
    $user = $request->user();
    $msg = json_encode($data['chat_partner']);
    $msg_cut = json_decode($msg, true);
    $last = end($msg_cut);
    $msg_info = DB::table('users_detail')->where('Code_Staff', $user->username)->first();
    $room_info = DB::table('ngg_chat_group')->where('code_room', $data['id_room'])->first();


    if ($last['msg'] != strip_tags($last['msg'])) {
        $content = array(
            "en" => 'ข้อความ: รูปภาพ',
        );

    } else {
        $content = array(
            "en" => 'ข้อความ:' . $last['msg'],
        );

    }

    $heading = array(
        "en" => "กลุ่ม " . $room_info->name_room . " " . $msg_info->Name_Thai . "(" . $msg_info->Nickname . ")",
    );

    $setmeg_noti = DB::table('ngg_chat_group_user')
        ->whereNotIn('code_staff', [$user->username])
        ->where('code_room_id', '=', $data['id_room'])
        ->where('off_noti', '=', '1')
        ->get();

    if ($setmeg_noti->count() > 0) {

        $list_noti = array();
        foreach ($setmeg_noti as $item) {

            $setmeg_noti = DB::table('ngg_key_notification')
                ->where('code_staff', $item->code_staff)
                ->where('login_status', '1')
                ->get();
            if ($setmeg_noti->count() > 0) {
                foreach ($setmeg_noti as $item) {
                    array_push($list_noti, $item->player_id);

                }

            }
        }

        if (count($list_noti) > 0) {

            $fields = array(
                'app_id' => "16adf426-0420-49fa-b189-d71af438789a",
                'include_player_ids' => $list_noti,
                'data' => array("foo" => "bar"),
                'contents' => $content,
                'headings' => $heading,
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
        }
    }

    $noti = DB::table('ngg_chat_group_user')
        ->where('code_room_id', $data['id_room'])
        ->first();

    $user_update = DB::table('ngg_chat_group_user')
        ->whereNotIn('code_staff', [$user->username])
        ->where('code_room_id', $data['id_room'])
        ->get();

    foreach ($user_update as $item) {

        DB::table('ngg_chat_group_user')
            ->where('code_staff', $item->code_staff)
            ->where('code_room_id', $data['id_room'])
            ->update([
                'no_ti' => $noti->no_ti = $noti->no_ti + 1,
            ]);

    }

    DB::table('ngg_chat_group')
        ->where('code_room', $data['id_room'])
        ->update([
            'msg' => json_encode($data['chat_partner']),
            'createdAt' => date('Y-m-d H:i:s'),

        ]);

    return response()->json("200");
});

Route::middleware('auth:api')->get('/status_confirm_join_group', function (Request $request) {

    $user = $request->user();
    $data = $request->json()->all();
    $status_confirm = DB::table('ngg_chat_group_user')
        ->leftJoin('ngg_chat_group', 'ngg_chat_group_user.code_room_id', 'ngg_chat_group.code_room')
        ->select('code_staff', 'code_room_id', 'status_confirm', 'status_out_group', 'name_room', 'img', 'msg')
        ->where('code_staff', $user->username)
        ->where('status_confirm', '0')
        ->get();

    if ($status_confirm->count() > 0) {

        return response()->json($status_confirm);
    } else {
        return response()->json("null");
    }

});

Route::middleware('auth:api')->post('/confirm', function (Request $request) {

    $data = $request->json()->all();
    $user = $request->user();
    if ($data['confirm'] == "1") {

        $ngg_chat_group = DB::table('ngg_chat_group_user')
            ->where('code_room_id', $data['id'])
            ->where('code_staff', $user->username)
            ->update([
                'status_confirm' => '1',
            ]);
    } else {

        $ngg_chat_group = DB::table('ngg_chat_group_user')
            ->where('code_room_id', $data['id'])
            ->where('code_staff', $user->username)
            ->delete();
    }

    return response()->json("200");

});

Route::middleware('auth:api')->post('/exit_group_chat', function (Request $request) {

    $user = $request->user();
    $data = $request->json()->all();

    $ngg_chat_group = DB::table('ngg_chat_group_user')
        ->where('code_room_id', $data['id'])
        ->where('code_staff', $user->username)
        ->delete();

    return response()->json("200");

});

Route::middleware('auth:api')->post('/save_key_player', function (Request $request) {

    $data = $request->json()->all();
    $user = $request->user();

    $ngg_key_notification = DB::table('ngg_key_notification')
        ->where('player_id', $data['key'])
        ->count();
    if ($ngg_key_notification > 0) {
        DB::table('ngg_key_notification')
            ->where('player_id', $data['key'])
            ->update([
                'player_id' => $data['key'],
                'code_staff' => $user->username,
                'login_status' => '1',

                'updated_at' => Carbon::now(),
            ]);

    } else {
        DB::table('ngg_key_notification')
            ->insert([
                'player_id' => $data['key'],
                'code_staff' => $user->username,
                'login_status' => '1',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now(),

            ]);
    }

    return response()->json("200");

});

Route::middleware('auth:api')->post('/logout_key', function (Request $request) {

    $data = $request->json()->all();
    $user = $request->user();
    DB::table('ngg_key_notification')
        ->where('player_id', $data['key'])
        ->update([

            'login_status' => '0',
        ]);

});

Route::middleware('auth:api')->post('/add_staff_ingroup', function (Request $request) {

    $data = $request->json()->all();
    $user = $request->user();
    $user_id = DB::table('users_detail')->where('Code_Staff', $user->username)->first();
    $check = DB::table('ngg_chat_group_user')
        ->where('code_room_id', $data['room'])
        ->get();

    if ($check->count() > 0) {
        foreach ($check as $checks) {

            $get[] = $checks->code_staff;
        }

        $username = DB::table('users_detail')
            ->whereNotIn('Code_Staff', $get)
            ->Where('Company', $user_id->Company)
            ->select('Name_Thai', 'Position', 'img', 'Code_Staff')
            ->orderBy('Name_Thai', 'asc')
            ->get();

    } else {
        $username = DB::table('users_detail')
            ->Where('Company', $user_id->Company)
            ->select('Name_Thai', 'Position', 'img', 'Code_Staff')
            ->orderBy('Name_Thai', 'asc')
            ->get();
    }

    return response()->json($username);
});

Route::middleware('auth:api')->post('/save_staff_ingroup', function (Request $request) {
    $data = $request->json()->all();
    $user = $request->user();
    foreach ($data['username'] as $item) {
        DB::table('ngg_chat_group_user')->insert([
            'code_room_id' => $data['room'],
            'status_confirm' => '0',
            'status_out_group' => '0',
            'createdAt' => date('Y-m-d H:i:s'),
            'code_staff' => $item['Code_Staff'],
        ]);

    }

    return response()->json('200');
});

Route::middleware('auth:api')->post('/remove_noti', function (Request $request) {
    $data = $request->json()->all();
    $user = $request->user();
    $username = DB::table('ngg_noti_chat')
        ->Where('coderoom', $user->username + $data['username'])
        ->get();
    foreach ($username as $item) {
        if ($user->username == $item->codestaff) {
            DB::table('ngg_noti_chat')
                ->where('codestaff', $user->username)
                ->where('coderoom', $user->username + $data['username'])
                ->update([
                    'count' => '0',
                ]);

        }

    }

    return response()->json('200');
});

Route::middleware('auth:api')->post('/remove_noti_group', function (Request $request) {
    $data = $request->json()->all();
    $user = $request->user();
    DB::table('ngg_chat_group_user')
        ->where('code_staff', $user->username)
        ->where('code_room_id', $data['room'])
        ->update([
            'no_ti' => '0',
        ]);
    return response()->json('200');
});

Route::middleware('auth:api')->post('/save_img_chat', function (Request $request) {
    $data = $request->json()->all();
    $user = $request->user();
    $image = $data['image']; // your base64 encoded
    $image = str_replace('data:image/jpeg;base64,', '', $image);
    $image = str_replace(' ', '+', $image);
    $imageName = str_random(10) . '.' . 'png';
    //  \File::put(public_path(). 'imgchat/' . $imageName, base64_decode($image));
    file_put_contents('imgchat/' . $imageName, base64_decode($image));

    return response()->json([
        'url' => 'https://111loves.com/imgchat/' . $imageName,
        'name_img' => $imageName,
    ]);
});

Route::middleware('auth:api')->post('/listkmhr', function (Request $request) {
    $data = $request->json()->all();
    $user = $request->user();
    $json = DB::table('ngg_km_category_detail')
        ->leftJoin('ngg_km_img_category_detail', 'ngg_km_category_detail.id', 'ngg_km_img_category_detail.id_km_detail')
        ->where('km_hr', $data['type'])
        ->select('id', 'km_title', 'km_remark', 'km_name_img', 'created_at')
        ->get();
    return response()->json($json);
});

Route::middleware('auth:api')->post('/listkmhr', function (Request $request) {
    $data = $request->json()->all();
    $user = $request->user();
    $json = DB::table('ngg_km_category_detail')
        ->leftJoin('ngg_km_img_category_detail', 'ngg_km_category_detail.id', 'ngg_km_img_category_detail.id_km_detail')
        ->where('km_hr', $data['type'])
        ->select('id', 'km_title', 'km_remark', 'km_name_img', 'created_at')
        ->get();
    return response()->json($json);
});

Route::middleware('auth:api')->post('/listkmhrdetail', function (Request $request) {
    $data = $request->json()->all();
    $user = $request->user();
    $json = DB::table('ngg_km_category_detail')
        ->leftJoin('ngg_km_img_category_detail', 'ngg_km_category_detail.id', 'ngg_km_img_category_detail.id_km_detail')
        ->where('id', $data['type'])
        ->select('id', 'km_title', 'km_remark', 'km_name_img', 'created_at', 'km_important')
        ->first();
    return response()->json($json);
});

Route::middleware('auth:api')->post('/save_img_profile', function (Request $request) {
    $data = $request->json()->all();
    $user = $request->user();
    $get = DB::table('users_detail')
    ->where('code_staff', $user->username)
    ->first();
    $image_path = public_path() . '/img/' . $get->img;
   // unlink($image_path);
    $image = $data['image']; // your base64 encoded
    $image = str_replace('data:image/jpeg;base64,', '', $image);
    $image = str_replace(' ', '+', $image);
    $imageName = str_random(10) . '.' . 'jpg';
    //  \File::put(public_path(). 'imgchat/' . $imageName, base64_decode($image));
    file_put_contents('img/' . $imageName, base64_decode($image));
    DB::table('users_detail')
    ->where('code_staff', $user->username)
    ->update([
        'img'=>$imageName
    ]);
    return response()->json('200');
});

Route::middleware('auth:api')->post('/role_com', function (Request $request) {
    $data = $request->json()->all();
    $user = $request->user();

    $json = DB::table('ngg_role_company')
        ->where('code_staff', $user->username)
        ->where('role_name', $data['type'])
        ->count();
    $company_s = DB::table('users_detail')
        ->where('Code_Staff', $user->username)
        ->select('Company')
        ->first();
    $company = DB::table('users_detail')
        ->whereNotIn('Company', [$company_s->Company])
        ->select('Company')
        ->get();

    $a = array();

    foreach ($company as $i) {

        array_push($a, $i->Company);
    }
    $brand_r = array_unique($a);
    $array = $a;
    $unique = array();
    foreach ($array as $v) {
        isset($k[$v]) || ($k[$v] = 1) && $unique[] = $v;
    }

    if ($json > 0) {
        return response()->json([
            'company' => $unique,
            'status' => 'Y',

        ]);
    } else {
        return response()->json([

            'status' => 'N',

        ]);
    }

});

Route::middleware('auth:api')->post('/get_em_company', function (Request $request) {
    $data = $request->json()->all();
    $user = $request->user();

    $company_em = DB::table('users_detail')
        ->Where('Name_Thai', 'LIKE', '%' . $data['name'] . '%')
        ->where('Company', $data['type'])
        ->get();

        return response()->json($company_em);

});


Route::middleware('auth:api')->get('/balancevalue', function (Request $request) {
    $data = $request->json()->all();
    $user = $request->user();

    $ngg_card_wallet = DB::table('ngg_card_wallet')
        ->where('EmpCode', $user->username)
        ->first();

        return response()->json($ngg_card_wallet);

});



Route::middleware('auth:api')->get('/history_last_add', function (Request $request) {
    $data = $request->json()->all();
    $user = $request->user();

    $history_last = DB::table('ngg_card_wallet_add')
        ->join('ngg_card_wallet','ngg_card_wallet_add.cardNo','ngg_card_wallet.CardNo')
        ->where('EmpCode', $user->username)
        ->select('moveMoney','docDate','docTime')
        ->orderByDesc('id_wallet_add')
        ->take(5)
        ->get();

        return response()->json($history_last);

});


Route::middleware('auth:api')->get('/history_last_pay', function (Request $request) {
    $data = $request->json()->all();
    $user = $request->user();

    $history_last = DB::table('ngg_card_wallet_use')
        ->join('ngg_card_wallet','ngg_card_wallet_use.cardNo','ngg_card_wallet.CardNo')
        ->where('EmpCode', $user->username)
        ->select('grandTotal','itemDesc','docDate','docTime')
        ->orderByDesc('id_use')
        ->take(5)
        ->get();

        return response()->json($history_last);

});


Route::middleware('auth:api')->get('/history_add', function (Request $request) {
    $data = $request->json()->all();
    $user = $request->user();

    $history_last = DB::table('ngg_card_wallet_add')
        ->join('ngg_card_wallet','ngg_card_wallet_add.cardNo','ngg_card_wallet.CardNo')
        ->where('EmpCode', $user->username)
        ->orderByDesc('id_wallet_add')
        ->select('moveMoney','docDate','docTime')
        ->take(50)
        ->get();

        return response()->json($history_last);

});




Route::middleware('auth:api')->get('/history_pay', function (Request $request) {
    $data = $request->json()->all();
    $user = $request->user();

    $history_last = DB::table('ngg_card_wallet_use')
        ->join('ngg_card_wallet','ngg_card_wallet_use.cardNo','ngg_card_wallet.CardNo')
        ->where('EmpCode', $user->username)
        ->select('grandTotal','itemDesc','docDate','docTime')
        ->take(50)
        ->orderByDesc('id_use')
        ->get();

        return response()->json($history_last);

});


Route::middleware('auth:api')->get('/get_noti_wallet', function (Request $request) {
    $data = $request->json()->all();
    $user = $request->user();

    $count_noti = DB::table('ngg_card_wallet')
        ->where('EmpCode', $user->username)
        ->select('count_noti')
        ->first();

        return response()->json($count_noti);

});


Route::middleware('auth:api')->get('/rm_noti_wallet', function (Request $request) {
    $data = $request->json()->all();
    $user = $request->user();

    $count_noti = DB::table('ngg_card_wallet')
        ->where('EmpCode', $user->username)
        ->update(['count_noti' => '0'
        ]);


        return response()->json(['count_noti'=>0]);

});


Route::post('register', 'Api\RegisterController@register');
