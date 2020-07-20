@extends('layouts.app')
@section('js')
<script type="text/javascript">
    var resize1 = $('#upload-image').croppie({
        enableExif: true,
        enableOrientation: true,
        viewport: { // Default { width: 100, height: 100, type: 'square' }
            width: 300,
            height: 300,
            type: 'square' //square
        },
        boundary: {
            width: 400,
            height: 400
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

    function mycroppie() {
        resize1.croppie('result', {
        type: 'canvas',
        size: 'viewport'
      }).then(function (img) {
        document.getElementById("image_roppie").value = img;
      
      });
    }

</script>

@endsection

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
          รายชื่อพนักงาน<a href="javascript:void(0)" class="btn btn-success btn-xs addusername" data-id="">เพิ่มผู้ใช้งาน</a>
        </div>
        <form style="border: 4px solid #a1a1a1;margin-top: 15px;padding: 10px;" action="{{ url('importDataUser') }}" class="form-horizontal" method="post" enctype="multipart/form-data">
          @csrf
          <input type="file" name="import_file" />
          <button class="btn btn-primary">Import File</button>
      </form>
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
      <div class="modal fade" id="modal-username">
        <div class="modal-dialog modal-lg">
          <div class="modal-content">
            <div class="modal-header">
              <h4 class="modal-title" id="headText"></h4>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <form id="form-addusername" role="form">
              <input type="hidden" name="id"  id="id" >
              <div class="modal-body">
                  <div class="row">
                    <div class="col-md-6">
                      <div class="form-grop">
                      <label>รูปภาพ:</label><label class="text-danger">*</label>
                      <input type="file" name="image" id="image" required/>
                    </div>
                    </div>
                    <div class="col-md-6">
                      <div class="form-grop">
                      <label>ชื่อผู้ใช้งาน:</label> <label class="text-danger">*รหัสเข้าใช้ครั้งแรก 0000</label>
                      <input type="text" name="usernameText" id="usernameText" class="form-control"  required maxlength="5" minlength="5"/>
                    </div>
                  </div>
                  </div>
  
                  <div class="row">
                    <div class="col-md-6">
                      <div class="form-grop">
                      <label>ชื่อ-สกุล:</label><label class="text-danger">*</label>
                      <input type="text" name="nameText" id="nameText" class="form-control"  required/>
                    </div>
                  </div>
                    <div class="col-md-6">
                      <div class="form-grop">
                      <label>ฝ่าย:</label><label class="text-danger">*</label>
                      <select class="form-control select2" name="factionText" id="factionText" required>
                        <option value="">ระบุ</option>
                         @foreach ($unique_faction as $item)
                          <option value="{{$item}}">{{$item}}</option>
                         @endforeach
                      </select>
                    
                    </div>
                  </div>
                  </div>
  
                 <div class="row">
                    <div class="col-md-6">
                      <div class="form-grop">
                      <label>แผนก:</label><label class="text-danger">*</label>
                      <select class="form-control select2" name="departmentText" id="departmentText" required>
                        <option value="">ระบุ</option>
                         @foreach ($unique_department as $item)
                          <option value="{{$item}}">{{$item}}</option>
                         @endforeach
                      </select>
                     
                    </div>
                  </div>
                    <div class="col-md-6">
                      <div class="form-grop">
                      <label>ตำแหน่ง:</label><label class="text-danger">*</label>
                      <select class="form-control select2" name="positionText" id="positionText" required>
                        <option value="">ระบุ</option>
                         @foreach ($unique_position as $item)
                          <option value="{{$item}}">{{$item}}</option>
                         @endforeach
                      </select>
                   
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col-md-6">
                    <div class="form-grop">
                      <label>บริษัท:</label><label class="text-danger">*</label>
                      <select class="form-control select2" name="companyText" id="companyText" required>
                        <option value="">ระบุ</option>
                         @foreach ($unique_company as $item)
                          <option value="{{$item}}">{{$item}}</option>
                         @endforeach
                      </select>
                   
                    </div>
                  </div>
                </div>


                <br><br>
                <div class="row">
                  <div class="col-md-12">
                    <div id="upload-image" ></div>
                  </div>
                </div>
                
                <input type="hidden" name="image_roppie"  id="image_roppie" />
              </div>
              <div class="modal-footer justify-content-between">
                <button type="button" class="btn btn-default" data-dismiss="modal">ปิด</button>
                <button type="submit" class="btn btn-info"  onclick="mycroppie()">บันทึก</button>
              </div>
            </form>
           
          </div>
          <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
      </div>
      <!-- /.modal -->
@endsection
