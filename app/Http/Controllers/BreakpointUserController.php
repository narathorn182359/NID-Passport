<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;

class BreakpointUserController extends Controller
{





    public function __construct()
    {
        $this->middleware('auth');
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $listmenu = DB::table('user_role')
        ->leftJoin('menu_master', 'user_role.name_menu_id', '=', 'menu_master.id')
        ->where('username_id',Auth::user()->username)
        ->get();
        $data   = array (
            'listmenu' =>   $listmenu
        );

        return view('breakpoint.index',$data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }




    public function get_data(request $request)
    {
        $columns = array(
            0 =>'Code_Staff',
            1 =>'Name_Thai',
            2=> 'Position',
            4 =>'Code_Staff',
        );

            $totalData =  DB::table('users_detail')->count();
            $totalFiltered = $totalData;
            $limit = $request->input('length');
            $start = $request->input('start');
            $order = $columns[$request->input('order.0.column')];
            $dir = $request->input('order.0.dir');

        if(empty($request->input('search.value')))
        {

            $posts =  DB::table('ngg_breakpoint_users_detail')
            ->offset($start)
            ->limit($limit)
            ->orderBy($order,$dir)
            ->get();


        }
        else {

            $search = $request->input('search.value');
            $posts = DB::table('users_detail')
            ->orWhere('Code_Staff','LIKE',"%{$search}%")
            ->orWhere('Name_Thai', 'LIKE',"%{$search}%")
            ->orWhere('Position', 'LIKE',"%{$search}%")
            ->offset($start)
            ->limit($limit)
            ->orderBy($order,$dir)
            ->get();

            $totalFiltered =  DB::table('users_detail')
            ->orWhere('Code_Staff','LIKE',"%{$search}%")
            ->orWhere('Name_Thai', 'LIKE',"%{$search}%")
            ->orWhere('Position', 'LIKE',"%{$search}%")
            ->count();

             }

             $data = array();
            if(!empty($posts))
              {
                 foreach ($posts as $post)
                     {
                        $nestedData['Code_Staff'] = $post->Code_Staff;
                        $nestedData['Name_Thai'] = $post->Name_Thai;
                        $nestedData['Position'] = $post->Position;
                        $nestedData['Department'] = $post->Department;
                        $nestedData['options'] = "<a href='javascript:void(0)' class='btn btn-info btn-circle btn-xs'>อนุมัติ</a>";
                        $data[] = $nestedData;
                    }
                  }

    $json_data = array(
    "draw"            => intval($request->input('draw')),
    "recordsTotal"    => intval($totalData),
    "recordsFiltered" => intval($totalFiltered),
    "data"            => $data
    );

              echo json_encode($json_data);

    }


    public function get_data_ok(request $request)
    {

        $columns = array(
            0 =>'Code_Staff',
            1 =>'Name_Thai',
            2=> 'Position',
            4 =>'Code_Staff',
        );

            $totalData =  DB::table('users_detail')->count();
            $totalFiltered = $totalData;
            $limit = $request->input('length');
            $start = $request->input('start');
            $order = $columns[$request->input('order.0.column')];
            $dir = $request->input('order.0.dir');

        if(empty($request->input('search.value')))
        {

            $posts =  DB::table('users_detail')
            ->offset($start)
            ->limit($limit)
            ->orderBy($order,$dir)
            ->get();


        }
        else {

            $search = $request->input('search.value');
            $posts = DB::table('users_detail')
            ->where('Code_Staff','LIKE',"%{$search}%")
            ->orWhere('Name_Thai', 'LIKE',"%{$search}%")
            ->orWhere('Position', 'LIKE',"%{$search}%")
            ->offset($start)
            ->limit($limit)
            ->orderBy($order,$dir)
            ->get();

            $totalFiltered =  DB::table('users_detail')
            ->where('Code_Staff','LIKE',"%{$search}%")
            ->orWhere('Name_Thai', 'LIKE',"%{$search}%")
            ->orWhere('Position', 'LIKE',"%{$search}%")
            ->count();

             }

             $data = array();
            if(!empty($posts))
              {
                 foreach ($posts as $post)
                     {

                        if($post->active == 1){

                          $status = "<small class='badge badge-success'>ใช้งาน</small>";

                        }else{

                            $status = "<small class='badge badge-danger'>ปิด</small>";
                        }
                        $nestedData['img'] = "<img src='http://18.140.109.247/nidapi/img/{$post->img}' alt=''>";
                        $nestedData['Code_Staff'] = $post->Code_Staff;
                        $nestedData['Name_Thai'] = $post->Name_Thai;
                        $nestedData['Position'] = $post->Position;
                        $nestedData['Department'] = $post->Department;
                        $nestedData['active'] =$status;
                        $nestedData['options'] = "
                        <a href='javascript:void(0)' class='btn btn-warning btn-circle btn-xs'>แก้ไข</a>
                        <a href='javascript:void(0)' class='btn btn-info btn-circle btn-xs EnableOrDis'  data-id='{$post->Code_Staff}'>ปิดหรือเปิด</a>
                        <a href='javascript:void(0)' class='btn btn-danger btn-circle btn-xs DeleteUsername'   data-id='{$post->Code_Staff}'>ลบ</a>";
                        $data[] = $nestedData;
                    }
                  }

    $json_data = array(
    "draw"            => intval($request->input('draw')),
    "recordsTotal"    => intval($totalData),
    "recordsFiltered" => intval($totalFiltered),
    "data"            => $data
    );


    echo json_encode($json_data);


    }


    public  function delete_new_username(request $request)
    {

        DB::table('users_detail')
        ->where('Code_Staff',$request->id)
        ->delete();


    }
    public  function en_username(request $request)
    {




        $ch = DB::table('users_detail')->where('Code_Staff',$request->id)->first();

     if($ch->active == 1 ){
        DB::table('users_detail')
        ->where('Code_Staff',$ch->Code_Staff)
        ->update([
                   'active' => '0'
        ]);
        DB::table('users')
        ->where('username',$ch->Code_Staff)
        ->update([
                   'active' => '0'
        ]);

     }else
     {
        DB::table('users_detail')
        ->where('Code_Staff',$ch->Code_Staff)
        ->update([
                   'active' => '1'
        ]);
        DB::table('users')
        ->where('username',$ch->Code_Staff)
        ->update([
                   'active' => '1'
        ]);


     }





    }


}
