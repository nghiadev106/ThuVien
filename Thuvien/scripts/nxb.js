function _error() {

    var tennxb = $('#tennxb').val();
    var diachi = $('#diachi').val();
    var dienthoai = $('#dienthoai').val();
    var email = $('#email').val();
    var kt = true;

    if (tennxb == '') {
        $('#er_tennxb').html('Bạn chưa nhập tên ncc');
        kt = false;
    } else $('#er_tennxb').html('');

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

function _add() {
    _error();
    if (_error()) {
        var obj = {
            tennxb: $('#tennxb').val(),
            diachi: $('#diachi').val(),
            dienthoai: $('#dienthoai').val(),
            email: $('#email').val(),
        }
        $.ajax({
            url: '/Nhaxuatban/Create/',
            data: JSON.stringify(obj),
            type: 'POST',
            contentType: "application/json; charset=utf-8",
            dataType: 'json',
            success: function (result) {
                $('#mymodal').hide();
                alert('Thành công');
                location.reload();
            },
            error: function (rs) {
                alert(data.message);
                alert(rs.responsetext);
            }
        });
    }
}

function _getById(id) {
    $.ajax({
        url: '/Nhaxuatban/Get/' + id,
        type: 'GET',
        contentType: "application/json; charset=utf-8",
        dataType: 'Json',
        success: function (rs) {
            $('#manxb').hide();
            $('#manxb').val(rs.manxb);
            $('#tennxb').val(rs.tennxb);
            $('#diachi').val(rs.diachi);
            $('#dienthoai').val(rs.dienthoai);
            $('#email').val(rs.email);

            $('#myModal').modal('show');
            $('#btnUpdate').show();
            $('#btnAdd').hide();
            $('.modal-title').html('Sửa bản ghi');
        },
        error: function (errormessage) {
            alert(errormessage.responseText);
        }
    });
}

function _edit() {
    alert('ok de tiep tuc');
    _error();
    if ( _error()) {
        var obj = {
            manxb: $('#manxb').val(),
            tennxb: $('#tennxb').val(),
            diachi: $('#diachi').val(),
            dienthoai: $('#dienthoai').val(),
            email: $('#email').val(),
        }
        $.ajax({
            url: '/Nhaxuatban/Edit/',
            data: JSON.stringify(obj),
            type: "POST",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (result) {
                $('#myModal').modal('hide');
                alert('Thành công');
                location.reload();
            },
            error: function (errormessage) {
                alert(data.message);
                alert(errormessage.responseText);
            }
        });
    }
}

function _delete(id){
    var cf=confirm('bạn có muốn xóa bản ghi này');
    if(cf){
        $.ajax({
            url: '/Nhaxuatban/Delete/' + id,
            type: 'POST',
            dataType: 'json',
            success: function (rs) {
                location.reload();
            },
            error: function(rs){
                alert(rs.responsetext);
            }
        });
    }
}

function _clear() {
    //$('#makho').removeAttr('disabled');
    //$('#makho').val('');
    $('#manxb').hide();
    //$('#tennxb').val('');
    //$('#diachi').val('');
    //$('#dienthoai').val('');
    //$('#email').val('');
    /////////////
    //$('#er_makho').html('');
    $('#er_manxb').html('');
    $('#er_tennxb').html('');
    $('#er_diachi').html('');
    $('#er_dienthoai').html('');
    $('#er_email').html('');
    ////////////
    $('#btnUpdate').hide();
    $('#btnAdd').show();
    $('.modal-title').html('Thêm bản ghi');
}
