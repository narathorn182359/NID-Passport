$(function () {
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
        $(document).ready(function () {
            $('#posts_km360').DataTable({
                "processing": true,
                "serverSide": true,
                "ajax":{
                         "url": "/allposts_KM360",
                         "dataType": "json",
                         "type": "POST",
                         "data":{ _token: $('#token').val()}
                       },
                "columns": [
                    { "data": "img" },
                    { "data": "name_category_eng" },
                    { "data": "name_category_thai" },
                    { "data": "options" },
                ]

            });
        });

        $('body').on('click', '.DeleteKM360', function () {
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
                  url: "delete_km_category",
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


          $(document).ready(function () {
            $('#posts_List_km360').DataTable({
                "processing": true,
                "serverSide": true,
                "ajax":{
                         "url": "/allposts_List_KM360",
                         "dataType": "json",
                         "type": "POST",
                         "data":{ _token: $('#token').val()}
                       },
                "columns": [
                    { "data": "id" },
                    { "data": "name_category_thai" },
                    { "data": "km_title" },
                    { "data": "options" },
                ]

            });
        });




        $('body').on('click', '.DeleteListKM360', function () {
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
                  url: "delete_km_category_detail",
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
