function _error() {
    // Bước 1: Lấy giá trị của username và password
    var tenkho = $('#tenkho').val();
    var kihieu=$('#kihieu').val();
    var kt = true;
    // Bước 2: Kiểm tra dữ liệu hợp lệ hay không

    if (tenkho=='') {
        $('#er_tenkho').html('Bạn chưa nhập tên kho');
        kt= false;
    } else $('#er_tenkho').html('');

    if (kihieu == '') {
        $('#er_kihieu').html('Bạn chưa nhập kí hiệu');
        kt = false;
    } else $('#er_kihieu').html('');
    return kt;
}

function _add() {
  
    _error();
    if (_error()) {
        var obj = {
            tenkho: $('#tenkho').val(),
            kihieu: $('#kihieu').val(),
            ghichu: $('#ghichu').val(),
        }
        $.ajax({
            url: '/Kho/Create',
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

function _delete(makho) {
    var cf = confirm('xóa hay không xóa?');
    if (cf) {
        $.ajax({
            type: 'POST',
            url: '/Kho/Delete',
            datatype: "json",
            data: {
                makho: makho,
            },
            success: function (data) {
                alert(data.dt.makho);
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
        url: '/Kho/Get',
        datatype: "json",
        data: {
            id: id,
        },
        success: function (data) {

          

            $('#makho').val(data.dt.makho);
            $('#tenkho').val(data.dt.tenkho);
            $('#kihieu').val(data.dt.kihieu);
            //$('#SDT').html(result.SDT);
            $("#ghichu").val(data.dt.ghichu);

            $('#er_makho').html('');
            $('#er_tenkho').html('');
            $('#er_kihieu').html('');
            $('#er_ghichu').html('');

            $('#makho').hide();
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
        makho: $('#makho').val(),
        tenkho: $('#tenkho').val(),
        kihieu: $('#kihieu').val(),
        ghichu: $('#ghichu').val(),
    }
    $.ajax({
        url: '/Kho/Update',
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
    
    $('#makho').val('');
    $('#tenkho').val('');
    $('#kihieu').val('');
    $('#ghichu').val('');
    /////////////
    $('#er_makho').html('');
    $('#er_tenkho').html('');
    $('#er_kihieu').html('');
    $('#er_ghichu').html('');
    ////////////

    $('#makho').hide();
    $('#btnUpdate').hide();
    $('#btnAdd').show();
    $('.modal-title').html('Thêm bản ghi');
}