function _error_ncc() {
    // Bước 1: Lấy giá trị của username và password
    var mancc = $('#mancc').val();
    var tenncc = $('#tenncc').val();
    var diachi = $('#diachi').val();
    var dienthoai = $('#dienthoai').val();
    var email = $('#email').val();
    var website = $('#website').val();

    var kt = true;
    // Bước 2: Kiểm tra dữ liệu hợp lệ hay không

    if (tenncc == '') {
        $('#er_tenncc').html('Bạn chưa nhập tên ncc');
        kt = false;
    } else $('#er_tenncc').html('');

    if (diachi == '') {
        $('#er_diachi').html('Bạn chưa nhập địa chỉ');
        kt = false;
    } else $('#er_diachi').html('');



    if (dienthoai == '') {
        $('#er_dienthoai').html('Bạn chưa nhập điện thoại');
        kt = false;
    } else {
        if (!checksdt(dienthoai)) {
            $('#er_dienthoai').html('đây không phải số điện thoại');
            kt = false;
        } else $('#er_dienthoai').html('');
    }

    if (email == '') {
        $('#er_email').html('Bạn chưa nhập email');
        kt = false;
    } else {
        if (!checkemail(email)) {
            $('#er_email').html('đây không phải email');
            kt = false;
        } else $('#er_email').html('');
    }
    return kt;
}

function _add_ncc() {
    $('#mancc').val('');
    _error_ncc();
    if (_error_ncc()) {
        var obj = {
            tenncc: $('#tenncc').val(),
            diachi: $('#diachi').val(),
            dienthoai: $('#dienthoai').val(),
            email: $('#email').val(),
            website: $('#website').val(),
        }
        $.ajax({
            url: '/Nhacungcap/Create',
            data: JSON.stringify(obj),
            type: "POST",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (result) {
                $('#myModal').modal('hide');
                alert('Thêm thành công');
                location.reload();
                //$('.modal-title').html(data.message);
            },
            error: function (errormessage) {
                alert(data.message);
                alert(errormessage.responseText);
            }
        });
    }
}

function _Edit() {
    _error_ncc();
    if (_error_ncc()) {
        var obj = {
            mancc: $('#mancc').val(),
            tenncc: $('#tenncc').val(),
            diachi: $('#diachi').val(),
            dienthoai: $('#dienthoai').val(),
            email: $('#email').val(),
            website: $('#website').val(),
        }
        $.ajax({
            url: '/Nhacungcap/Edit/',
            data: JSON.stringify(obj),
            type: "POST",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (result) {
                $('#myModal').modal('hide');
                alert('Thành công');
                location.reload();
            },
            error: function(errormessage){
                alert(data.message);
                alert(errormessage.responseText);
            }
        });
    }
}

function _getById(id) {
    $('#mancc').hide();
    $('#er_mancc').html('');
    $('#er_tenncc').html('');
    $('#er_diachi').html('');
    $('#er_dienthoai').html('');
    $('#er_email').html('');
    $('#er_website').html('');
    $.ajax({
        url: '/Nhacungcap/Get/' + id,
        type: "POST",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (result) {
            $('#mancc').val(result.mancc);
            $('#tenncc').val(result.tenncc);
            $('#diachi').val(result.diachi);
            $("#dienthoai").val(result.dienthoai);
            $("#email").val(result.email);
            $("#website").val(result.website);

            $('#myModal').modal('show');
            $('#btnUpdate').show();
            $('#btnAdd').hide();
            $('.modal-title').html('Sửa bản ghi');
        },
        error: function (errormessage) {
            alert(errormessage.responseText);
        }
    });
    return false;
}

function _clear() {
    //$('#makho').removeAttr('disabled');
    //$('#makho').val('');
    $('#mancc').hide();
    $('#tenncc').val('');
    $('#diachi').val('');
    $('#dienthoai').val('');
    $('#email').val('');
    $('#website').val('');
    /////////////
    //$('#er_makho').html('');
    $('#er_mancc').html('');
    $('#er_tenncc').html('');
    $('#er_diachi').html('');
    $('#er_dienthoai').html('');
    $('#er_email').html('');
    $('#er_website').html('');
    ////////////
    $('#btnUpdate').hide();
    $('#btnAdd').show();
    $('.modal-title').html('Thêm bản ghi');
}

function _delete(id) {
    var cf = confirm("bạn có muốn xóa bản ghi này");
    if (cf) {
        $.ajax({
            url: '/Nhacungcap/Delete/' + id,
            type: 'POST',
            dataType: 'json',
            success: function (rs) {
                location.reload();
            },
            error:function(er){
                alert(data.message);
                alert(er.responseText);
            }
        });
    }
}