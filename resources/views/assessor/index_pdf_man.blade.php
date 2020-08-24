<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <style>
        @font-face {
            font-family: 'THSarabunNew';
            font-style: normal;
            font-weight: normal;
            src: url("{{ public_path('fonts/THSarabunNew.ttf') }}") format('truetype');
        }

        @font-face {
            font-family: 'THSarabunNew';
            font-style: normal;
            font-weight: bold;
            src: url("{{ public_path('fonts/THSarabunNew Bold.ttf') }}") format('truetype');
        }

        @font-face {
            font-family: 'THSarabunNew';
            font-style: italic;
            font-weight: normal;
            src: url("{{ public_path('fonts/THSarabunNew Italic.ttf') }}") format('truetype');
        }

        @font-face {
            font-family: 'THSarabunNew';
            font-style: italic;
            font-weight: bold;
            src: url("{{ public_path('fonts/THSarabunNew BoldItalic.ttf') }}") format('truetype');
        }

        body {
            font-family: "THSarabunNew";
        }

        table,
        td,
        th {
            border: 1px solid black;

        }

        table {

            border-collapse: collapse;

        }

        .page_break {
            page-break-before: always;
        }

    </style>
</head>

<body>
    <table style="width: 100%">

        <tr>


            <td align="center" colspan="3" style=" border: 1px solid rgb(255, 255, 255);"><img
                    src="{{ public_path('/img/NGG.jpg') }}" alt="" width="90px" height="90px">
            </td>
        </tr>
        <tr>
            <td colspan="3" align="center" style=" border: 1px solid rgb(255, 255, 255);">
                <h2> รายงานผลการทดลองงาน</h2>
            </td>
        </tr>
        <tr>

            <td style=" border: 1px solid rgb(255, 255, 255);" style="width: 40%"
                style=" border: 1px solid rgb(255, 255, 255);"><b>ชื่อ-สกุล:</b> {{ $users_detail->Name_Thai }}</td>
            <td style=" border: 1px solid rgb(255, 255, 255);"><b>ตำแหน่ง:</b> {{ $users_detail->Position }}</td>
            <td style=" border: 1px solid rgb(255, 255, 255);"><b>ฝ่าย:</b> {{ $users_detail->Faction }}</td>
        </tr>
        <tr>

            <td style=" border: 1px solid rgb(255, 255, 255);"><b>แผนก:</b> {{ $users_detail->Department }}</td>
            <td style=" border: 1px solid rgb(255, 255, 255);" colspan="2"><b>บริษัท:</b> {{ $users_detail->Company }}
            </td>

        </tr>

    </table>
    @isset($data_60_B)

        <table style="width: 100%">
            <tr>
                <th style="width: 60px">ชื่อ KPI:</th>
                <th>ลักษณะตัวชี้วัดผลงาน เพื่อใช้ในการคำนวณ:</th>
                <th>หน่วยนับ:</th>
                <th>น้ำหนัก (%):</th>
                <th> เป้าหมาย 60 วัน:</th>
                <th> ทำได้:</th>
                <th> ผล:</th>
                <th>ตั้งแต่วันที่ {{ $ngg_operational_6090->pass_60 }} </th>
            </tr>
            @foreach ($data_60_B as $item)
                <tr>
                    <td>{{ $item->kpi_operation_manual }}</td>
                    <td align="center">{{ $item->performance_indicators_operation_manual }}</td>
                    <td align="center">{{ $item->unit_operation_manual }}</td>
                    <td align="center">{{ $item->weight_operation_manual }} %</td>
                    <td align="center">{{ $item->target_60_operation_manual }}</td>
                    <td align="center">{{ $item->seccess_60_operation_manual }}</td>
                    <td align="center">{{ $item->answer_operation_manual }}%</td>
                    <td align="center"></td>
                </tr>
            @endforeach

            <tr>
                <td colspan="6" align="center">รวม</td>

                <td align="center">{{ $data_60_BSUM }}%</td>
                <td></td>
            </tr>
        </table>

    @endisset


    <br>
    @isset($data_60_A)

    <table style="width: 100%">
        <tr>
            <th style="width: 60px">ชื่อ KPI</th>
            <th>ลักษณะตัวชี้วัดผลงาน เพื่อใช้ในการคำนวณ</th>
            <th>หน่วยนับ</th>
            <th>น้ำหนัก (%)</th>
            <th> เป้าหมาย 60 วัน</th>
            <th> ทำได้</th>
            <th> ผลรวม</th>
            <th>ตั้งแต่วันที่ {{ $ngg_operational_6090->pass_60 }} </th>
        </tr>
        @foreach ($data_60_A as $item)
            <tr>
                <td>{{ $item->kpi_operation_manual }}</td>
                <td align="center">{{ $item->performance_indicators_operation_manual }}</td>
                <td align="center">{{ $item->unit_operation_manual }}</td>
                <td align="center">{{ $item->weight_operation_manual }} %</td>
                <td align="center">{{ $item->target_60_operation_manual }}</td>
                <td align="center">{{ $item->seccess_60_operation_manual }}</td>
                <td align="center">{{ $item->answer_operation_manual }}%</td>
                <td align="center"></td>
            </tr>
        @endforeach

        <tr>
            <td colspan="6" align="center">รวม</td>

            <td align="center">{{ $data_60_ASUM }}%</td>
            <td></td>
        </tr>
    </table>

