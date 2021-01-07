@extends('layouts.app')

@section('js')
    <script>
        function encodeImageFileAsURL1(element) {
            var file = element.files[0];
            var reader = new FileReader();
            reader.onloadend = function() {

                $('#imagebanner').val(reader.result);
            }
            reader.readAsDataURL(file);
        }

        function encodeImageFileAsURL2(element) {
            var file = element.files[0];
            var reader = new FileReader();
            reader.onloadend = function() {

                $('#image_info').val(reader.result);
            }
            reader.readAsDataURL(file);
        }

    </script>
@endsection

@section('content')
    <a href="{{ url('/settinnew') }}">ย้อนกลับ</a>
    <br>

  


    <div class="row">
        <div class="col-md-12">
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">เพิ่มหมวดข่าว</h6>
                </div>
                <div class="card-body">
                    <form class="user" action="{{ url('/addnew_list_save') }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="form-group">
                            <label>รูปข่าว banner  ขนาด 1280 *  720</label>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <div class="col-md-4 text-center">
                                        <input type="file" id="image" name="image" onchange="encodeImageFileAsURL1(this)"
                                            required>
                                    </div>

                                </div>
                                <input type="hidden" name="imagebanner" value="" id="imagebanner">
                            </div>
                            <div class="form-group">
                                <input type="checkbox" value="1" name="get_banner" id="get_banner"> ให้แสดงหน้า Home Banner
                            </div>
                            <div class="form-group">
                                <label>รูปข่าวเนื้อหา  ขนาด 500 *  500</label>
                                <div class="col-md-6">
                                    <input type="file" id="image_" name="image_" onchange="encodeImageFileAsURL2(this)"
                                        required>
                                </div>
                                <input type="hidden" name="image_info" value="" id="image_info">
                            </div>

                            <div class="form-group">
                                <input type="text" class="form-control form-control-user" id="subject"
                                    placeholder="เรื่องข่าว" name="subject" required>
                            </div>
                            <div class="form-group">

                                <div class="mb-3">
                                    <textarea class="textarea" placeholder="Place some text here" name="explain"
                                        id="explain"
                                        style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"></textarea>
                                </div>

                            </div>

                            <div class="form-group">
                                <select class="form-control " id="type_id" name="type_id" required>
                                    <option value="">ระบุหมวดข่าว</option>
                                    @foreach ($advertise_heade as $item)
                                        <option value="{{ $item->id }}">{{ $item->name_adver }}</option>
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

                                    <input type="radio" class="form-check-input" name="micocat" value="3">"วิทยุ"
                                    เข้าใจง่ายไม่ตกเทรนด์

                                </label>
                            </div>
                            ข้อความสำหรับการแจ้งเตือน
                            <textarea rows="4" class="form-control" name="noti" placeholder="ข้อความสำหรับการแจ้งเตือน"
                                required>

                      </textarea>
                            <br>
                            <input type="submit" class="btn btn-success" value="บันทึก" onclick="mycroppie()">
                    </form>
                </div>
            </div>

        </div>
    </div>
@endsection
