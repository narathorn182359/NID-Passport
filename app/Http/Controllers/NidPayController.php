<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
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
            $setmeg_noti = DB::table('ngg_key_notification')->where('Code_Staff', $request->nid_Code_staff)
                ->where('login_status', '1')
                ->get();

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
                ->where('CardNo', $request->nid_Card_on)
                ->first();

            $i = 1 + $noti->count_noti;

            DB::table('ngg_card_wallet_use')->insert([
                'cardNo' => $request->nid_Card_on,
                'itemDesc' => $request->nid_ItemDesc,
                'itemValue' => $request->nid_ItemValue,
                'grandTotal' => $request->nid_GrandTotal,
                'prevBalance' => $request->nid_PrevBalance,
                'docTime' => $request->nid_DocDate,
                'docDate' => $request->nid_DocTime,
            ]);
            DB::table('ngg_card_wallet')
                ->where('CardNo', $request->nid_Card_on)
                ->update([
                    'BalanceValue' => $request->nid_BalanceValue,
                    'CreateUpdate' => Carbon::now(),
                    'count_noti' => $i,
                ]);

            return $request->nid_RunningNo;

        } else {

            $noti = DB::table('ngg_card_wallet')
                ->where('CardNo', $request->nid_Card_on)
                ->first();

            $i = 1 + $noti->count_noti;
            DB::table('ngg_card_wallet_use')->insert([
                'cardNo' => $request->nid_Card_on,
                'itemDesc' => $request->nid_ItemDesc,
                'itemValue' => $request->nid_ItemValue,
                'grandTotal' => $request->nid_GrandTotal,
                'prevBalance' => $request->nid_PrevBalance,
                'docTime' => $request->nid_DocDate,
                'docDate' => $request->nid_DocTime,
            ]);
            DB::table('ngg_card_wallet')
                ->where('CardNo', $request->nid_Card_on)
                ->update([
                    'BalanceValue' => $request->nid_BalanceValue,
                    'CreateUpdate' => Carbon::now(),
                    'count_noti' => $i,
                ]);

            return $request->nid_RunningNo;
        }

    }

    public function addwallet(Request $request)
    {
        $theDate = date("Y-m-d");
        $datearray = explode("-", $theDate);
        $meyear = $datearray[0] + 543;
        $datadate = $datearray[2] . "/" . $datearray[1] . "/" . $meyear;

        if ($datadate == $request->nid_DocDate) {
            $setmeg_noti = DB::table('ngg_key_notification')->where('Code_Staff', $request->nid_Code_staff)
                ->where('login_status', '1')
                ->get();

            $list_noti = array();
            foreach ($setmeg_noti as $item) {
                array_push($list_noti, $item->player_id);
            }
            $heading = array(
                "en" => 'เติมเงิน',
            );
            $content = array(
                "en" => "จำนวน" . $request->nid_ItemDesc . "ราคารวม" . $request->nid_GrandTotal . "ยอดคงเหลือ" . $request->nid_BalanceValue,

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
                ->where('CardNo', $request->nid_Card_on)
                ->first();
            $i = 1 + $noti->count_noti;
            DB::table('ngg_card_wallet_add')->insert([
                'cardNo' => $request->nid_Card_on,
                'moveMoney' => $request->nid_moveMoney,
                'docTime' => $request->nid_DocDate,
                'docDate' => $request->nid_DocTime,
            ]);
            DB::table('ngg_card_wallet')
                ->where('CardNo', $request->nid_Card_on)
                ->update([
                    'BalanceValue' => $request->nid_BalanceValue,
                    'CreateUpdate' => Carbon::now(),
                    'count_noti' => $i,
                ]);

            return $request->nid_BatchNo;

        } else {
            $noti = DB::table('ngg_card_wallet')
                ->where('CardNo', $request->nid_Card_on)
                ->first();
            $i = 1 + $noti->count_noti;
            DB::table('ngg_card_wallet_add')->insert([
                'cardNo' => $request->nid_Card_on,
                'moveMoney' => $request->nid_moveMoney,
                'docTime' => $request->nid_DocDate,
                'docDate' => $request->nid_DocTime,
            ]);
            DB::table('ngg_card_wallet')
                ->where('CardNo', $request->nid_Card_on)
                ->update([
                    'BalanceValue' => $request->nid_BalanceValue,
                    'CreateUpdate' => Carbon::now(),
                    'count_noti' => $i,
                ]);

            return $request->nid_BatchNo;
        }

    }

}
