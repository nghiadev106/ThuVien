function _error() {
    var tentheloai = $('#tentheloai').val();
    var kihieu = $('#kihieu').val();
    var ghichu = $('#ghichu').val();
    var kt = true;

    if (tentheloai == '') {
        $('#er_tentheloai').html('bạn chưa nhập tên thể loại nè');
        kt = false;
    } else $('#er_tentheloai').html('');

    if (kihieu == '') {
        $('#er_kihieu').html('bạn chưa nhập kí hiệu nè');
        kt = false;
    } else $('#er_kihieu').html('');
    return kt;
}

function _add() {
    _error();
    if (_error()) {
        var obj = {
            tentheloai: $('#tentheloai').val(),
            kihieu: $('#kihieu').val(),
            ghichu: $('#ghichu').val(),
        }
        $.ajax({
            url: '/Theloai/Create/',
            data: JSON.stringify(obj),
            type: 'POST',
            contentType: 'application/Json; charset=utf-8',
            datatype: 'json',
            success: function (rs) {
                $('#myModal').modal('hide');
                $('#thongbao_model').modal('show');
                $('#title_model').html('Thong bao');
                var html = '';
                html += '<p>Tên thể loại: ' + rs.tentheloai + '</p><p>Kí hiệu: ' + rs.kihieu + '</p><p>Ghi chú: ' + rs.ghichu + '</p>';
                $('#content_model').html(html);
                //alert('Thành công');
                //location.reload();

            },
            error: function (rs) {
                alert(rs.response.text);
            }
        });
    }
}

function _delete(id) {
    var cf = confirm('bạn có muốn xóa bản ghi này');
    if (cf) {
        $.ajax({
            url: '/Theloai/Delete/' + id,
            type: 'POST',
            datatype: 'Json',
            success: function (rs) {
                location.reload();
            },
            error: function (rs) {
                alert(rs.responsetext);
            }
        });
    }
}

function _getById(id) {
    $.ajax({
        url: '/Theloai/Get/' + id,
        type: 'GET',
        contentType: 'application/Json;charset=utf-8',
        datatype: 'Json',
        success: function (rs) {
            $('#matheloai').val(rs.matheloai);
            $('#tentheloai').val(rs.tentheloai);
            $('#kihieu').val(rs.kihieu);
            $('#ghichu').val(rs.ghichu);
            $('#matheloai').hide();
            $('#btnAdd').hide();
            $('#btnUpdate').show();
            $('.modal-title').html('Sửa bản ghi');
            $('#myModal').modal('show');
        },
        error: function (rs) {
            alert(rs.responsetext);
        }
    });
}

function _edit() {
    _error();
    if (_error()) {
        var obj = {
            matheloai:$('#matheloai').val(),
            tentheloai: $('#tentheloai').val(),
            kihieu: $('#kihieu').val(),
            ghichu: $('#ghichu').val(),
        }
        $.ajax({
            url: '/Theloai/Edit/',
            data:JSON.stringify(obj),
            type: 'POST',
            contentType: 'application/Json;charset=utf-8',
            datatype: 'Json',
            success: function (rs) {
                location.reload();
            },
            error: function (rs) {
                alert(rs.responsetext);
            }
        });
    }
}
function _clear() {

    $('#er_tentheloai').html('');
    $('#er_kihieu').html('');

    $('#matheloai').hide();
    $('#btnAdd').show();
    $('#btnUpdate').hide();

    $('.modal-title').html('Thêm bản ghi');
}