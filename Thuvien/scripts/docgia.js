//$(document).ready(function () {
//    _error();
//});

function _error() {
    var tendocgia = $('#tendocgia').val();
    var ngaysinh = $('#ngaysinh').val();
    var diachi = $('#diachi').val();
    var sdt = $('#sdt').val();

    var kt = true;

    if (tendocgia == '') {
        $('#er_tendocgia').html('bạn để trống trường này');
        kt = false;
    } else $('#er_tendocgia').html('');

    if (ngaysinh == '') {
        $('#er_ngaysinh').html('bạn để trống trường này');
        kt = false;
    } else $('#er_ngaysinh').html('');

    if (diachi == '') {
        $('#er_diachi').html('bạn để trống trường này');
        kt = false;
    } else $('#er_diachi').html('');

    if (sdt == '') {
        $('#er_sdt').html('bạn để trống trường này');
        kt = false;
    } else $('#er_sdt').html('');

    return kt;
}

function _getById(id) {
    //debugger;
    $.ajax({
        type: 'POST',
        url: '/Docgia/Get',
        datatype: "json",
        data: {
            sothe: id,
        },
        success: function (data) {
            $('#sothe').val(data.dt.sothe);
            $('#tendocgia').val(data.dt.tendocgia);
            $('#diachi').val(data.dt.diachi);
            $("#sdt").val(data.dt.sdt);
            //document.querySelector("#ngaysinh").valueAsDate = new Date(data.timed);

            $('#er_tendocgia').html('');
            $('#er_ngaysinh').html('');
            $('#er_diachi').html('');
            $('#er_sdt').html('');

            $('#myModal').modal('show');

            $('.modal-title').html('Sửa bản ghi');
        },
        //error: function (data) {

        //    showmessage("Error:", data.message);
        //},

    });
}

function _delete(sothe) {
    var cf = confirm('xóa hay không xóa?');
    if (cf) {
        $.ajax({
            type: 'POST',
            url: '/Docgia/Delete',
            datatype: "json",
            data: {
                sothe: sothe,
            },
            success: function (data) {
                location.reload();
            },
            error: function (data) {
                alert("khong thể xóa");
                showmessage("Error:", data.message);
            },

        });
    }
}

function Naptien(sothe) {
    $.ajax({
        type: 'POST',
        url: '/Docgia/Getcart',
        datatype: "json",
        data: {
            sothe: sothe,
        },
        success: function (data) {
            $('#sothe_up').val(data.dt.sothe);
            //document.querySelector("#ngaysinh").valueAsDate = new Date(data.timed);

            $('#er_tendocgia').html('');

            $('#myModalcart').modal('show');

        },
        //error: function (data) {

        //    showmessage("Error:", data.message);
        //},

    });
}

function _naptien() {

    //debugger;
    var sothe = $('#sothe_up').val();
    var tienthe = $('#update_cart').val();
    if (sothe != '') {
        $.ajax({
            type: 'POST',
            url: '/Docgia/CapnhapCart',
            datatype: "json",
            data: {
                sothe: sothe,
                tienthe, tienthe
                },
                    success: function (data) {
                        alert(data.ms);
                        location.reload();
                    },
            error: function (data) {
                alert("xảy ra lỗi");
                showmessage("Error:", data.message);
            },

        });
    }
    else alert("xảy ra lỗi");
}