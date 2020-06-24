<?php

namespace App\Http\Controllers;

use Cloudder;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Session;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $listmenu = DB::table('user_role')
            ->leftJoin('menu_master', 'user_role.name_menu_id', '=', 'menu_master.id')
            ->where('username_id', Auth::user()->username)
            ->get();
        $data = array(
            'listmenu' => $listmenu,
        );
        return view('home', $data);
    }

    public function settingstaff()
    {
        $listmenu = DB::table('user_role')
            ->leftJoin('menu_master', 'user_role.name_menu_id', '=', 'menu_master.id')
            ->where('username_id', Auth::user()->username)
            ->get();
        $data = array(
            'listmenu' => $listmenu,
        );
        return view('home', $data);
    }

    public function settinnew()
    {
        $listmenu = DB::table('user_role')
            ->leftJoin('menu_master', 'user_role.name_menu_id', '=', 'menu_master.id')
            ->where('username_id', Auth::user()->username)
            ->get();

        $data = array(
            'listmenu' => $listmenu,

        );
        return view('new.index_new', $data);
    }

    public function addnew_head()
    {
        $listmenu = DB::table('user_role')
            ->leftJoin('menu_master', 'user_role.name_menu_id', '=', 'menu_master.id')
            ->where('username_id', Auth::user()->username)
            ->get();
        $data = array(
            'listmenu' => $listmenu,
        );
        return view('new.add_new_head', $data);
    }
    public function addnew_save(Request $request)
    {

        if ($request->file('image')) {
            $file = $request->file('image');
            $extension = $file->getClientOriginalExtension();
            $filename = time() . '.' . $extension;
            DB::table('advertise_heade')->insert([
                ['img' => $filename,
                    'name_adver' => $request->new_head,
                    'name_thai' => $request->new_head_thai,
                ],

            ]);

            $file->move(public_path() . '/imgnew', $filename);
        }
        Session::flash('flash_message', 'บันทึกเรียบร้อย!! ');
        return redirect('settinnew');
    }

    public function addnew_list_save(Request $request)
    {

        /*  $i = 0; */
        if ($request->file('image_') && $request->file('image') != " ") {
            $image_2 = $request->image_info;
            list($type, $image_2) = explode(';', $image_2);
            list(, $image_2) = explode(',', $image_2);
            $image_2 = base64_decode($image_2);
            $image_name_2 = 'info' . time() . '.png';

            DB::table('advertise')->insert([
                'img_ad' => $image_name_2,
                'type_id' => $request->type_id,
                'subject' => $request->subject,
                'explain' => $request->explain,
                'mc' => $request->micocat,
            ]);
            file_put_contents('imgnew/' . $image_name_2, $image_2);
            $id_ad = DB::table('advertise')->Where('subject', $request->subject)->first();

            if ($request->get_banner == 1) {
                $i = 1;
            } else {
                $i = 0;
            }

            $image_3 = $request->imagebanner;
            list($type, $image_3) = explode(';', $image_3);
            list(, $image_3) = explode(',', $image_3);
            $image_3 = base64_decode($image_3);
            $image_name_3 = 'banner' . time() . '.png';

            DB::table('ngg_banner')->insert([
                'advertise_id' => $id_ad->id_ad,
                'img_banner' => $image_name_3,
                'active_banner' => $i,

            ]);
            file_put_contents('imgnew/' . $image_name_3, $image_3);
        }

        Session::flash('flash_message', 'บันทึกเรียบร้อย!! ');
        return redirect('settinnew');

    }

    public function addnew_list()
    {

        $listmenu = DB::table('user_role')
            ->leftJoin('menu_master', 'user_role.name_menu_id', '=', 'menu_master.id')
            ->where('username_id', Auth::user()->username)
            ->get();
        $advertise_heade = DB::table('advertise_heade')->get();

        $data = array(
            'listmenu' => $listmenu,
            'advertise_heade' => $advertise_heade,
        );
        return view('new.add_new', $data);

    }

    public function delete_new_head(Request $request)
    {

        DB::table('advertise_heade')->where('id', $request->id)->delete();
        Session::flash('flash_message', 'ลบเรียบร้อย!!');
        return redirect('settinnew');

    }

    public function delete_new_list(Request $request)
    {

        DB::table('advertise')->where('id_ad', $request->id)->delete();
        DB::table('ngg_banner')->where('advertise_id', $request->id)->delete();
        DB::table('ngg_img_group_advertise')->where('advertise_id_img', $request->id)->delete();
        Session::flash('flash_message', 'ลบเรียบร้อย!!');
        return redirect('settinnew');

    }

    public function enable_banner(Request $request)
    {

        $data = DB::table('ngg_banner')->where('advertise_id', $request->id)->first();

        if ($data->active_banner == 1) {
            DB::table('ngg_banner')
                ->where('advertise_id', $request->id)
                ->update([
                    'active_banner' => "0",
                ]);
        } else {
            DB::table('ngg_banner')
                ->where('advertise_id', $request->id)
                ->update([
                    'active_banner' => "1",
                ]);
        }

        Session::flash('flash_message', 'เปิดเรียบร้อย!!');
        return redirect('settinnew');

    }

    public function editnewhead($id)
    {
        $listmenu = DB::table('user_role')
            ->leftJoin('menu_master', 'user_role.name_menu_id', '=', 'menu_master.id')
            ->where('username_id', Auth::user()->username)
            ->get();
        $advertise_heade = DB::table('advertise_heade')
            ->where('id', $id)
            ->first();

        $data = array(
            'listmenu' => $listmenu,
            'advertise_heade' => $advertise_heade,
        );

        return view('new.edit_new_head', $data);
    }

    public function editnew($id)
    {

        $listmenu = DB::table('user_role')
            ->leftJoin('menu_master', 'user_role.name_menu_id', '=', 'menu_master.id')
            ->where('username_id', Auth::user()->username)
            ->get();
        $advertise_heade = DB::table('advertise_heade')->get();
        $ngg_banner = DB::table('ngg_banner')
            ->where('advertise_id', $id)
            ->first();
        $advertise = DB::table('advertise_heade')
            ->join('advertise', 'advertise_heade.id', 'advertise.type_id')
            ->join('ngg_banner', 'advertise.id_ad', 'ngg_banner.advertise_id')
            ->where('id_ad', $id)
            ->first();

        $data = array(
            'listmenu' => $listmenu,
            'advertise_heade' => $advertise_heade,
            'advertise' => $advertise,
            'ngg_banner' => $ngg_banner,
        );

        return view('new.edit_new', $data);

    }

    public function editnew_head_save(Request $request, $id)
    {

        if ($request->file('image')) {
            $file = $request->file('image');
            DB::table('advertise_heade')
                ->where('id', $id)
                ->update(
                    ['img' => $file->getClientOriginalName()
                        , 'name_adver' => $request->new_head,
                    ]

                );

            $file->move(public_path() . '/imgnew', $file->getClientOriginalName());
        }
        Session::flash('flash_message', 'บันทึกเรียบร้อย!! ');
        return redirect('settinnew');

    }

    public function editnew_list_save(Request $request, $id)
    {

        dd($request->file('image_'));
        if ($request->file('image_') != null) {
            $image_2 = $request->image_info;
            list($type, $image_2) = explode(';', $image_2);
            list(, $image_2) = explode(',', $image_2);
            $image_2 = base64_decode($image_2);
            $image_name_2 = 'info' . time() . '.png';

            DB::table('advertise')
                ->where('id_ad', $id)
                ->update([
                    'type_id' => $request->type_id,
                    'img_ad' => $image_name_2,
                    'subject' => $request->subject,
                    'explain' => $request->explain,
                    'mc' => $request->micocat,
                ]);

            file_put_contents('imgnew/' . $image_name_2, $image_2);

        } else {

            DB::table('advertise')
                ->where('id_ad', $id)
                ->update([
                    'type_id' => $request->type_id,
                    'subject' => $request->subject,
                    'explain' => $request->explain,
                    'mc' => $request->micocat,
                ]);

        }

        if ($request->file('image') != null) {

            $image_3 = $request->imagebanner;
            list($type, $image_3) = explode(';', $image_3);
            list(, $image_3) = explode(',', $image_3);
            $image_3 = base64_decode($image_3);
            $image_name_3 = 'banner' . time() . '.png';
            if ($request->get_banner == 1) {
                $i = 1;
            } else {
                $i = 0;
            }

            DB::table('ngg_banner')
                ->where('advertise_id', $id)
                ->update([
                    'advertise_id' => $id,
                    'img_banner' => $image_name_3,
                    'active_banner' => $i,

                ]);
            file_put_contents('imgnew/' . $image_name_3, $image_3);
        } else {

            if ($request->get_banner == 1) {
                $i = 1;
            } else {
                $i = 0;
            }
            DB::table('ngg_banner')
                ->where('advertise_id', $id)
                ->update([
                    'advertise_id' => $id,
                    'active_banner' => $i,

                ]);
        }

        Session::flash('flash_message', 'บันทึกเรียบร้อย!! ');
        return redirect('settinnew');
    }

    public function index_km360_set()
    {

        $listmenu = DB::table('user_role')
            ->leftJoin('menu_master', 'user_role.name_menu_id', '=', 'menu_master.id')
            ->where('username_id', Auth::user()->username)
            ->get();
        $km = DB::table('ngg_km_category')->get();

        $kmdetail = DB::table('ngg_km_category_detail')
            ->leftJoin('ngg_km_category', 'ngg_km_category_detail.id_km_cat', 'ngg_km_category.id_km_cat')
            ->get();

        $data = array(
            'listmenu' => $listmenu,
            'km' => $km,
            'kmdetail' => $kmdetail,

        );

        return view('km360/index_km360_set', $data);
    }

    public function addnew_km_category()
    {

        $listmenu = DB::table('user_role')
            ->leftJoin('menu_master', 'user_role.name_menu_id', '=', 'menu_master.id')
            ->where('username_id', Auth::user()->username)
            ->get();
        $data = array(
            'listmenu' => $listmenu,

        );

        return view('/km360/addnew_km_category', $data);
    }

    public function addnew_head_km_category(Request $request)
    {

        if ($request->file('image')) {

            $file = $request->file('image');
            $imageName = time() . '.' . $file->getClientOriginalExtension();
            DB::table('ngg_km_category')->insert([
                [

                    'img' => $imageName,
                    'name_category_eng' => $request->name_category_eng,
                    'name_category_thai' => $request->name_category_thai,
                ],

            ]);

            $file->move(public_path() . '/imgnew', $imageName);
        }

        Session::flash('flash_message', 'บันทึกเรียบร้อย!! ');
        return redirect('km360');
    }

    public function editkmhead($id)
    {

        $listmenu = DB::table('user_role')
            ->leftJoin('menu_master', 'user_role.name_menu_id', '=', 'menu_master.id')
            ->where('username_id', Auth::user()->username)
            ->get();

        $km = DB::table('ngg_km_category')
            ->where('id_km_cat', $id)
            ->first();

        $data = array(
            'listmenu' => $listmenu,
            'km' => $km,

        );

        return view('/km360/editkmhead', $data);

    }

    public function editnew_head_km_category(Request $request, $id)
    {
        if ($request->file('image')) {
            $file = $request->file('image');
            $imageName = time() . '.' . $file->getClientOriginalExtension();
            DB::table('ngg_km_category')
                ->where('id_km_cat', $id)
                ->update([

                    'img' => $imageName,
                    'name_category_eng' => $request->name_category_eng,
                    'name_category_thai' => $request->name_category_thai,

                ]);

            $file->move(public_path() . '/imgnew', $imageName);
        }

        Session::flash('flash_message', 'บันทึกเรียบร้อย!! ');
        return redirect('km360');

    }

    public function delete_km_category(Request $request)
    {

        DB::table('ngg_km_category')->where('id_km_cat', $request->id)->delete();
        Session::flash('flash_message', 'ลบเรียบร้อย!!');
        return redirect('km360');

    }

    public function addnew_km_category_detail()
    {

        $listmenu = DB::table('user_role')
            ->leftJoin('menu_master', 'user_role.name_menu_id', '=', 'menu_master.id')
            ->where('username_id', Auth::user()->username)
            ->get();
        $km = DB::table('ngg_km_category')->get();

        $data = array(
            'listmenu' => $listmenu,
            'km' => $km,

        );

        return view('/km360/addnew_km_category_detail', $data);

    }

    public function addnew_detail_km_category(request $request)
    {

        $i = 0;
        if ($request->file('image')) {

            DB::table('ngg_km_category_detail')->insert([
                'id_km_cat' => $request->type_id,
                'km_title' => $request->km_title,
                'km_important' => $request->km_important,

            ]);

            $file = $request->file('image');
            $id_ad = DB::table('ngg_km_category_detail')->Where('km_title', $request->km_title)->first();
            foreach ($file as $files) {
                $i++;
                DB::table('ngg_km_img_category_detail')->insert([
                    'id_km_detail' => $id_ad->id,
                    'km_name_img' => $files->getClientOriginalName(),
                    'km_count' => $i,
                ]);
                $files->move(public_path() . '/imgnew', $files->getClientOriginalName());
            }

        }
        Session::flash('flash_message', 'บันทึกเรียบร้อย!! ');
        return redirect('km360');
    }

    public function editkmcategory($id)
    {

        $listmenu = DB::table('user_role')
            ->leftJoin('menu_master', 'user_role.name_menu_id', '=', 'menu_master.id')
            ->where('username_id', Auth::user()->username)
            ->get();
        $km = DB::table('ngg_km_category')->get();
        $category = DB::table('ngg_km_category_detail')
            ->leftJoin('ngg_km_category', 'ngg_km_category_detail.id_km_cat', 'ngg_km_category.id_km_cat')
            ->where('id', $id)
            ->first();

        $data = array(
            'listmenu' => $listmenu,
            'km' => $km,
            'category' => $category,

        );

        return view('/km360/editkmcategory', $data);
    }

    public function editnew_detail_km_category(request $request, $id)
    {
        $i = 0;
        if ($request->file('image')) {

            DB::table('ngg_km_category_detail')
                ->where('id', $id)
                ->update([
                    'id_km_cat' => $request->type_id,
                    'km_title' => $request->km_title,
                    'km_important' => $request->km_important,

                ]);

            $file = $request->file('image');
            foreach ($file as $files) {
                $i++;
                DB::table('ngg_km_img_category_detail')
                    ->where('id_km_detail', $id)
                    ->where('km_count', $i)
                    ->update([
                        'id_km_detail' => $id,
                        'km_name_img' => $files->getClientOriginalName(),
                        'km_count' => $i,
                    ]);
                $files->move(public_path() . '/imgnew', $files->getClientOriginalName());
            }

        } else {
            DB::table('ngg_km_category_detail')
                ->where('id', $id)
                ->update([
                    'id_km_cat' => $request->type_id,
                    'km_title' => $request->km_title,
                    'km_important' => $request->km_important,

                ]);

        }
        Session::flash('flash_message', 'บันทึกเรียบร้อย!!');

        return redirect('km360');

    }

    public function delete_km_category_detail(request $request)
    {

        DB::table('ngg_km_category_detail')->where('id', $request->id)->delete();
        DB::table('ngg_km_img_category_detail')->where('id_km_detail', $request->id)->delete();
        Session::flash('flash_message', 'บันทึกเรียบร้อย!! ');
        return redirect('km360');

    }

    public function addnew_libary_img()
    {

        $listmenu = DB::table('user_role')
            ->leftJoin('menu_master', 'user_role.name_menu_id', '=', 'menu_master.id')
            ->where('username_id', Auth::user()->username)
            ->get();

        $data = array(
            'listmenu' => $listmenu,

        );

        return view('/libary_img/add', $data);

    }

    public function addnew_libary_img_add()
    {

        $listmenu = DB::table('user_role')
            ->leftJoin('menu_master', 'user_role.name_menu_id', '=', 'menu_master.id')
            ->where('username_id', Auth::user()->username)
            ->get();

        $data = array(
            'listmenu' => $listmenu,

        );

        return view('/libary_img/add_add_new', $data);

    }

    public function add_img(request $request)
    {
        $files = $request->file('name_img');
        $imageName = time() . '.' . $files->getClientOriginalExtension();
        DB::table('ngg_libary_img')
            ->insert([
                'name_img' => $imageName,
                'name_part' => 'http://' . $_SERVER['HTTP_HOST'] . '/imgnew/' . $imageName,
            ]);
        $files->move(public_path() . '/imgnew', $imageName);
        return redirect('settinnew');
    }

    public function add_img_add(request $request)
    {
        $files = $request->file('name_img');
        $imageName = time() . '.' . $files->getClientOriginalExtension();
        DB::table('ngg_libary_img')
            ->insert([
                'name_img' => $imageName,
                'name_part' => 'http://' . $_SERVER['HTTP_HOST'] . '/imgnew/' . $imageName,
            ]);
        $files->move(public_path() . '/imgnew', $imageName);
        return redirect('addnew_list');
    }

    public function delete_libary_img(request $request)
    {
        $img = DB::table('ngg_libary_img')
            ->where('id_img', $request->id)
            ->first();

        $image_path = public_path() . '/imgnew/' . $img->name_img;
        unlink($image_path);

        DB::table('ngg_libary_img')
            ->where('id_img', $request->id)
            ->delete();

        return redirect('settinnew');
    }

    public function allposts_listnew(request $request)
    {
        $columns = array(
            0 => 'id',
            1 => 'name_adver',
            2 => 'active_banner',
            3 => 'id',

        );

        $totalData = DB::table('advertise_heade')
            ->join('advertise', 'advertise_heade.id', 'advertise.type_id')
            ->join('ngg_banner', 'advertise.id_ad', 'ngg_banner.advertise_id')
            ->count();
        $totalFiltered = $totalData;
        $limit = $request->input('length');
        $start = $request->input('start');
        $order = $columns[$request->input('order.0.column')];
        $dir = $request->input('order.0.dir');

        if (empty($request->input('search.value'))) {

            $posts = DB::table('advertise_heade')
                ->join('advertise', 'advertise_heade.id', 'advertise.type_id')
                ->join('ngg_banner', 'advertise.id_ad', 'ngg_banner.advertise_id')
                ->offset($start)
                ->limit($limit)
                ->orderBy($order, $dir)
                ->get();

        } else {

            $search = $request->input('search.value');
            $posts = DB::table('advertise_heade')
                ->join('advertise', 'advertise_heade.id', 'advertise.type_id')
                ->join('ngg_banner', 'advertise.id_ad', 'ngg_banner.advertise_id')
                ->where('id', 'LIKE', "%{$search}%")
                ->orWhere('subject', 'LIKE', "%{$search}%")
                ->offset($start)
                ->limit($limit)
                ->orderBy($order, $dir)
                ->get();

            $totalFiltered = DB::table('advertise_heade')
                ->join('advertise', 'advertise_heade.id', 'advertise.type_id')
                ->join('ngg_banner', 'advertise.id_ad', 'ngg_banner.advertise_id')
                ->where('id', 'LIKE', "%{$search}%")
                ->orWhere('subject', 'LIKE', "%{$search}%")
                ->count();

        }

        $data = array();
        if (!empty($posts)) {
            foreach ($posts as $post) {
                $edit = route('editnew', $post->id_ad);

                $nestedData['id'] = $post->id_ad;
                $nestedData['name_adver'] = $post->name_adver;
                $nestedData['subject'] = $post->subject;
                $nestedData['active_banner'] = $post->active_banner;
                $nestedData['options'] = "&emsp;<a href='{$edit}' class='btn btn-warning btn-circle btn-xs'>แก้ไข</a>
                          &emsp;<a href='javascript:void(0)' class='btn btn-info btn-circle btn-xs  ShoweBanner'  data-id='{$post->id_ad}'   >แสดง Banner</a>
                          &emsp;<a href='javascript:void(0)' class='btn btn-danger btn-circle btn-xs  DeleteListNew' data-id='{$post->id_ad}'>ลบ</a>

                          ";
                $data[] = $nestedData;
            }
        }

        $json_data = array(
            "draw" => intval($request->input('draw')),
            "recordsTotal" => intval($totalData),
            "recordsFiltered" => intval($totalFiltered),
            "data" => $data,
        );

        echo json_encode($json_data);

    }

    public function allposts_category(request $request)
    {
        $columns = array(
            0 => 'id',
            1 => 'img',
            2 => 'name_adver',
            3 => 'name_thai',
            4 => 'id',

        );

        $totalData = DB::table('advertise_heade')->count();
        $totalFiltered = $totalData;
        $limit = $request->input('length');
        $start = $request->input('start');
        $order = $columns[$request->input('order.0.column')];
        $dir = $request->input('order.0.dir');

        if (empty($request->input('search.value'))) {

            $posts = DB::table('advertise_heade')
                ->offset($start)
                ->limit($limit)
                ->orderBy($order, $dir)
                ->get();

        } else {

            $search = $request->input('search.value');
            $posts = DB::table('advertise_heade')
                ->where('id', 'LIKE', "%{$search}%")
                ->orWhere('name_adver', 'LIKE', "%{$search}%")
                ->orWhere('name_thai', 'LIKE', "%{$search}%")
                ->offset($start)
                ->limit($limit)
                ->orderBy($order, $dir)
                ->get();

            $totalFiltered = DB::table('advertise_heade')
                ->where('id', 'LIKE', "%{$search}%")
                ->orWhere('name_adver', 'LIKE', "%{$search}%")
                ->orWhere('name_thai', 'LIKE', "%{$search}%")
                ->count();

        }

        $data = array();
        if (!empty($posts)) {
            foreach ($posts as $post) {
                $edit = route('editnewhead', $post->id);
                $nestedData['id'] = $post->id;
                $nestedData['name_adver'] = $post->name_adver;
                $nestedData['name_thai'] = $post->name_thai;
                $nestedData['options'] = "
                          &emsp;<a href='{$edit}' class='btn btn-warning btn-circle btn-xs'>แก้ไข</a>
                          &emsp;<a href='javascript:void(0)' class='btn btn-danger btn-circle btn-xs  DeleteCategory' data-id='{$post->id}'>ลบ</a>";
                $data[] = $nestedData;
            }
        }

        $json_data = array(
            "draw" => intval($request->input('draw')),
            "recordsTotal" => intval($totalData),
            "recordsFiltered" => intval($totalFiltered),
            "data" => $data,
        );

        echo json_encode($json_data);

    }

    public function allposts_LibaryImg(request $request)
    {
        $columns = array(
            0 => 'id_img',
            1 => 'name_img',
            2 => 'id_img',

        );

        $totalData = DB::table('ngg_libary_img')->count();
        $totalFiltered = $totalData;
        $limit = $request->input('length');
        $start = $request->input('start');
        $order = $columns[$request->input('order.0.column')];
        $dir = $request->input('order.0.dir');

        if (empty($request->input('search.value'))) {

            $posts = DB::table('ngg_libary_img')
                ->offset($start)
                ->limit($limit)
                ->orderBy($order, $dir)
                ->get();

        } else {

            $search = $request->input('search.value');
            $posts = DB::table('ngg_libary_img')
                ->where('id', 'LIKE', "%{$search}%")
                ->orWhere('name_img', 'LIKE', "%{$search}%")
                ->offset($start)
                ->limit($limit)
                ->orderBy($order, $dir)
                ->get();

            $totalFiltered = DB::table('ngg_libary_img')
                ->where('id', 'LIKE', "%{$search}%")
                ->orWhere('name_img', 'LIKE', "%{$search}%")
                ->count();

        }

        $data = array();
        if (!empty($posts)) {
            foreach ($posts as $post) {
                $nestedData['id_img'] = $post->id_img;
                $nestedData['name_img'] = "<img src='https://111loves.com/imgnew/{$post->name_img}' width='50%'>";
                $nestedData['name_part'] = $post->name_part;
                $nestedData['options'] = "<a href='javascript:void(0)' class='btn btn-danger btn-circle btn-xs  DeleteLibraryImg' data-id='{$post->id_img}'>ลบ</a>";
                $data[] = $nestedData;
            }
        }

        $json_data = array(
            "draw" => intval($request->input('draw')),
            "recordsTotal" => intval($totalData),
            "recordsFiltered" => intval($totalFiltered),
            "data" => $data,
        );

        echo json_encode($json_data);

    }

    public function allposts_KM360(request $request)
    {
        $columns = array(
            0 => 'id_km_cat',
            1 => 'name_category_eng',
            2 => 'name_category_thai',
            3 => 'name_category_thai',

        );

        $totalData = DB::table('ngg_km_category')->count();
        $totalFiltered = $totalData;
        $limit = $request->input('length');
        $start = $request->input('start');
        $order = $columns[$request->input('order.0.column')];
        $dir = $request->input('order.0.dir');

        if (empty($request->input('search.value'))) {

            $posts = DB::table('ngg_km_category')
                ->offset($start)
                ->limit($limit)
                ->orderBy($order, $dir)
                ->get();

        } else {

            $search = $request->input('search.value');
            $posts = DB::table('ngg_km_category')
                ->where('id_km_cat', 'LIKE', "%{$search}%")
                ->orWhere('name_category_eng', 'LIKE', "%{$search}%")
                ->orWhere('name_category_thai', 'LIKE', "%{$search}%")
                ->offset($start)
                ->limit($limit)
                ->orderBy($order, $dir)
                ->get();

            $totalFiltered = DB::table('ngg_libary_img')
                ->where('id_km_cat', 'LIKE', "%{$search}%")
                ->orWhere('name_category_eng', 'LIKE', "%{$search}%")
                ->orWhere('name_category_thai', 'LIKE', "%{$search}%")
                ->count();

        }

        $data = array();
        if (!empty($posts)) {
            foreach ($posts as $post) {
                $edit = route('editkmhead', $post->id_km_cat);
                $nestedData['id_km_cat'] = $post->id_km_cat;
                $nestedData['img'] = "<img src='https://111loves.com/imgnew/{$post->img}'  width='50px'>";
                $nestedData['name_category_eng'] = $post->name_category_eng;
                $nestedData['name_category_thai'] = $post->name_category_thai;
                $nestedData['options'] = " <a href='{$edit}' class='btn btn-warning btn-circle btn-xs'>แก้ไข</a>
                        &emsp; <a href='javascript:void(0)' class='btn btn-danger btn-circle btn-xs  DeleteKM360' data-id='{$post->id_km_cat}'>ลบ</a>";
                $data[] = $nestedData;
            }
        }

        $json_data = array(
            "draw" => intval($request->input('draw')),
            "recordsTotal" => intval($totalData),
            "recordsFiltered" => intval($totalFiltered),
            "data" => $data,
        );

        echo json_encode($json_data);

    }

    public function allposts_List_KM360(request $request)
    {

        $columns = array(
            0 => 'id',
            1 => 'name_category_thai',
            2 => 'km_title',
            3 => 'id',

        );

        $totalData = DB::table('ngg_km_category_detail')
            ->leftJoin('ngg_km_category', 'ngg_km_category_detail.id_km_cat', 'ngg_km_category.id_km_cat')
            ->count();
        $totalFiltered = $totalData;
        $limit = $request->input('length');
        $start = $request->input('start');
        $order = $columns[$request->input('order.0.column')];
        $dir = $request->input('order.0.dir');

        if (empty($request->input('search.value'))) {

            $posts = DB::table('ngg_km_category_detail')
                ->leftJoin('ngg_km_category', 'ngg_km_category_detail.id_km_cat', 'ngg_km_category.id_km_cat')
                ->offset($start)
                ->limit($limit)
                ->orderBy($order, $dir)
                ->get();

        } else {

            $search = $request->input('search.value');
            $posts = DB::table('ngg_km_category_detail')
                ->leftJoin('ngg_km_category', 'ngg_km_category_detail.id_km_cat', 'ngg_km_category.id_km_cat')
                ->where('id', 'LIKE', "%{$search}%")
                ->orWhere('km_title', 'LIKE', "%{$search}%")
                ->orWhere('name_category_thai', 'LIKE', "%{$search}%")
                ->offset($start)
                ->limit($limit)
                ->orderBy($order, $dir)
                ->get();

            $totalFiltered = DB::table('ngg_km_category_detail')
                ->leftJoin('ngg_km_category', 'ngg_km_category_detail.id_km_cat', 'ngg_km_category.id_km_cat')
                ->where('id', 'LIKE', "%{$search}%")
                ->orWhere('km_title', 'LIKE', "%{$search}%")
                ->orWhere('name_category_thai', 'LIKE', "%{$search}%")
                ->count();

        }

        $data = array();
        if (!empty($posts)) {
            foreach ($posts as $post) {
                $edit = route('editkmcategory', $post->id);
                $nestedData['id'] = $post->id;
                $nestedData['name_category_thai'] = $post->name_category_thai;
                $nestedData['km_title'] = $post->km_title;
                $nestedData['options'] = " <a href='{$edit}' class='btn btn-warning btn-circle btn-xs'>แก้ไข</a>
                        &emsp; <a href='javascript:void(0)' class='btn btn-danger btn-circle btn-xs  DeleteListKM360' data-id='{$post->id}'>ลบ</a>";
                $data[] = $nestedData;
            }
        }

        $json_data = array(
            "draw" => intval($request->input('draw')),
            "recordsTotal" => intval($totalData),
            "recordsFiltered" => intval($totalFiltered),
            "data" => $data,
        );

        echo json_encode($json_data);

    }

    public function addnew_libary_video(request $request)
    {
        $listmenu = DB::table('user_role')
            ->leftJoin('menu_master', 'user_role.name_menu_id', '=', 'menu_master.id')
            ->where('username_id', Auth::user()->username)
            ->get();
        $data = array(
            'listmenu' => $listmenu,
        );

        return view('video/add_video', $data);
    }

    public function addnew_video(request $request)
    {
        $image_name = $request->file('video')->getRealPath();
        Cloudder::uploadVideo($image_name, null);
        $image_url = Cloudder::getResult();
        $getPublicId = Cloudder::getPublicId();
        DB::table('ngg_video')->insert([

            'new_video_en' => $request->new_video_en,
            'new_video_th' => $request->new_video_th,
            'url_vedio' => $image_url['url'],
            'getPublicId' => $getPublicId,
        ]);

        return response()->json(['success' => 'You have successfully upload file.']);
    }

    public function allposts_video(request $request)
    {
        $columns = array(
            0 => 'id_video',
            1 => 'new_video_en',
            2 => 'new_video_th',

        );

        $totalData = DB::table('ngg_video')->count();
        $totalFiltered = $totalData;
        $limit = $request->input('length');
        $start = $request->input('start');
        $order = $columns[$request->input('order.0.column')];
        $dir = $request->input('order.0.dir');

        if (empty($request->input('search.value'))) {

            $posts = DB::table('ngg_video')
                ->offset($start)
                ->limit($limit)
                ->orderBy($order, $dir)
                ->get();

        } else {

            $search = $request->input('search.value');
            $posts = DB::table('ngg_video')
                ->where('id_video', 'LIKE', "%{$search}%")
                ->orWhere('new_video_en', 'LIKE', "%{$search}%")
                ->orWhere('new_video_th', 'LIKE', "%{$search}%")
                ->offset($start)
                ->limit($limit)
                ->orderBy($order, $dir)
                ->get();

            $totalFiltered = DB::table('ngg_video')
                ->where('id_video', 'LIKE', "%{$search}%")
                ->orWhere('new_video_en', 'LIKE', "%{$search}%")
                ->orWhere('new_video_th', 'LIKE', "%{$search}%")
                ->count();

        }

        $data = array();
        if (!empty($posts)) {
            foreach ($posts as $post) {
                $nestedData['name_img'] = "<video width='320' height='240' controls>'> <source src='{$post->url_vedio}' type='video/mp4'> </video>";
                $nestedData['new_video_en'] = $post->new_video_en;
                $nestedData['new_video_th'] = $post->new_video_th;
                $nestedData['url_vedio'] = $post->url_vedio;
                $nestedData['options'] = "<a href='javascript:void(0)' class='btn btn-danger btn-circle btn-xs  DeleteVideo' data-id='{$post->getPublicId}'>ลบ</a>";
                $data[] = $nestedData;
            }
        }

        $json_data = array(
            "draw" => intval($request->input('draw')),
            "recordsTotal" => intval($totalData),
            "recordsFiltered" => intval($totalFiltered),
            "data" => $data,
        );

        echo json_encode($json_data);

    }



    public function delete_new_video(Request $request)
    {

         Cloudder::delete($request->id);
         DB::table('ngg_video')->where('getPublicId', $request->id)->delete();
         Session::flash('flash_message', 'ลบเรียบร้อย!!');
         return redirect('settinnew');

    }



}
