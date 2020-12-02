@extends('layouts.app')

@section('js')
    <script>
        function encodeImageFileAsURL1(element) {
            var file = element.files[0];
            var reader = new FileReader();
            reader.onloadend = function() {

                $('#image').val(reader.result);
            }
            reader.readAsDataURL(file);
        }

        

    </script>
@endsection


@section('content')

    <a href="{{ url('/km360') }}">ย้อนกลับ</a>
    <br>
    <br>
    <div class="row">
        <div class="col-lg-12">
            <!-- Basic Card Example -->
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">เพิ่มหมวดความรู้</h6>
                </div>
                <div class="card-body">
                    <form class="user" action="{{ url('/addnew_detail_km_category') }}" method="POST"
                        enctype="multipart/form-data">
                        @csrf
                        <div class="form-group">
                            <input type="file" class="form-control form-control-user" name="image_" onchange="encodeImageFileAsURL1(this)" required multiple>
                            <input type="hidden" name="image" value="" id="image">
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control form-control-user" id="km_title"
                                placeholder="หัวเรื่องความรู้" name="km_title" required>
                        </div>
                        <div class="form-group">

                            <div class="mb-3">
                                <textarea class="textarea" placeholder="Place some text here" name="km_important"
                                    id="km_important"
                                    style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"></textarea>
                            </div>

                        </div>
                        <div class="form-group">
                            <select class="form-control " id="type_id" name="type_id" required>
                                <option value="">ระบุหมวดความรู้</option>
                                @foreach ($km as $ikms)
                                    <option value="{{ $ikms->id_km_cat }}">{{ $ikms->name_category_thai }}</option>
                                @endforeach
                            </select>

                        </div>
                        <div class="form-group">
                            <select class="form-control " id="ngg_km_separate" name="ngg_km_separate" required>
                                <option value="">กลุ่มความรู้</option>
                                @foreach ($ngg_km_separate as $ngg_km_separates)
                                <option value="{{ $ngg_km_separates->id_s }}">{{ $ngg_km_separates->km_separat }}</option>
                            @endforeach
                            </select>

                        </div>

                        ข้อความสำหรับการแจ้งเตือน
                        <textarea rows="4" class="form-control" name="noti" placeholder="ข้อความสำหรับการแจ้งเตือน"
                            required>

                    </textarea>
                        <br>
                        <input type="submit" class="btn btn-success" value="บันทึก">
                    </form>
                </div>
            </div>

        </div>
    </div>


   








































@endsection
