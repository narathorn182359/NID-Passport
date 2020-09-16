@extends('layouts.app')

@section('js')

<script type="text/javascript">


    var resize1 = $('#upload-demo').croppie({
        enableExif: true,
        enableOrientation: true,
        viewport: { // Default { width: 100, height: 100, type: 'square' }
            width: 1280,
            height: 720,
            type: 'square' //square
        },
        boundary: {
          width: 1380,
            height: 820,
        }
    });


    $('#image').on('change', function () {
      var reader = new FileReader();
        reader.onload = function (e) {
          resize1.croppie('bind',{
            url: e.target.result
          }).then(function(){
            console.log('jQuery bind complete');
          });
        }
        reader.readAsDataURL(this.files[0]);


    });


    var resize_info = $('#upload-info').croppie({
        enableExif: true,
        enableOrientation: true,
        viewport: { // Default { width: 100, height: 100, type: 'square' }
            width: 500,
            height: 500,
            type: 'square' //square
        },
        boundary: {
            width: 600,
            height: 600
        }
    });


    $('#image_').on('change', function () {
      var reader_i = new FileReader();
           reader_i.onload = function (e) {
            resize_info.croppie('bind',{
            url: e.target.result
          }).then(function(){
            console.log('jQuery bind complete');
          });
        }
        reader_i.readAsDataURL(this.files[0]);


    });

    </script>

<script>
    function mycroppie() {

        resize1.croppie('result', {
        type: 'canvas',
        size: 'viewport'
      }).then(function (img) {
        document.getElementById("imagebanner").value = img;
        console.log(img)

      });

      resize_info.croppie('result', {
        type: 'canvas',
        size: 'viewport'
      }).then(function (img) {
        document.getElementById("image_info").value = img;
        console.log(img)

      });

    }
    </script>

@endsection

@section('content')
<a href="{{url('/settinnew')}}">ย้อนกลับ</a>
<br>
<div class="row">

  </div>
  <div class="card shadow mb-4">
    <div class="card-header py-3">
      <h6 class="m-0 font-weight-bold text-primary">เพิ่มวิดิโอ  <a href="{{url('/addnew_libary_video_new')}}" class="btn btn-success btn-xs">วิดิโอ</a></h6>
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
<div  class="row">
    <div class="col-md-12">
    <div class="card shadow mb-4">
        <div class="card-header py-3">
          <h6 class="m-0 font-weight-bold text-primary">ชุดรูปภาพ  <a href="{{url('/addnew_libary_img_add')}}" class="btn btn-success btn-xs">เพิ่มชุดรูปภาพ</a></h6>
        </div>
        <div class="card-body">
          <div class="table-responsive">
              <table class="table table-bordered table-sm" id="posts_libraryimg">
                  <thead>
                      <th>ชื่อหมวดหมู่</th>
                      <th>ชื่อหมวดหมู่ไทย</th>
                      <th>เพิ่มเติม</th>
                  </thead>
             </table>

          </div>
        </div>
      </div>
    </div>
</div>


<div class="row">
  <div class="col-md-12">
      <div class="card shadow mb-4">
        <div class="card-header py-3">
          <h6 class="m-0 font-weight-bold text-primary">เพิ่มหมวดข่าว</h6>
        </div>
        <div class="card-body">
        <form class="user"  action="{{url('/addnew_list_save')}}" method="POST"  enctype="multipart/form-data">
            @csrf
            <div class="form-group">
              <label>รูปข่าว banner</label>
              <div class="col-md-6">
                <div class="form-group">
                 <div class="col-md-4 text-center">
                  <div id="upload-demo" ></div>
                  </div>
                  <div class="col-md-4" style="padding:5%;">
                  <strong>Select image to crop:</strong>
                  <input type="file" id="image"  name="image" required>
                  </div>
                </div>
              </div>
              <input type="hidden" name="imagebanner" value="" id="imagebanner">
               </div>
               <div class="form-group">
               <input  type="checkbox"  value="1"  name="get_banner" id="get_banner"> ให้แสดงหน้า Home Banner
              </div>
                <div class="form-group">
                  <label>รูปข่าวเนื้อหา</label>
                  <div class="col-md-6">
                    <div class="form-group">
                     <div class="col-md-4 text-center">
                         <div  style="width: 50%">

                         </div>
                      <div id="upload-info" ></div>
                      </div>
                      <div class="col-md-4" style="padding:5%;">
                      <strong>Select image to crop:</strong>
                      <input type="file" id="image_"   name="image_" required>
                      </div>
                    </div>
                  </div>
                  <input type="hidden" name="image_info" value="" id="image_info">
                  </div>

                <div class="form-group">
                  <input type="text" class="form-control form-control-user" id="subject" placeholder="เรื่องข่าว" name="subject" required>
                </div>
                <div class="form-group">

                  <div class="mb-3">
                    <textarea class="textarea" placeholder="Place some text here"  name="explain" id="explain"
                              style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"></textarea>
                  </div>

                </div>

                  <div class="form-group">
                      <select class="form-control " id="type_id"   name="type_id" required>
                          <option value="">ระบุหมวดข่าว</option>
                           @foreach ($advertise_heade as $item )
                      <option value="{{$item->id}}">{{$item->name_adver}}</option>
                           @endforeach
                      </select>

                  </div>
                  กรณีหมวด micro learning
                  <div class="form-check">
                    <label class="form-check-label">
                      <input type="radio" class="form-check-input" name="micocat" value="1">ความรู้ทั่วไป
                    </label>
                  </div>
                  <div class="form-check">
                    <label class="form-check-label">
                      <input type="radio" class="form-check-input" name="micocat" value="2">ความรู้ในการทำงาน
                    </label>
                  </div>
                  <div class="form-check">
                    <label class="form-check-label">

                      <input type="radio" class="form-check-input" name="micocat"  value="3" >"วิทยุ" เข้าใจง่ายไม่ตกเทรนด์

                    </label>
                  </div>
                  ข้อความสำหรับการแจ้งเตือน
                  <textarea rows="4" class="form-control" name="noti" placeholder="ข้อความสำหรับการแจ้งเตือน" required>
  
                  </textarea>
                  <br>
              <input type="submit"   class="btn btn-success" value="บันทึก" onclick="mycroppie()"  >
        </form>
        </div>
      </div>

    </div>
</div>
@endsection
