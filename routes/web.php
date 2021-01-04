<?php
use App\Classes\PushBots;
use Illuminate\Support\Facades\DB;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
 */

Route::get('/', function () {
//dd(bcrypt('nggfood1234'));
    return view('welcome');
});

Route::get('/update', function () {

    $data = DB::table('ngg_breakpoint_users_detail')->get();

    foreach ($data as $item) {
        DB::table('users_detail')
            ->where('Card_Staff', $item->Card_Staff)
            ->update([
                'Company' => $item->Company,
            ]);

    }

    return "succexx";

});

Route::get('/msg', function () {

    $pb = new PushBots();
// Application ID
    $appID = '5ed3e6512c9f8c1f8d3ed9c4';
// Application Secret
    $appSecret = '9c3810d0b45d67931317c6a67343471b';

    $pb->App($appID, $appSecret);
    $pb->Platform(array("0", "1"));
    $pb->Alias("51248");
// Notification Settings
    $pb->Alert("test");
    $i = $pb->Push();
    return "success";
});

Route::get('/clear-cache', function () {
    Artisan::call('cache:clear');
    return "Cache is cleared";
});



Auth::routes();

Route::post('/nidpay', 'NidPayController@pay')->name('nidpay');

Route::post('/addwallet', 'NidPayController@addwallet')->name('addwallet');

Route::get('/home', 'HomeController@index')->name('home');

Route::get('/settingstaff', 'HomeController@settingstaff')->name('settingstaff');

Route::get('/settingstaff', 'HomeController@settingstaff')->name('settingstaff');

Route::get('/settingrole', 'HomeController@settingrole')->name('settingrole');

Route::get('/settinnew', 'HomeController@settinnew')->name('settinnew');

Route::get('/addnew_head', 'HomeController@addnew_head')->name('addnew_head');

Route::get('/addnew_list', 'HomeController@addnew_list')->name('addnew_list');

Route::post('/enable_banner', 'HomeController@enable_banner')->name('enable_banner');

Route::post('/editnew_head_save/{id}', 'HomeController@editnew_head_save')->name('editnew_head_save');

Route::post('/editnew_list_save/{id}', 'HomeController@editnew_list_save')->name('editnew_list_save');

Route::get('/editnewhead/{id}', 'HomeController@editnewhead')->name('editnewhead');

Route::get('/editnew/{id}', 'HomeController@editnew')->name('editnew');

Route::get('/addnew_libary_img', 'HomeController@addnew_libary_img')->name('addnew_libary_img');

Route::post('/add_img', 'HomeController@add_img')->name('add_img');

Route::post('/delete_libary_img', 'HomeController@delete_libary_img')->name('delete_libary_img');

Route::post('/addnew_head_save', 'HomeController@addnew_save')->name('addnew');

Route::post('/addnew_list_save', 'HomeController@addnew_list_save')->name('addnew_list_save');

Route::post('/delete_new_head', 'HomeController@delete_new_head')->name('delete_new_head');

Route::post('/delete_new_list', 'HomeController@delete_new_list')->name('delete_new_list');

Route::get('/getemployee', 'UnitController@get_name')->name('getemployee');

Route::get('/get_position', 'UnitController@get_position')->name('get_position');

Route::get('/get_department', 'UnitController@get_department')->name('get_department');

Route::get('/add_user', 'UnitController@add_user')->name('add_user');

Route::get('/add_role', 'UnitController@add_role')->name('add_role');

Route::get('/km360', 'HomeController@index_km360_set')->name('index_km360_set');

Route::get('/addnew_km_category', 'HomeController@addnew_km_category')->name('addnew_km_category');

Route::get('/editkmhead/{id}', 'HomeController@editkmhead')->name('editkmhead');

Route::post('/addnew_head_km_category', 'HomeController@addnew_head_km_category')->name('addnew_head_km_category');

Route::post('/editnew_head_km_category/{id}', 'HomeController@editnew_head_km_category')->name('editnew_head_km_category');

Route::post('/delete_km_category', 'HomeController@delete_km_category')->name('delete_km_category');

Route::get('/addnew_km_category_detail', 'HomeController@addnew_km_category_detail')->name('addnew_km_category_detail');

