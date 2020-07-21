<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Excel;
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
    
        $position = DB::table('users_detail')
        ->orderBy('Position', 'asc')
        ->select('Position')
        ->get();

        $department = DB::table('users_detail')
        ->orderBy('Department', 'asc')
        ->select('Department')
        ->get();

        $faction = DB::table('users_detail')
        ->orderBy('Faction', 'asc')
        ->select('Faction')
        ->get();

        $company = DB::table('users_detail')
        ->orderBy('Company', 'asc')
        ->select('Company')
        ->get();

    $a = array();

    foreach ($position as $i) {
          array_push($a, $i->Position);
    }
    $brand_r = array_unique($a);
    $array_position = $a;
    $unique_position = array();
    foreach ($array_position as $v) {
        isset($k[$v]) || ($k[$v] = 1) && $unique_position[] = $v;
    }
     
    $b = array();
    foreach ($department as $i) {
          array_push($b, $i->Department);
    }
    $array_department = $b;
    $unique_department = array();
    foreach ($array_department as $v) {
        isset($k[$v]) || ($k[$v] = 1) && $unique_department[] = $v;
    }


    $c = array();
    foreach ($faction as $i) {
          array_push($c, $i->Faction);
    }
    $array_faction = $c;
    $unique_faction = array_unique($array_faction);

    $d = array();
    foreach ($company as $i) {
          array_push($d, $i->Company);
    }
    $array_company = $d;
    $unique_company = array_unique($array_company);
   
    $data   = array (
        'listmenu' =>   $listmenu,
        'unique_position'  => $unique_position,
        'unique_department' => $unique_department,
        'unique_faction' => $unique_faction,
        'unique_company' => $unique_company
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
                        $nestedData['img'] = "<img src='https://111loves.com/img/{$post->img}' alt=''>";
                        $nestedData['Code_Staff'] = $post->Code_Staff;
                        $nestedData['Name_Thai'] = $post->Name_Thai;
                        $nestedData['Position'] = $post->Position;
                        $nestedData['Department'] = $post->Department;
                        $nestedData['active'] =$status;
                        $nestedData['options'] = "
                        <a href='javascript:void(0)' class='btn btn-warning btn-circle btn-xs Edituser' data-id='{$post->id}'>แก้ไข</a>
                        <a href='javascript:void(0)' class='btn btn-info btn-circle btn-xs EnableOrDis'  data-id='{$post->Code_Staff}'>ปิดหรือเปิด</a>
                        <a href='javascript:void(0)' class='btn btn-danger btn-circle btn-xs DeleteUsername'   data-id='{$post->id}'>ลบ</a>";
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

        $ch = DB::table('users_detail')->where('id',$request->id)->first();
        if($ch->active == 0){
            DB::table('users_detail')
            ->where('id',$request->id)
            ->delete();
        }else{
            return   response()->json('404');
        }
    

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
        ->delete();

     }else
     {
        DB::table('users_detail')
        ->where('Code_Staff',$ch->Code_Staff)
        ->update([
                   'active' => '1'
        ]);
        DB::table('users')->insert([
            'username' => $ch->Code_Staff,
            'id_card' => $ch->Code_Staff,
            'password' => bcrypt('0000'),
        ]);



     }





    }


    public function save_uername(request $request){

        if($request->id == ''){

            $image_2 = $request->image_roppie;
            list($type, $image_2) = explode(';', $image_2);
            list(, $image_2) = explode(',', $image_2);
            $image_2 = base64_decode($image_2);
            $image_name_2 =  $request->usernameText.'.jpg';
            file_put_contents('img/' . $image_name_2, $image_2);

            DB::table('users')->insert([
                'username' => $request->usernameText,
                'id_card' => $request->usernameText,
                'password' => bcrypt('0000'),
            ]);

            DB::table('users_detail')->insert([
                'Code_Staff' => $request->usernameText,
                'Card_Staff' => $request->usernameText,
                'Name_Thai' => $request->nameText,
                'Faction' => $request->factionText,
                'Department' => $request->departmentText,
                'Position' => $request->positionText,
                'Company' => $request->companyText,
                'img' =>  $image_name_2
                ]);

                DB::table('user_role')->insert(  [
                    'username_id' => $request->usernameText,
                    'card_id_id' => $request->usernameText,
                    'name_menu_id' => '7',
                     ]);






        }else{


            $image_2 = $request->image_roppie;
            list($type, $image_2) = explode(';', $image_2);
            list(, $image_2) = explode(',', $image_2);
            $image_2 = base64_decode($image_2);
            $image_name_2 =  $request->usernameText.'.jpg';
            file_put_contents('img/' . $image_name_2, $image_2);




            DB::table('users_detail')
            ->where('id',$request->id)
            ->update([
                'Code_Staff' => $request->usernameText,
                'Card_Staff' => $request->usernameText,
                'Name_Thai' => $request->nameText,
                'Faction' => $request->factionText,
                'Department' => $request->departmentText,
                'Position' => $request->positionText,
                'Company' => $request->companyText,
                'img' =>  $image_name_2
                ]);















        }
        return  response()->json('200');
    }


    public function get_uername(request $request){

    

        $data  = DB::table('users_detail')
        ->where('id',$request->id)
        ->first();
        
        return  response()->json($data);
    }



    public function importDataUser(Request $request)
    {
        $request->validate([
            'import_file' => 'required'
        ]);
        $path = $request->file('import_file')->getRealPath();
        $data = Excel::load($path)->get();
        if($data->count()){
            foreach ($data as $key => $value) {
           
             $count = DB::table('users_detail')->where('Code_Staff',$value->code_staff)->count();
             if($count <= 0 ){
              
                if(!empty($value->code_staff)){
                    DB::table('users_detail')
                    ->insert([
                        'Code_Staff' => strval($value->code_staff), 
                        'Card_Staff' => strval($value->card_staff),
                        'Name_Thai' => strval($value->name_thai),
                        'Nickname' => strval($value->nickname),
                        'Faction' => strval($value->faction),
                        'Department' => strval($value->department),
                        'Position' => strval($value->position),
                        'JGStatus' => strval($value->jgstatus),
                        'Workplace' => strval($value->workplace),
                        'Working_status' => strval($value->working_status),
                        'img' => strval($value->img),
                        'Company' => strval($value->company),
                        ]);
    
                        DB::table('users')
                        ->insert([
                            'username' => $value->code_staff, 
                            'id_card' => $value->code_staff, 
                            'password' => bcrypt('0000'),
    
                        ]);
    
                        DB::table('user_role')
                        ->insert([
                            'username_id' => $value->code_staff, 
                            'card_id_id' => $value->code_staff, 
                            'name_menu_id' => '7',
                        ]);
                    
                }
        
                
             }else{
               
                if(!empty($value->code_staff)){
                    DB::table('users_detail')
                    ->where('Code_Staff',strval($value->code_staff), )
                    ->update([
                        'Code_Staff' => strval($value->code_staff), 
                        'Card_Staff' => strval($value->card_staff),
                        'Name_Thai' => strval($value->name_thai),
                        'Nickname' => strval($value->nickname),
                        'Faction' => strval($value->faction),
                        'Department' => strval($value->department),
                        'Position' => strval($value->position),
                        'JGStatus' => strval($value->jgstatus),
                        'Workplace' => strval($value->workplace),
                        'Working_status' => strval($value->working_status),
                        'img' => strval($value->img),
                        'Company' => strval($value->company),
                        ]);




                }
         
                 }
            }
        }
        return back()->with('success', 'Insert Record successfully.');
    }


}
