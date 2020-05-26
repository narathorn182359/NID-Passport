@extends('layouts.app')
@section('content')

<a href="{{url('/settinnew')}}">ย้อนกลับ</a>
<br>
<br>
<div class="row">

    <div class="col-md-12">
      <!-- Basic Card Example -->
      <div class="card shadow mb-4">
        <div class="card-header py-3">
          <h6 class="m-0 font-weight-bold text-primary">แก้ไขหมวดข่าว</h6>
        </div>
        <div class="card-body">
        <form class="user"  action="{{url('/editnew_list_save/'.$advertise->id_ad)}}" method="POST"  enctype="multipart/form-data">
            @csrf
            <div class="form-group">
              <label>รูปข่าว banner</label>
              <input type="file"   class="form-control form-control-user" name="imagebanner"   >
               </div>
               <div class="form-group">
                   @if($ngg_banner->active_banner == '1')
                   <input  type="checkbox"  value="1"  name="get_banner" id="get_banner"  checked> ให้แสดงหน้า Home Banner
                   @else
                   <input  type="checkbox"  value="0"  name="get_banner" id="get_banner"  > ให้แสดงหน้า Home Banner
                   @endif

              </div>
                <div class="form-group">
                  <label>รูปข่าวเนื้อหา</label>
                 <input type="file"   class="form-control form-control-user" name="image"   >
                  </div>

                <div class="form-group">
                <input type="text" class="form-control form-control-user" id="subject" placeholder="เรื่องข่าว" name="subject"  value="{{$advertise->subject}}" required>
                </div>
                <div class="form-group">
                  <div class="mb-3">
                    <textarea class="textarea" placeholder="Place some text here"  name="explain" id="explain"   rows="90"
                              style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;">

                              {{$advertise->explain}}
                            </textarea>
                  </div>

                  </div>
                  <div class="form-group">
                      <select class="form-control " id="type_id"   name="type_id" required>
                          <option value="{{$advertise->type_id}}">{{$advertise->name_adver}}</option>
                           @foreach ($advertise_heade as $item )
                      <option value="{{$item->id}}">{{$item->name_adver}}</option>
                           @endforeach
                      </select>

                  </div>
                  กรณีหมวด micro learning   {{$advertise->mc}}
                  <div class="form-check">
                    <label class="form-check-label">
                      @if($advertise->mc == '1')
                      <input type="radio" class="form-check-input" name="micocat" checked value="1">ความรู้ทั่วไป
                      @else
                      <input type="radio" class="form-check-input" name="micocat" value="1">ความรู้ทั่วไป
                      @endif

                    </label>
                  </div>
                  <div class="form-check">
                    <label class="form-check-label">
                      @if($advertise->mc == '2')
                      <input type="radio" class="form-check-input" name="micocat" checked value="2">ความรู้ในการทำงาน
                      @else
                      <input type="radio" class="form-check-input" name="micocat"  value="2" >ความรู้ในการทำงาน
                      @endif

                    </label>
                  </div>
                  <div class="form-check">
                    <label class="form-check-label">
                      @if($advertise->mc == '3')
                      <input type="radio" class="form-check-input" name="micocat" checked value="3">"วิทยุ" เข้าใจง่ายไม่ตกเทรนด์
                      @else
                      <input type="radio" class="form-check-input" name="micocat"  value="3" >"วิทยุ" เข้าใจง่ายไม่ตกเทรนด์
                      @endif

                    </label>
                  </div>
              <input type="submit"   class="btn btn-success" value="บันทึก" >
        </form>
        </div>
      </div>

    </div>
</div>


@endsection
