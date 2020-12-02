<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use Excel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class NidPayController extends Controller
{
    public function pay(Request $request)
    {

        $theDate = date("Y-m-d");
        $datearray = explode("-", $theDate);
        $meyear = $datearray[0] + 543;
        $datadate = $datearray[2] . "/" . $datearray[1] . "/" . $meyear;

        if ($datadate == $request->nid_DocDate) {
            $setmeg_noti = DB::table('ngg_key_notification')->where('code_staff', $request->nid_Code_staff)
                ->where('login_status', '1')
                ->get();

            if ($setmeg_noti->count() > 0) {
                $list_noti = array();
                foreach ($setmeg_noti as $item) {
                    array_push($list_noti, $item->player_id);
                }
                $heading = array(
                    "en" => 'แจ้งยอดใช้จ่าย',
                );
                $content = array(
                    "en" => "สินค้า" . $request->nid_ItemDesc . "ราคารวม" . $request->nid_GrandTotal . "ยอดคงเหลือ" . $request->nid_BalanceValue,

                );
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

                $noti = DB::table('ngg_card_wallet')
                    ->where('CardNo_W', $request->nid_Card_on)
                    ->first();
                if (isset($noti) > 0) {
                    $i = 1 + $noti->count_noti;

                    DB::table('ngg_card_wallet_use')->insert([
                        'cardNo' => $request->nid_Card_on,
                        'itemDesc' => $request->nid_ItemDesc,
                        'itemValue' => $request->nid_ItemValue,
                        'grandTotal' => $request->nid_GrandTotal,
                        'prevBalance' => $request->nid_PrevBalance,
                        'docTime' => $request->nid_DocTime,
                        'docDate' => $request->nid_DocDate,
                        'datetime' => date("Y-m-d"),
                    ]);
                    DB::table('ngg_card_wallet')
                        ->where('CardNo_W', $request->nid_Card_on)
                        ->update([
                            'BalanceValue' => $request->nid_BalanceValue,
                            'CreateUpdate' => Carbon::now(),
                            'count_noti' => $i,
                        ]);
                    return $request->nid_RunningNo;

                } else {
                    DB::table('ngg_card_wallet_use')->insert([
                        'cardNo' => $request->nid_Card_on,
                        'itemDesc' => $request->nid_ItemDesc,
                        'itemValue' => $request->nid_ItemValue,
                        'grandTotal' => $request->nid_GrandTotal,
                        'prevBalance' => $request->nid_PrevBalance,
                        'docTime' => $request->nid_DocTime,
                        'docDate' => $request->nid_DocDate,
                        'datetime' => date("Y-m-d"),
                    ]);
                    DB::table('ngg_card_wallet')
                        ->where('CardNo_W', $request->nid_Card_on)
                        ->update([
                            'BalanceValue' => $request->nid_BalanceValue,
                            'CreateUpdate' => Carbon::now(),

                        ]);

                    return $request->nid_RunningNo;
                }

            } else {

                $noti = DB::table('ngg_card_wallet')
                    ->where('CardNo_W', $request->nid_Card_on)
                    ->first();

                if (isset($noti)) {
                    $i = 1 + $noti->count_noti;

                    DB::table('ngg_card_wallet_use')->insert([
                        'cardNo' => $request->nid_Card_on,
                        'itemDesc' => $request->nid_ItemDesc,
                        'itemValue' => $request->nid_ItemValue,
                        'grandTotal' => $request->nid_GrandTotal,
                        'prevBalance' => $request->nid_PrevBalance,
                        'docTime' => $request->nid_DocTime,
                        'docDate' => $request->nid_DocDate,
                        'datetime' => date("Y-m-d"),
                    ]);
                    DB::table('ngg_card_wallet')
                        ->where('CardNo_W', $request->nid_Card_on)
                        ->update([
                            'BalanceValue' => $request->nid_BalanceValue,
                            'CreateUpdate' => Carbon::now(),
                            'count_noti' => $i,
                        ]);
                    return $request->nid_RunningNo;

                } else {

                    DB::table('ngg_card_wallet_use')->insert([
                        'cardNo' => $request->nid_Card_on,
                        'itemDesc' => $request->nid_ItemDesc,
                        'itemValue' => $request->nid_ItemValue,
                        'grandTotal' => $request->nid_GrandTotal,
                        'prevBalance' => $request->nid_PrevBalance,
                        'docTime' => $request->nid_DocTime,
                        'docDate' => $request->nid_DocDate,
                        'datetime' => date("Y-m-d"),
                    ]);
                    DB::table('ngg_card_wallet')
                        ->where('CardNo_W', $request->nid_Card_on)
                        ->update([
                            'BalanceValue' => $request->nid_BalanceValue,
                            'CreateUpdate' => Carbon::now(),

                        ]);

                    return $request->nid_RunningNo;

                }

            }

        } else {

            $noti = DB::table('ngg_card_wallet')
                ->where('CardNo_W', $request->nid_Card_on)
                ->first();
            if (isset($noti)) {
                $i = 1 + $noti->count_noti;
                DB::table('ngg_card_wallet_use')->insert([
                    'cardNo' => $request->nid_Card_on,
                    'itemDesc' => $request->nid_ItemDesc,
                    'itemValue' => $request->nid_ItemValue,
                    'grandTotal' => $request->nid_GrandTotal,
                    'prevBalance' => $request->nid_PrevBalance,
                    'docTime' => $request->nid_DocTime,
                    'docDate' => $request->nid_DocDate,
                    'datetime' => date("Y-m-d"),
                ]);
                DB::table('ngg_card_wallet')
                    ->where('CardNo_W', $request->nid_Card_on)
                    ->update([
                        'BalanceValue' => $request->nid_BalanceValue,
                        'CreateUpdate' => Carbon::now(),
                        'count_noti' => $i,
                    ]);

                return $request->nid_RunningNo;

            } else {
                DB::table('ngg_card_wallet_use')->insert([
                    'cardNo' => $request->nid_Card_on,
                    'itemDesc' => $request->nid_ItemDesc,
                    'itemValue' => $request->nid_ItemValue,
                    'grandTotal' => $request->nid_GrandTotal,
                    'prevBalance' => $request->nid_PrevBalance,
                    'docTime' => $request->nid_DocTime,
                    'docDate' => $request->nid_DocDate,
                    'datetime' => date("Y-m-d"),
                ]);
                DB::table('ngg_card_wallet')
                    ->where('CardNo_W', $request->nid_Card_on)
                    ->update([
                        'BalanceValue' => $request->nid_BalanceValue,
                        'CreateUpdate' => Carbon::now(),

                    ]);

                return $request->nid_RunningNo;

            }

        }

    }

    public function addwallet(Request $request)
    {
        $theDate = date("Y-m-d");
        $datearray = explode("-", $theDate);
        $meyear = $datearray[0] + 543;
        $datadate = $datearray[2] . "/" . $datearray[1] . "/" . $meyear;

        if ($datadate == $request->nid_DocDate) {
            $setmeg_noti = DB::table('ngg_key_notification')->where('code_staff', $request->nid_Code_staff)
                ->where('login_status', '1')
                ->get();
            if ($setmeg_noti->count() > 0) {

                $list_noti = array();
                foreach ($setmeg_noti as $item) {
                    array_push($list_noti, $item->player_id);
                }
                $heading = array(
                    "en" => 'เติมเงิน',
                );
                $content = array(
                    "en" => "เติมเงินจำนวน " . $request->nid_moveMoney . " บาท  ยอดรวม " . $request->nid_BalanceValue . " บาท",

                );
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

                $noti = DB::table('ngg_card_wallet')
                    ->where('CardNo_W', $request->nid_Card_on)
                    ->first();

                if (isset($noti)) {
                    $i = 1 + $noti->count_noti;
                    DB::table('ngg_card_wallet_add')->insert([
                        'cardNo' => $request->nid_Card_on,
                        'moveMoney' => $request->nid_moveMoney,
                        'docTime' => $request->nid_DocTime,
                        'docDate' => $request->nid_DocDate,
                        'datetime' => date("Y-m-d"),
                    ]);
                    DB::table('ngg_card_wallet')
                        ->where('CardNo_W', $request->nid_Card_on)
                        ->update([
                            'BalanceValue' => $request->nid_BalanceValue,
                            'CreateUpdate' => Carbon::now(),
                            'count_noti' => $i,
                        ]);
                } else {

                    DB::table('ngg_card_wallet_add')->insert([
                        'cardNo' => $request->nid_Card_on,
                        'moveMoney' => $request->nid_moveMoney,
                        'docTime' => $request->nid_DocTime,
                        'docDate' => $request->nid_DocDate,
                        'datetime' => date("Y-m-d"),
                    ]);

                    DB::table('ngg_card_wallet')
                        ->where('CardNo_W', $request->nid_Card_on)
                        ->update([
                            'BalanceValue' => $request->nid_BalanceValue,
                            'CreateUpdate' => Carbon::now(),

                        ]);

                }

                return $request->nid_BatchNo;
            } else {

                DB::table('ngg_card_wallet_add')->insert([
                    'cardNo' => $request->nid_Card_on,
                    'moveMoney' => $request->nid_moveMoney,
                    'docTime' => $request->nid_DocTime,
                    'docDate' => $request->nid_DocDate,
                    'datetime' => date("Y-m-d"),
                ]);

                DB::table('ngg_card_wallet')
                    ->where('CardNo_W', $request->nid_Card_on)
                    ->update([
                        'BalanceValue' => $request->nid_BalanceValue,
                        'CreateUpdate' => Carbon::now(),

                    ]);

                return $request->nid_BatchNo;
            }

        } else {
            $noti = DB::table('ngg_card_wallet')
                ->where('CardNo_W', $request->nid_Card_on)
                ->first();

            if (isset($noti)) {

                $i = 1 + $noti->count_noti;
                DB::table('ngg_card_wallet_add')->insert([
                    'cardNo' => $request->nid_Card_on,
                    'moveMoney' => $request->nid_moveMoney,
                    'docTime' => $request->nid_DocTime,
                    'docDate' => $request->nid_DocDate,
                    'datetime' => date("Y-m-d"),
                ]);
                DB::table('ngg_card_wallet')
                    ->where('CardNo_W', $request->nid_Card_on)
                    ->update([
                        'BalanceValue' => $request->nid_BalanceValue,
                        'CreateUpdate' => Carbon::now(),
                        'count_noti' => $i,
                    ]);

            } else {

                DB::table('ngg_card_wallet_add')->insert([
                    'cardNo' => $request->nid_Card_on,
                    'moveMoney' => $request->nid_moveMoney,
                    'docTime' => $request->nid_DocTime,
                    'docDate' => $request->nid_DocDate,
                    'datetime' => date("Y-m-d"),
                ]);
                DB::table('ngg_card_wallet')
                    ->where('CardNo_W', $request->nid_Card_on)
                    ->update([
                        'BalanceValue' => $request->nid_BalanceValue,
                        'CreateUpdate' => Carbon::now(),

                    ]);

            }

            return $request->nid_BatchNo;
        }

    }

    public function nidpayupdateacc(Request $request)
    {

        $check = DB::table('ngg_card_wallet')
            ->where('Active', 'Y')
            ->where('CardNo_W', $request->cardno)
            ->count();

        if ($check > 0) {
            DB::table('ngg_card_wallet')
                ->where('Active', 'Y')
                ->where('CardNo_W', $request->cardno)
                ->update([
                    'CardNo_W' => $request->cardno,
                    'MemName' => $request->memname,
                    'EmpCode' => $request->empcode,
                    'BalanceValue' => $request->balancevalue,
                    'AccuAmount' => $request->accuamount,
                    'CardTypeCode' => $request->cardttypeCode,
                    'Active' => $request->active,
                    'CreateUpdate' => Carbon::now(),

                ]);

        } else {
            DB::table('ngg_card_wallet')
                ->insert([
                    'CardNo_W' => $request->cardno,
                    'MemName' => $request->memname,
                    'EmpCode' => $request->empcode,
                    'BalanceValue' => $request->balancevalue,
                    'AccuAmount' => $request->accuamount,
                    'CardTypeCode' => $request->cardttypeCode,
                    'Active' => $request->active,
                    'CreateUpdate' => Carbon::now(),

                ]);

        }

        return $request->cardno;
    }

    public function nidpayreport(Request $request)
    {

        return view('nidpay.index');
    }

    public function nidpayreportpost(Request $request)
    {

        if ($request->password == "123456") {
            $type = $request->type;
            DB::table('ngg_nidpayreport_log')->insert([
                'ip' => $_SERVER['REMOTE_ADDR'],
                'datatime' =>  Carbon::now()
            ]);

            $sub = explode("-", $request->reservation);
            $date_sub_1 = strtotime($sub[0]);
            $date_sub_2 = strtotime($sub[1]);
            $date_1 = date('Y-m-d', $date_sub_1);
            $date_2 = date('Y-m-d', $date_sub_2);

            if($request->EmpCode != ''){
                $get = DB::table('ngg_card_wallet')
                ->leftJoin('ngg_card_wallet_use', 'ngg_card_wallet.CardNo_W', 'ngg_card_wallet_use.CardNo')
                ->whereBetween('datetime', [$date_1, $date_2])
                ->where('EmpCode',$request->EmpCode)
                ->get();
                $get_add = DB::table('ngg_card_wallet')
                ->leftJoin('ngg_card_wallet_add', 'ngg_card_wallet.CardNo_W', 'ngg_card_wallet_add.CardNo')
                ->whereBetween('datetime', [$date_1, $date_2])
                ->where('EmpCode',$request->EmpCode)
                ->get();

            }else{
                $get = DB::table('ngg_card_wallet')
                ->leftJoin('ngg_card_wallet_use', 'ngg_card_wallet.CardNo_W', 'ngg_card_wallet_use.CardNo')
                ->whereBetween('datetime', [$date_1, $date_2])
                ->get();
                $get_add = DB::table('ngg_card_wallet')
                ->leftJoin('ngg_card_wallet_add', 'ngg_card_wallet.CardNo_W', 'ngg_card_wallet_add.CardNo')
                ->whereBetween('datetime', [$date_1, $date_2])
                ->get();

            }
            $users_total = DB::table('ngg_card_wallet')
            ->leftJoin('ngg_card_wallet_use', 'ngg_card_wallet.CardNo_W', 'ngg_card_wallet_use.CardNo')
            ->whereBetween('datetime', [$date_1, $date_2])
            ->select('EmpCode')->distinct()->get();
            
            $data = array();
            $i=1;
            foreach ($get as $result) {

               if($get->count() == $i){
                $data[] = array(
                    'รหัสพนักงาน' => $result->EmpCode,
                    'ชื่อ-สกุล' => $result->MemName,
                    'บริษัท' => $result->CardTypeCode,
                    'รายการอาหาร' => $result->itemDesc,
                    'ราคาแยก' => $result->itemValue,
                    'ราคา' => $result->grandTotal . "บาท",
                    'คงเหลือ' => $result->BalanceValue . "บาท",
                    'วันที่' => $result->datetime,
                    'เวลา' => $result->docTime,
                    'จำนวนผู้ใช้งาน' => $users_total->count()." คน",

                );
               }else{
                $data[] = array(
                    'รหัสพนักงาน' => $result->EmpCode,
                    'ชื่อ-สกุล' => $result->MemName,
                    'บริษัท' => $result->CardTypeCode,
                    'รายการอาหาร' => $result->itemDesc,
                    'ราคาแยก' => $result->itemValue,
                    'ราคา' => $result->grandTotal . "บาท",
                    'คงเหลือ' => $result->BalanceValue . "บาท",
                    'วันที่' => $result->datetime,
                    'เวลา' => $result->docTime,
                    'จำนวนผู้ใช้งาน' => "-",

                );
               }
               
                $i++;

            }

          /*   foreach ($get_add as $result) {
                $data[] = array(
                    'ยอดเติม' => $result->moveMoney . "บาท",
                    'ประวัติการเติมวันที่' => $result->docDate,
                    'เวลาเติม' => $result->docTime,

                );

            } */

            
            return Excel::create('รายการอาหารวันที '.$request->reservation, function ($excel) use ($data) {
                $excel->sheet('mySheet', function ($sheet) use ($data) {
                    $sheet->fromArray($data);
                });
            })->download($type);

        } else {
            return redirect('nidpayreport');
        }

    }
}
