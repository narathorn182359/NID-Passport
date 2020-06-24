@extends('layouts.app')
@section('content')
<div class="row">

    <div class="col-lg-6">
      <!-- Basic Card Example -->
      <div class="card shadow mb-4">
        <div class="card-header py-3">
          <h6 class="m-0 font-weight-bold text-primary">เพิ่มรูปภาพ</h6>
        </div>
        <div class="card-body">
        <form class="user"  action="{{route('add_img_add')}} " method="POST"  enctype="multipart/form-data">
         @csrf
            <div class="form-group">
                 <input type="file"   class="form-control form-control-user" name="name_img"  required>
                  </div>
              <input type="submit"   class="btn btn-success" value="บันทึก" >
        </form>
        </div>
      </div>

    </div>
</div>


@endsection
