$(function () {
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
        $(document).ready(function () {
            $('#posts_libraryimg').DataTable({
                "processing": true,
                "serverSide": true,
                "ajax":{
                         "url": "/allposts_LibaryImg",
                         "dataType": "json",
                         "type": "POST",
                         "data":{ _token: $('#token').val()}
                       },
                "columns": [
                    { "data": "name_img" },
                    { "data": "name_part" },
                    { "data": "options" },
                ]

            });
        });

        $('body').on('click', '.DeleteLibraryImg', function () {
            var id = $(this).data("id");;
            //confirm("Are You sure want to delete !");

            Swal.fire({
              title: 'ยืนยันการลบข้อมูล?',
              text: "กรุณาตรวจสอบก่อนยืนยัน!",
              icon: 'info',
              showCancelButton: true,
              confirmButtonColor: '#3085d6',
              cancelButtonColor: '#d33',
              confirmButtonText: 'ตกลง',
              cancelButtonText:  'ยกเลิก',
            }).then((result) => {
              if (result.value) {
                $.ajax({
                    type: "POST",
                    data:{
                        _token: $('#token').val(),
                        id:id
                     },
                  url: "delete_libary_img",
                  success: function (data) {
                    Swal.fire(
                      'ลบข้อมูลสำเร็จ!',
                      'หากสงสัยข้อมูลกรุณาติดต่อทีมพัฒนา',
                      'success'
                    ).then(function(){
                      location.reload();
                      });
                  },
                  error: function (data) {
                    Swal.fire({
                      type: 'error',
                      title: 'ผิดพลาด',
                      text: 'ไม่สามารถลบได้กรุณาติดต่อทีมพัฒนา',
                      confirmButtonText: 'ตกลง',

                    })
                  }
              });

              }
            })
          });



})