Route::post('/addnew_detail_km_category', 'HomeController@addnew_detail_km_category')->name('addnew_detail_km_category');

Route::get('/editkmcategory/{id}', 'HomeController@editkmcategory')->name('editkmcategory');

Route::post('/editnew_detail_km_category/{id}', 'HomeController@editnew_detail_km_category')->name('editnew_detail_km_category');

Route::post('/delete_km_category_detail', 'HomeController@delete_km_category_detail')->name('delete_km_category_detail');

Route::post('allposts_listnew', 'HomeController@allposts_listnew')->name('allposts_listnew');

Route::post('allposts_category', 'HomeController@allposts_category')->name('allposts_category');

Route::post('allposts_LibaryImg', 'HomeController@allposts_LibaryImg')->name('allposts_LibaryImg');

Route::post('allposts_KM360', 'HomeController@allposts_KM360')->name('allposts_KM360');

Route::post('allposts_List_KM360', 'HomeController@allposts_List_KM360')->name('allposts_List_KM360');

Route::resource('setuser', 'BreakpointUserController');

Route::post('get_data_breakpoint', 'BreakpointUserController@get_data')->name('get_data');

Route::post('get_data_ok', 'BreakpointUserController@get_data_ok')->name('get_data_ok');

Route::post('delete_new_username', 'BreakpointUserController@delete_new_username')->name('delete_new_username');

Route::post('en_username', 'BreakpointUserController@en_username')->name('en_username');

Route::get('index_chat', 'ChatController@index')->name('index');

Route::get('history_chat_last', 'ChatController@history_chat_last')->name('history_chat_last');

Route::get('room/{id}', 'ChatController@room')->name('room');

Route::get('/addnew_libary_img_add', 'HomeController@addnew_libary_img_add')->name('addnew_libary_img_add');

Route::post('/add_img_add', 'HomeController@add_img_add')->name('add_img_add');

Route::post('/addnew_video', 'HomeController@addnew_video')->name('addnew_video');

Route::get('/addnew_libary_video', 'HomeController@addnew_libary_video')->name('addnew_libary_video');

Route::post('/allposts_video', 'HomeController@allposts_video')->name('allposts_video');

Route::post('/delete_new_video', 'HomeController@delete_new_video')->name('delete_new_video');

Route::get('addnew_libary_video_new', 'HomeController@addnew_libary_video_new')->name('addnew_libary_video_new');

Route::post('save_setbanner', 'HomeController@save_setbanner')->name('save_setbanner');

Route::post('save_uername', 'BreakpointUserController@save_uername')->name('save_uername');

Route::get('get_uername', 'BreakpointUserController@get_uername')->name('get_uername');

Route::post('importDataUser', 'BreakpointUserController@importDataUser')->name('importDataUser');

Route::post('/get_data_username_6090', 'Evaluate6090Controller@get_data_user_6090')->name('get_data_username_6090');

Route::get('/index_evaluate', 'Evaluate6090Controller@index_evaluate')->name('index_evaluate');

Route::post('/save_datasetevalu6090', 'Evaluate6090Controller@save_datasetevalu6090')->name('save_datasetevalu6090');

Route::post('/get_data_userset_6090', 'Evaluate6090Controller@get_data_userset_6090')->name('get_data_userset_6090');

Route::post('/delete_userset_6090', 'Evaluate6090Controller@delete_userset_6090')->name('delete_userset_6090');

Route::get('/index_userassessor/{id}', 'Evaluate6090Controller@index_userassessor')->name('index_userassessor');

Route::get('/index_option/{assessor}/{assessed}', 'Evaluate6090Controller@index_option')->name('index_option');

Route::post('/save_select', 'Evaluate6090Controller@save_select')->name('save_select');

Route::post('/save_evar6090', 'Evaluate6090Controller@save_evar6090')->name('save_evar6090');

Route::post('/save_eva90', 'Evaluate6090Controller@save_eva90')->name('save_eva90');

Route::post('/enable90', 'Evaluate6090Controller@enable90')->name('enable90');

Route::get('/evaluation/{code_staff}/{degree}', 'PDFController@evaluation')->name('evaluation');

