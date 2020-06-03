<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ChatController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth');
    }

    public function  index()
    {
        $history_chat =  DB::table('ngg_chat')
        ->orWhere('owner_room', '99999')
        ->orWhere('chat_partner', '99999')
        ->select('owner_room','chat_partner','msg')
        ->orderBy('createdAt', 'DESC')
        ->get();

        if($history_chat->count() >0 ){
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


          /*   dd($history_chat_last); */
             $data = array(
                 'history_chat_last' => $history_chat_last
             );


          return  view('chathr.index',$data);
        }
        return  view('chathr.index');
    }


    public function  history_chat_last()
    {

        $history_chat =  DB::table('ngg_chat')
        ->orWhere('owner_room', '99999')
        ->orWhere('chat_partner', '99999')
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




    public function  room($id)
    {

        $history_chat =  DB::table('ngg_chat')
        ->orWhere('owner_room', '99999')
        ->orWhere('chat_partner', '99999')
        ->select('owner_room','chat_partner','msg')
        ->orderBy('createdAt', 'DESC')
        ->get();

        if($history_chat->count() >0 ){
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
            $owner_room  = DB::table('ngg_chat')
            ->Where('coderoom', $id+99999)
            ->first();
                    if(isset($owner_room)){


                        $owner_rooms = json_decode($owner_room->msg);
                        $data = array(

                            'history_chat_last' => $history_chat_last,
                            'owner_rooms' =>$owner_rooms,
                            'id' =>$id
                        );


                     return  view('chathr.room',$data);


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
                            $data = array(
                                'history_chat_last' => $history_chat_last,
                                'id' =>$id

                            );


                         return  view('chathr.room',$data);

                            }

        }

        $owner_room  = DB::table('ngg_chat')
        ->Where('coderoom', $id+99999)
        ->first();
                if(isset($owner_room)){
                return response()->json([
                      'dataall' =>json_decode($owner_room->msg),
                      'owner_info' =>$owner_info,
                      'owner_info_me' => $owner_info_me
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


                        }



                        $data = array(

                            'owner_room' => $owner_room
                        );


                     return  view('chathr.room',$data);



    }


}
