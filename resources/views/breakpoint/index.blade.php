@extends('layouts.app')
@section('content')
@if(Session::has('flash_message') )
<div class="card mb-4 py-3 border-left-success">
  <div class="card-body">
    {!! session('flash_message') !!}
  </div>
</div>
@endif
  <br>
  {{-- <div class="card shadow mb-4">
      <div class="card-header py-3">
          จุดพักข้อมูล
      </div>
      <div class="card-body">
        <div class="table-responsive">
            <table class="table table-bordered table-sm" id="get_data_breakpoint" >
                <thead>
                    <th>รหัสพนักงาน</th>
                    <th>ชื่อ-สกุล</th>
                    <th>แผนก</th>
                    <th>ตำแหน่ง</th>
                    <th>เพิ่มเติม</th>
                </thead>
           </table>
        </div>
      </div>
    </div>
    <br> --}}
    <div class="card shadow mb-4">
        <div class="card-header py-3">
          ข้อมูลที่ผ่าน
        </div>
        <div class="card-body">
          <div class="table-responsive">
              <table class="table table-bordered table-sm" id="get_data_ok" >
                  <thead>
                      <th>รูป</th>
                      <th>รหัสพนักงาน</th>
                      <th>ชื่อ-สกุล</th>
                      <th>แผนก</th>
                      <th>ตำแหน่ง</th>
                      <th>สถานะ</th>
                      <th>เพิ่มเติม</th>
                  </thead>
             </table>
          </div>
        </div>
      </div>
@endsection
