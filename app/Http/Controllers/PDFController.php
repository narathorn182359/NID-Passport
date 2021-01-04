<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use PDF;
use Auth;
class PDFController extends Controller
{

  /*   public function reportnidpay(Request $request){

      
        $nidpay =  DB::table('ngg_card_wallet')
        ->leftJoin('ngg_card_wallet_use', 'ngg_card_wallet.CardNo_W', 'ngg_card_wallet_use.CardNo')
        //->whereBetween('datetime', [$date_1, $date_2])
        ->where('EmpCode','94018')
        ->get();
        $data = array(

            'nidpay' => $nidpay,

          );

        $pdf = PDF::loadView('pdf.nippay', $data);
        $content = $pdf->download()->getOriginalContent();
        $fileName =  $user->username .'pdf' ;
        file_put_contents('pdf/nippay.pdf', $content);
        return response()->json([
            'status' => 200,
            'file' =>   $fileName
        ]);

    } */

    public function evaluation($code_staff, $degree)
    {

        if ($degree == 'ระดับปฏิบัติการ') {

            $users_detail = DB::table('users_detail')
                ->where('Code_Staff', $code_staff)
                ->first();

            $ngg_operational_6090 = DB::table('ngg_operational_6090')
                ->where('assessed', $code_staff)
                ->first();
            $ngg_operational_score_60 = DB::table('ngg_operational_score_6090')
                ->where('60or90_evascore', '60')
                ->where('assessed_evascore', $code_staff)
                ->first();
            $ngg_operational_score_90 = DB::table('ngg_operational_score_6090')
                ->where('60or90_evascore', '90')
                ->where('assessed_evascore', $code_staff)
                ->first();

            $data_60_A = DB::table('ngg_operation_history_answer')
                ->leftJoin('ngg_operational_office', 'ngg_operation_history_answer.id_oper_ha', 'ngg_operational_office.id_opf')
                ->where('assessed_ha', $code_staff)
                ->where('60or90', '60')
                ->where('active_ha', '1')->get();

            $data_90_A = DB::table('ngg_operation_history_answer')
                ->leftJoin('ngg_operational_office', 'ngg_operation_history_answer.id_oper_ha', 'ngg_operational_office.id_opf')
                ->where('assessed_ha', $code_staff)
                ->where('60or90', '90')
                ->where('active_ha', '1')->get();

            $ngg_operational_6090 = DB::table('ngg_operational_6090')
                ->where('assessed', $code_staff)
                ->first();
            $assessor_evascore = DB::table('users_detail')
                ->where('Code_Staff', $ngg_operational_score_60->assessor_evascore)
                ->first();
            $data = array(
                'data_60_A' => $data_60_A,
                'data_90_A' => $data_90_A,
                'users_detail' => $users_detail,
                'ngg_operational_6090' => $ngg_operational_6090,
                'ngg_operational_score_60' => $ngg_operational_score_60,
                'ngg_operational_score_90' => $ngg_operational_score_90,
                'assessor_evascore' => $assessor_evascore,

            );

        } else if ($degree == 'ระดับผู้บังคับบัญชา') {

            $users_detail = DB::table('users_detail')
                ->where('Code_Staff', $code_staff)
                ->first();
            $ngg_operational_6090 = DB::table('ngg_operational_6090')
                ->where('assessed', $code_staff)
                ->first();
            $ngg_operational_score_60 = DB::table('ngg_operational_score_6090')
                ->where('60or90_evascore', '60')
                ->where('assessed_evascore', $code_staff)
                ->first();
            $ngg_operational_score_90 = DB::table('ngg_operational_score_6090')
                ->where('60or90_evascore', '90')
                ->where('assessed_evascore', $code_staff)
                ->first();

            $data_60_B = DB::table('ngg_operation_history_answer')
                ->leftJoin('ngg_operational_sup', 'ngg_operation_history_answer.id_oper_ha', 'ngg_operational_sup.id_ops')
                ->where('assessed_ha', $code_staff)
                ->where('60or90', '60')
                ->where('active_ha', '1')->get();

            $data_90_B = DB::table('ngg_operation_history_answer')
                ->leftJoin('ngg_operational_sup', 'ngg_operation_history_answer.id_oper_ha', 'ngg_operational_sup.id_ops')
                ->where('assessed_ha', $code_staff)
                ->where('60or90', '90')
                ->where('active_ha', '1')->get();

            $ngg_operational_6090 = DB::table('ngg_operational_6090')
                ->where('assessed', $code_staff)
                ->first();
            $assessor_evascore = DB::table('users_detail')
                ->where('Code_Staff', $ngg_operational_score_60->assessor_evascore)
                ->first();

            $data = array(
                'data_60_B' => $data_60_B,
                'data_90_B' => $data_90_B,
                'users_detail' => $users_detail,
                'ngg_operational_6090' => $ngg_operational_6090,
                'ngg_operational_score_60' => $ngg_operational_score_60,
                'ngg_operational_score_90' => $ngg_operational_score_90,
                'assessor_evascore' => $assessor_evascore,

            );
        }

        $pdf = PDF::loadView('assessor.index_pdf', $data);
        return @$pdf->stream('ผลการประเมิน' . $code_staff . '.pdf');
    }

