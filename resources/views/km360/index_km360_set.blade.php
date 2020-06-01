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
  <div class="card shadow mb-4">
      <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">หมวดความรู้ <a href="{{url('/addnew_km_category')}}" class="btn btn-success btn-xs">เพิ่มหมวดความรู้</a></h6>
      </div>
      <div class="card-body">
        <div class="table-responsive">
            <table class="table table-bordered table-sm" id="posts_km360">
                <thead>
                    <th align="center">หมวดความรู้</th>
                    <th>ชื่ออังกฤษ</th>
                    <th>ชื่อไทย</th>
                    <th>เพิ่มเติม</th>
                </thead>
           </table>
        </div>
      </div>
    </div>

        <br>
        <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">ข้อมูลหมวดความรู้    <a href="{{url('/addnew_km_category_detail')}}" class="btn btn-success btn-xs">เพิ่มข้อมูลหมวดความรู้</a></h6>
            </div>
            <div class="card-body">
              <div class="table-responsive">

                <table class="table table-bordered table-sm" id="posts_List_km360">
                    <thead>
                        <th align="center">หมวดความรู้</th>
                        <th>ชื่ออังกฤษ</th>
                        <th>ชื่อไทย</th>
                        <th>เพิ่มเติม</th>
                    </thead>
               </table>
              </div>
            </div>
          </div>
@endsection
