function _error() {
    // Bước 1: Lấy giá trị của username và password
    var tenkho = $('#tenloai').val();
    var kihieu = $('#kihieu').val();
    var kt = true;
    // Bước 2: Kiểm tra dữ liệu hợp lệ hay không

    if (tenkho == '') {
        $('#er_tenloai').html('Bạn chưa nhập trường này');
        kt = false;
    } else $('#er_tenloai').html('');

    if (kihieu == '') {
        $('#er_kihieu').html('Bạn chưa nhập trường này');
        kt = false;
    } else $('#er_kihieu').html('');
    return kt;
}

function _add() {

    _error();
    if (_error()) {
        var obj = {
            tenloai: $('#tenloai').val(),
            kihieu: $('#kihieu').val(),
            ghichu: $('#ghichu').val(),
        }
        $.ajax({
            url: '/Loaidocgia/Create',
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

function _delete(id) {
    var cf = confirm('xóa hay không xóa?');
    if (cf) {
        $.ajax({
            type: 'POST',
            url: '/Loaidocgia/Delete',
            datatype: "json",
            data: {
                maloaidocgia: id,
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

function _getById(id) {
    //debugger;
    $.ajax({
        type: 'POST',
        url: '/Loaidocgia/Get',
        datatype: "json",
        data: {
            id: id,
        },
        success: function (data) {
            $('#maloaidocgia').val(data.dt.maloaidocgia);
            $('#tenloai').val(data.dt.tenloai);
            $('#kihieu').val(data.dt.kihieu);
            //$('#SDT').html(result.SDT);
            $("#ghichu").val(data.dt.ghichu);

            $('#er_tenloai').html('');
            $('#er_kihieu').html('');
            $('#er_ghichu').html('');

            $('#maloaidocgia').hide();
            $('#myModal').modal('show');
            $('#btnUpdate').show();
            $('#btnAdd').hide();
            $('.modal-title').html('Sửa bản ghi');
        },
        //error: function (data) {

        //    showmessage("Error:", data.message);
        //},

    });
}

function _edit() {
    //if ($('#IDGIAOVIEN').val() == '') {
    //    return;
    //}
    var obj = {
        maloaidocgia: $('#maloaidocgia').val(),
        tenloai: $('#tenloai').val(),
        kihieu: $('#kihieu').val(),
        ghichu: $('#ghichu').val(),
    }
    $.ajax({
        url: '/Loaidocgia/Update',
        data: JSON.stringify(obj),
        type: "POST",
        contentType: "application/json; charset=utf-8",
        dataType: "json",

        success: function (result) {
            location.reload();
            $('#myModal').modal('hide');
        },
        error: function (errormessage) {
            alert(errormessage.responseText);
        }
    });
}

function _clear() {

    $('#maloaidocgia').val('');
    $('#tenloai').val('');
    $('#kihieu').val('');
    $('#ghichu').val('');
    /////////////
    $('#er_tenloai').html('');
    $('#er_kihieu').html('');
    $('#er_ghichu').html('');
    ////////////

    $('#maloaidocgia').hide();
    $('#btnUpdate').hide();
    $('#btnAdd').show();
    $('.modal-title').html('Thêm bản ghi');
}