    public function evaluationman($code_staff, $degree)
    {

        if ($degree == 'ระดับปฏิบัติการ') {
            $users_detail = DB::table('users_detail')
            ->where('Code_Staff', $code_staff)
            ->first();

        $data_60_A = DB::table('ngg_operation_manual')
            ->where('code_staff_operation_manual', $code_staff)
            ->where('60or90_operation_manual', '60')
            ->where('active_operation_manual', '1')->get();

        $data_60_ASUM = DB::table('ngg_operation_manual')
            ->where('code_staff_operation_manual', $code_staff)
            ->where('60or90_operation_manual', '60')
            ->where('active_operation_manual', '1')->sum('answer_operation_manual');

        $data_90_A = DB::table('ngg_operation_manual')
            ->where('code_staff_operation_manual', $code_staff)
            ->where('60or90_operation_manual', '90')
            ->where('active_operation_manual', '1')->get();

        $data_90_ASUM = DB::table('ngg_operation_manual')
            ->where('code_staff_operation_manual', $code_staff)
            ->where('60or90_operation_manual', '90')
            ->where('active_operation_manual', '1')->sum('answer_operation_manual');

        $ngg_operational_6090 = DB::table('ngg_operational_6090')
            ->where('assessed', $code_staff)
            ->first();

        $assessor_evascore = DB::table('users_detail')
            ->where('Code_Staff', $ngg_operational_6090->assessor)
            ->first();

        $data = array(
            'data_60_A' => $data_60_A,
            'data_90_A' => $data_90_A,
            'users_detail' => $users_detail,
            'ngg_operational_6090' => $ngg_operational_6090,
            'assessor_evascore' => $assessor_evascore,
            'data_60_ASUM' =>    $data_60_ASUM,
            'data_90_ASUM' =>   $data_90_ASUM

        );

        } else if ($degree == 'ระดับผู้บังคับบัญชา') {

            $users_detail = DB::table('users_detail')
                ->where('Code_Staff', $code_staff)
                ->first();

            $data_60_B = DB::table('ngg_operation_manual')
                ->where('code_staff_operation_manual', $code_staff)
                ->where('60or90_operation_manual', '60')
                ->where('active_operation_manual', '1')->get();

            $data_60_BSUM = DB::table('ngg_operation_manual')
                ->where('code_staff_operation_manual', $code_staff)
                ->where('60or90_operation_manual', '60')
                ->where('active_operation_manual', '1')->sum('answer_operation_manual');

            $data_90_B = DB::table('ngg_operation_manual')
                ->where('code_staff_operation_manual', $code_staff)
                ->where('60or90_operation_manual', '90')
                ->where('active_operation_manual', '1')->get();

            $data_90_BSUM = DB::table('ngg_operation_manual')
                ->where('code_staff_operation_manual', $code_staff)
                ->where('60or90_operation_manual', '90')
                ->where('active_operation_manual', '1')->sum('answer_operation_manual');

            $ngg_operational_6090 = DB::table('ngg_operational_6090')
                ->where('assessed', $code_staff)
                ->first();

            $assessor_evascore = DB::table('users_detail')
                ->where('Code_Staff', $ngg_operational_6090->assessor)
                ->first();

            $data = array(
                'data_60_B' => $data_60_B,
                'data_90_B' => $data_90_B,
                'users_detail' => $users_detail,
                'ngg_operational_6090' => $ngg_operational_6090,
                'assessor_evascore' => $assessor_evascore,
                'data_60_BSUM' =>    $data_60_BSUM,
                'data_90_BSUM' =>   $data_90_BSUM

            );
        }

        $pdf = PDF::loadView('assessor.index_pdf_man', $data);
        return @$pdf->stream('ผลการประเมิน' . $code_staff . '.pdf');
    }

}
