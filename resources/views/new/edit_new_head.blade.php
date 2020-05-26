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
        <form class="user"  action="{{url('/editnew_head_save/'.$advertise_heade->id)}}" method="POST"  enctype="multipart/form-data">
            @csrf
                <div class="form-group">
                 <input type="file"   class="form-control form-control-user" name="image"  required >
                  </div>
                <div class="form-group">
                <input type="text" class="form-control form-control-user" id="new_head" placeholder="ชื่อหมวด" name="new_head" value="{{$advertise_heade->name_adver}}" required>
                </div>
              <input type="submit"   class="btn btn-success" value="บันทึก" >
        </form>
        </div>
      </div>

    </div>
</div>

@endsection