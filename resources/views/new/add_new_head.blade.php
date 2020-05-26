@extends('layouts.app')
@section('content')


<a href="{{url('/settinnew')}}">ย้อนกลับ</a>
<br>
<br>
<div class="row">

    <div class="col-lg-6">
      <!-- Basic Card Example -->
      <div class="card shadow mb-4">
        <div class="card-header py-3">
          <h6 class="m-0 font-weight-bold text-primary">เพิ่มหมวดข่าว</h6>
        </div>
        <div class="card-body">
        <form class="user"  action="{{url('/addnew_head_save')}}" method="POST"  enctype="multipart/form-data">
            @csrf
                <div class="form-group">
                 <input type="file"   class="form-control form-control-user" name="image"  required>
                  </div>
                <div class="form-group">
                  <input type="text" class="form-control form-control-user" id="new_head" placeholder="ชื่อหมวดอังกฤษ" name="new_head" required>
                </div>
                <div class="form-group">
                    <input type="text" class="form-control form-control-user" id="new_head_thai" placeholder="ชื่อหมวดไทย" name="new_head_thai" required>
                  </div>

              <input type="submit"   class="btn btn-success" value="บันทึก" >
        </form>
        </div>
      </div>

    </div>
</div>




@endsection
