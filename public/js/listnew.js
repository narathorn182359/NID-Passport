$(function () {
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
        $(document).ready(function () {
            $('#posts_listnew').DataTable({
                "processing": true,
                "serverSide": true,
                "ajax":{
                         "url": "/allposts_listnew",
                         "dataType": "json",
                         "type": "POST",
                         "data":{ _token: $('#token').val()}
                       },
                "columns": [
                    { "data": "name_adver" },
                    { "data": "subject" },
                    { "data": "active_banner" },
                    { "data": "options" },

                ]

            });
        });

        $('body').on('click', '.DeleteListNew', function () {
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
                  url: "delete_new_list",
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

          $('body').on('click', '.ShoweBanner', function () {
            var id = $(this).data("id");
            //confirm("Are You sure want to delete !");

            Swal.fire({
              title: 'แสดงภาพหรือไม่แสดง',
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
                  url: "enable_banner",
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

