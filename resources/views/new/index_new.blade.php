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
<div class="row">

  </div>
  <div class="card shadow mb-4">
    <div class="card-header py-3">
      <h6 class="m-0 font-weight-bold text-primary">เพิ่มวิดิโอ  <a href="{{url('/addnew_libary_video')}}" class="btn btn-success btn-xs">วิดิโอ</a></h6>
    </div>
    <div class="card-body">
      <div class="table-responsive">
          <table class="table table-bordered table-sm" id="posts_video">
              <thead>
                  <th>วิดิโอ</th>
                  <th>ชื่อภาษาอังกฤษ</th>
                  <th>ชื่อภาษาไทย</th>
                  <th>URL</th>
                  <th>เพิ่มเติม</th>
              </thead>
         </table>
      </div>
    </div>
  </div>
  <br>
  <div class="card shadow mb-4">
      <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">ชุดรูปภาพ  <a href="{{url('/addnew_libary_img')}}" class="btn btn-success btn-xs">เพิ่มชุดรูปภาพ</a></h6>
      </div>
      <div class="card-body">
        <div class="table-responsive">
            <table class="table table-bordered table-sm" id="posts_libraryimg">
                <thead>
                    <th>รูป</th>
                    <th>ชื่อหมวดหมู่ไทย</th>
                    <th>เพิ่มเติม</th>
                </thead>
           </table>

        </div>
      </div>
    </div>
<br>
    <div class="card shadow mb-4">
        <div class="card-header py-3">
          <h6 class="m-0 font-weight-bold text-primary">หมวดหมู่ข่าว <a href="{{url('/addnew_head')}}" class="btn btn-success  btn-xs">เพิ่มหมวดหมู่ข่าว</a></h6>
        </div>
        <div class="card-body">
          <div class="table-responsive">
            <table class="table table-bordered table-sm" id="posts_category">
                <thead>
                    <th>ชื่อหมวดหมู่</th>
                    <th>ชื่อหมวดหมู่ไทย</th>
                    <th>เพิ่มเติม</th>
                </thead>
           </table>
          </div>
        </div>
      </div>
    <br>

    <br>
    <div class="card shadow mb-4">
        <div class="card-header py-3">
          <h6 class="m-0 font-weight-bold text-primary">รายการข่าว   <a href="{{url('/addnew_list')}}" class="btn btn-success  btn-xs">เพิ่มรายการข่าว</a></h6>
        </div>
        <div class="card-body">
          <div class="table-responsive">

            <table class="table table-bordered table-sm" id="posts_listnew">
                <thead>
                    <th>หมวดหมู่</th>
                    <th>ชื่อ</th>
                    <th>สถานะโชว์</th>
                    <th>ลำดับการแสดง</th>
                    <th>เพิ่มเติม</th>
                </thead>
           </table>

          </div>
        </div>
      </div>


      <div class="modal fade" id="modal-Setbanner">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h4 class="modal-title">กำหนดลำดับการแสดง</h4>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <form id="FromSaveBanner">
              <div class="modal-body">
                <input   type="hidden" id="id_number" name="id_number" />
              <input  type="number"  min="0"  class="form-control"  name="number"  id="number"   required placeholder="1"/>
              </div>
              <div class="modal-footer justify-content-between">
                <button type="button" class="btn btn-default" data-dismiss="modal">ยกเลิก</button>
                <button type="submit" class="btn btn-primary">บันทึก</button>
              </div>
            </form>
          
          </div>
          <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
      </div>
      <!-- /.modal -->

@endsection