Route::post('/kpi_manual', 'Evaluate6090Controller@kpi_manual')->name('kpi_manual');

Route::post('/nidpayupdateacc', 'NidPayController@nidpayupdateacc')->name('nidpayupdateacc');

Route::get('/evaluationman/{code_staff}/{degree}', 'PDFController@evaluationman')->name('evaluationman');

Route::get('/nidpayreport', 'NidPayController@nidpayreport')->name('nidpayreport');

Route::post('/nidpayreportpost', 'NidPayController@nidpayreportpost')->name('nidpayreportpost');

Route::post('/resetpassword', 'Api\RegisterController@resetpassword')->name('resetpassword');

Route::post('/set6090manual', 'Evaluate6090Controller@set6090manual')->name('set60manual');

Route::get('file-upload', 'FileController@index');

Route::post('file-upload/upload', 'FileController@upload')->name('upload');

Route::get('/demo', function () {

    $month = array(
        '1'=>'มกราคม',
        '2'=>'กุมภาพันธ์',
        '3'=>'มีนาคม',
        '4'=>'เมษายน',
        '5'=>'พฤษภาคม',
        '6'=>'พฤษภาคม',
        '7'=>'กรกฎาคม',
        '8'=>'สิงหาคม',
        '9'=>'กันยายน',
        '10'=>'ตุลาคม',
        '11'=>'พฤศจิกายน',
        '12'=>'ธันวาคม'

    );
    $data_kpi_info = DB::connection('mysql2')->table('KPI_New_Kpi_User_Team')
    ->leftJoin('KPI_Month_User','KPI_New_Kpi_User_Team.id_uut','KPI_Month_User.id_npd_department')
    ->where('id_user','91515')
    ->where('kpi_name_uut','Sale Target')
    ->where('year_mont',date('Y'))
    ->where('namet_month',$month[date('m')])
    ->first();



    $data_kpi_team = DB::connection('mysql2')->table('KPI_New_Kpi_Team')
    ->leftJoin('KPI_Month_Team','KPI_New_Kpi_Team.id_kpt','KPI_Month_Team.id_npd_department')
    ->where('id_det_departmaent_team',$data_kpi_info->id_put_user_team)
    ->where('year_mont',date('Y'))
    ->where('namet_month',$month[date('m')])
    ->sum('sum_success');
    
    $dat = DB::connection('mysql2')->table('KPI_New_Kpi_Team')
    ->leftJoin('KPI_Month_Team','KPI_New_Kpi_Team.id_kpt','KPI_Month_Team.id_npd_department')
    ->where('id_det_departmaent_team',$data_kpi_info->id_put_user_team)
    ->where('year_mont',date('Y'))
    ->where('namet_month',$month[date('m')])
    ->get();
    dd($dat);
 
  
    $sub = number_format( $data_kpi_team , 2 );
    $per = $data_kpi_team /100;

   $data  = array(
       'sum' => $sub,
       'per' => (double)number_format($per,2),
      
      
   );
    return response()->json($data);



});


Route::post('/deletevideo', 'FileController@deletevideo')->name('deletevideo');



Route::get('/timesendurl', function () {

    $list_noti = array();
    $setmeg_noti = DB::table('ngg_key_notification')
    ->where('login_status', '1')
    ->where('code_staff','94018')
    ->get();


    foreach ($setmeg_noti as $item) {
        array_push($list_noti, $item->player_id);

    }
    $heading = array(
        "en" => "ขอบคุณสำหรับการประเมิน  90  วัน ",
    );

    $content = array(
        "en" => "ระบบจะแจ้งเตือนอีกครั้งเมื่อถึงครั้งประเมินต่อไปค่ะ",
    );

    $fields = array(
        'app_id' => "16adf426-0420-49fa-b189-d71af438789a",
        'include_player_ids' => $list_noti,
        'ios_badgeType'=> "SetTo",
        'ios_badgeCount'=> 1,
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

});



Route::group(['middleware' => ['role_or_permission:edit kpi']], function () {
    Route::get('/ttt',function() {
  
  
         return response()->json('nj');
     });
  });



  

