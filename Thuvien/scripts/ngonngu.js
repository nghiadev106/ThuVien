function _error() {
    // Bước 1: Lấy giá trị của username và password

    var tenngonngu = $('#tenngonngu').val();
    var kihieu = $('#kihieu').val();
    var kt = true;
    // Bước 2: Kiểm tra dữ liệu hợp lệ hay không

    if (tenngonngu == '') {
        $('#er_tenngonngu').html('Bạn chưa nhập tên ngon ngu');
        kt = false;
    } else $('#er_tenngonngu').html('');

    if (kihieu == '') {
        $('#er_kihieu').html('Bạn chưa nhập kí hiệu');
        kt = false;
    } else $('#er_kihieu').html('');
    return kt;
}

function _add() {
    $('#mangonngu').val('');
    _error();
    if (_error()) {
        var obj = {
            tenngonngu: $('#tenngonngu').val(),
            kihieu: $('#kihieu').val(),
            ghichu: $('#ghichu').val(),
        }
        $.ajax({
            url: '/Ngonngu/Create',
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
    var cf = confirm('bạn có muốn xóa bản ghi này ?');
    if (cf) {

        $.ajax({
            url: '/Ngonngu/Delete/' + id,
            type: "POST",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: true,
            success: function (result) {

                location.reload();
            },
            error: function (errormessage) {
                alert(errormessage.responseText);
            }
        });
    }
}

function _clear() {
    //$('#makho').removeAttr('disabled');
    //$('#makho').val('');
    $('#mangonngu').hide();
    $('#tenngonngu').val('');
    $('#kihieu').val('');
    $('#ghichu').val('');
    /////////////
    //$('#er_makho').html('');
    $('#er_tenkho').html('');
    $('#er_kihieu').html('');
    $('#er_ghichu').html('');
    ////////////
    $('#btnUpdate').hide();
    $('#btnAdd').show();
    $('.modal-title').html('Thêm bản ghi');
}

function _getById(id) {
    debugger;
    $('#mangonngu').hide();
    $('#er_mangonngu').html('');
    $('#er_tenngonngu').html('');
    $('#er_kihieu').html('');
    $('#er_ghichu').html('');
    $.ajax({
        url: '/Ngonngu/Get/',
         //data: JSON.stringify(dto),
        type: "POST",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        data:{
            id:id,
        },
        success: function (result) {
            $('#mangonngu').val(result.mangonngu);
            $('#tenngonngu').val(result.tenngonngu);
            $('#kihieu').val(result.kihieu);
            //$('#SDT').html(result.SDT);
            $("#ghichu").val(result.ghichu);

            $('#myModal').modal('show');
            $('#btnUpdate').show();
            $('#btnAdd').hide();
            $('.modal-title').html('Sửa bản ghi');
        },
        error: function (errormessage) {
            alert(errormessage.responseText);
        }
    });
    //return false;
}

function _edit() {
    var obj = {
        mangonngu: $('#mangonngu').val(),
        tenngonngu: $('#tenngonngu').val(),
        kihieu: $('#kihieu').val(),
        ghichu: $('#ghichu').val(),
    }
    if (_error()) {
        $.ajax({
            url: '/Ngonngu/Update',
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
}
