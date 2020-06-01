$(function () {
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });



        $(document).ready(function () {
            $('#get_data_breakpoint').DataTable({
                "processing": true,
                "serverSide": true,
                "ajax":{
                         "url": "/get_data_breakpoint",
                         "dataType": "json",
                         "type": "POST",
                         "data":{ _token: $('#token').val()}
                       },
                "columns": [

                    { "data": "Code_Staff" },
                    { "data": "Name_Thai" },
                    { "data": "Position" },
                    { "data": "Department" },
                    { "data": "options" },
                ]

            });
        });



 $(document).ready(function () {
            $('#get_data_ok').DataTable({
                "processing": true,
                "serverSide": true,
                "ajax":{
                         "url": "/get_data_ok",
                         "dataType": "json",
                         "type": "POST",
                         "data":{ _token: $('#token').val()}
                       },
                "columns": [
                    { "data": "img" },
                    { "data": "Code_Staff" },
                    { "data": "Name_Thai" },
                    { "data": "Position" },
                    { "data": "Department" },
                    { "data": "active" },
                    { "data": "options" },
                ]

            });
        });



        $('body').on('click', '.EnableOrDis', function () {
            var id = $(this).data("id");;
            //confirm("Are You sure want to delete !");
            Swal.fire({
              title: 'ยืนยันการปิดหรือเปิด',
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
                  url: "en_username",
                  success: function (data) {
                    Swal.fire(
                      'สำเร็จ!',
                      'หากสงสัยข้อมูลกรุณาติดต่อทีมพัฒนา',
                      'success'
                    ).then(function(){
                      location.reload();
                      });
                  },
                  error: function (data) {
                    Swal.fire({
                      icon: 'error',
                      title: 'ผิดพลาด',
                      text: 'ไม่สามารถลบได้กรุณาติดต่อทีมพัฒนา',
                      confirmButtonText: 'ตกลง',

                    })
                  }
              });

              }
            })
          });


















        $('body').on('click', '.DeleteUsername', function () {
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
                  url: "delete_new_username",
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

