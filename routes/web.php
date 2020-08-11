<?php
use App\Classes\PushBots;
use Illuminate\Support\Facades\DB;
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