@endisset


<br>


@isset($data_90_A)
    <table style="width: 100%">
        <tr>
            <th style="width: 60px">ชื่อ KPI</th>
            <th>ลักษณะตัวชี้วัดผลงาน เพื่อใช้ในการคำนวณ</th>
            <th>หน่วยนับ</th>
            <th>น้ำหนัก (%)</th>
            <th> เป้าหมาย 60 วัน</th>
            <th> ทำได้</th>
            <th> ผลรวม</th>
            <th>ตั้งแต่วันที่ {{ $ngg_operational_6090->pass_90 }} </th>
        </tr>
        @foreach ($data_90_A as $item)
            <tr>
                <td>{{ $item->kpi_operation_manual }}</td>
                <td align="center">{{ $item->performance_indicators_operation_manual }}</td>
                <td align="center">{{ $item->unit_operation_manual }}</td>
                <td align="center">{{ $item->weight_operation_manual }} %</td>
                <td align="center">{{ $item->target_60_operation_manual }}</td>
                <td align="center">{{ $item->seccess_60_operation_manual }}</td>
                <td align="center">{{ $item->answer_operation_manual }}%</td>
                <td align="center"></td>
            </tr>
        @endforeach

        <tr>
            <td colspan="6" align="center">รวม</td>

            <td align="center">{{ $data_90_ASUM }}%</td>
            <td></td>
        </tr>
    </table>

@endisset



    @isset($data_90_B)
        <table style="width: 100%">
            <tr>
                <th style="width: 60px">ชื่อ KPI:</th>
                <th>ลักษณะตัวชี้วัดผลงาน เพื่อใช้ในการคำนวณ:</th>
                <th>หน่วยนับ:</th>
                <th>น้ำหนัก (%):</th>
                <th> เป้าหมาย 60 วัน:</th>
                <th> ทำได้:</th>
                <th> ผล:</th>
                <th>ตั้งแต่วันที่ {{ $ngg_operational_6090->pass_90 }} </th>
            </tr>
            @foreach ($data_90_B as $item)
                <tr>
                    <td>{{ $item->kpi_operation_manual }}</td>
                    <td align="center">{{ $item->performance_indicators_operation_manual }}</td>
                    <td align="center">{{ $item->unit_operation_manual }}</td>
                    <td align="center">{{ $item->weight_operation_manual }} %</td>
                    <td align="center">{{ $item->target_60_operation_manual }}</td>
                    <td align="center">{{ $item->seccess_60_operation_manual }}</td>
                    <td align="center">{{ $item->answer_operation_manual }}%</td>
                    <td align="center"></td>
                </tr>
            @endforeach

            <tr>
                <td colspan="6" align="center">รวม</td>

                <td align="center">{{ $data_90_BSUM }}%</td>
                <td></td>
            </tr>
        </table>

    @endisset

    <table style="width: 100%">

        <tr>

            <td style=" border: 1px solid rgb(255, 255, 255);" align="center"><b>ลงชื่อผู้ประเมิน:</b><br>
                ....................................................................<br>
                {{ $assessor_evascore->Name_Thai }} ({{ $assessor_evascore->Position }})
            </td>
            <td style=" border: 1px solid rgb(255, 255, 255);" colspan="2" align="center">
                <b>ลงชื่อพนักงาน:</b><br>....................................................................<br>
                {{ $users_detail->Name_Thai }} ( {{ $users_detail->Position }} )
            </td>

        </tr>

    </table>


</body>

</html>
