<?php
use  App\VideoStream\VideoStream;
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



Route::get('/clear-cache', function() {
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

Route::post('allposts_listnew', 'HomeController@allposts_listnew' )->name('allposts_listnew');

Route::post('allposts_category', 'HomeController@allposts_category' )->name('allposts_category');

Route::post('allposts_LibaryImg', 'HomeController@allposts_LibaryImg' )->name('allposts_LibaryImg');

Route::post('allposts_KM360', 'HomeController@allposts_KM360' )->name('allposts_KM360');

Route::post('allposts_List_KM360', 'HomeController@allposts_List_KM360' )->name('allposts_List_KM360');






