function _error() {
    // Bước 1: Lấy giá trị của username và password
    var username = $('#username').val();
    var password  = $('#password').val();
    var name = $('#name').val();
    var diachi = $('#diachi').val();

    var kt = true;
    // Bước 2: Kiểm tra dữ liệu hợp lệ hay không

    if (username == '') {
        $('#er_username').html('Bạn chưa nhập username');
        kt = false;
    } else $('#er_username').html('');

    if (password == '') {
        $('#er_password').html('Bạn chưa nhập password');
        kt = false;
    } else $('#er_password').html('');
    return kt;
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

function _clear() {

    $('#id').val('');
    $('#username').val('');
    $('#password').val('');
    $('#name').val('');
    $('#diachi').val('');
    $('#imgurl').val('');
    /////////////
    $('#er_username').html('');
    $('#er_password').html('');
    $('#er_name').html('');
    $('#er_diachi').html('');
    $('#er_imgurl').html('');
    ////////////

    $('#makho').hide();
    $('#btnUpdate').hide();
    $('#btnAdd').show();
    $('.modal-title').html('Thêm bản ghi');
}



