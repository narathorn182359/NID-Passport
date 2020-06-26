@extends('layouts.app')
@section('content')


<a href="{{url('/addnew_list')}}">ย้อนกลับ</a>
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
        <form class="user"  action="{{url('/addnew_video')}}" method="POST"  enctype="multipart/form-data">
            @csrf
                <div class="form-group">
                 <input type="file"   class="form-control form-control-user" name="video"  required>
                  </div>
                <div class="form-group">
                  <input type="text" class="form-control form-control-user" id="new_video_en" placeholder="ชื่อหมวดอังกฤษ" maxlength="50" name="new_video_en" required>
                </div>
                <div class="form-group">
                    <input type="text" class="form-control form-control-user" id="new_video_th" placeholder="ชื่อหมวดไทย" maxlength="50"      name="new_video_th" required>
                  </div>

              <input type="submit"   class="btn btn-success" value="บันทึก" >
        </form>
        <br>
        <div class="progress">
            <div class="bar"></div >
            <div class="percent">0%</div >
        </div>
        </div>
      </div>

    </div>
</div>


@endsection

@section('js')
<script src="{{asset('js/jquery.form.js')}}"></script>
<script type="text/javascript">

    function validate(formData, jqForm, options) {
        var form = jqForm[0];
        if (!form.video.value) {
            alert('File not found');
            return false;
        }
    }

    (function() {

    var bar = $('.bar');
    var percent = $('.percent');
    var status = $('#status');

    $('form').ajaxForm({
        beforeSubmit: validate,
        beforeSend: function() {
            status.empty();
            var percentVal = '0%';
            var posterValue = $('input[name=file]').fieldValue();
            bar.width(percentVal)
            percent.html(percentVal);
        },
        uploadProgress: function(event, position, total, percentComplete) {
            var percentVal = percentComplete + '%';
            bar.width(percentVal)
            percent.html(percentVal);
            if(percentComplete == 100){
                percent.html('Wait, Saving');
            }

        },
        success: function() {
            var percentVal = 'Wait, Saving';
            bar.width(percentVal)
            percent.html(percentVal);
        },
        complete: function(xhr) {
            status.html(xhr.responseText);
            alert('Uploaded Successfully');
            window.location.href = "/addnew_list";
        }
    });

    })();
</script>


@endsection
