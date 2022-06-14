
function _getmsb(id) {
    $.ajax({
        url: '/Page/ProductCatalog/GetMCB/',
        type: 'post',
        datatype: 'json',
        data: {
            masach: id
        },
        success: function (data) {
            var html = '';
            var stt = 0;
            $.each(data.dt, function (key, item) {
                html += '<tr>';
                html += '<td>' + item.macabiet + '</td>';
                if (item.trangthai == true) {
                    html += '<td><label class="label label-success">chưa mượn</label></td>';
                    html += '<td><button type="button" class="label label-default btn-link" onclick="return _muonsach(' + item.macabiet + ');" >mượn</button></td>';
                }
                if (item.trangthai == false) {
                    html += '<td><label class="label label-danger">đã được mượn</label></td>';
                }

                html += '</tr>';
            });
            $('#table').html(html);
            $('#myModal').modal('show');
            _getdanhsach();
        },
        error: function (data) {
            alert('xảy ra lỗi');
        }

    });
}

function _muonsach(mcb) {
    $.ajax({
        url: '/Page/ProductCatalog/Muonsach/',
        type: 'post',
        datatype: 'json',
        data: {
            macabiet: mcb
        },
        success: function (data) {
            if (data.success == true) {
                alert(data.ms);
            }
            else alert(data.ms);
            _getmsb(data.dt.masach);


        },
        error: function (data) {
            alert('xảy ra lỗi');
        }
    });
}

function _getdanhsach() {
    $.ajax({
        url: '/Page/ProductCart/Getdanhsach/',
        type: 'post',
        datatype: 'json',
        success: function (data) {
            var html = '';
            if (data.success == true) {

                $.each(data.dt, function (key, item) {
                    html += '<tr>';
                    html += '<td>' + item.macabiet + '</td>';
                    html += '<td>' + item.tensach + '</td>';
                    html += '<td>' + item.tentacgia + '</td>';
                    html += '<td><img src="/Images/sach/'+item.imgurl+'" style="max-height:100px"/>    </td>';
                    html += '<td><button type="button" class="label label-danger btn-link" onclick="return _delete(' + item.macabiet + ');" ><i class="fa fa-times"></i></button></td>';
                    html += '</tr>';
                });
                $('#table1').html(html);
            }
            else {
                html += '<tr>';
                html += '<td colspan="3">chưa có tài liệu nào được chọn</td>';
                html += '</tr>';
                $('#table1').html(html);
            }
        },
        error: function (data) {
            alert('xảy ra lỗi');
        }

    });
}

function _delete(mcb) {
    $.ajax({
        url: '/Page/ProductCart/Delete/',
        type: 'post',
        datatype: 'json',
        data: {
            macabiet: mcb
        },
        success: function (data) {
            if (data.success == false) {
                alert('xảy ra lỗi khi truy cập dữ liệu');
            }
            _getdanhsach();
        },
        error: function (data) {
            alert('xảy ra lỗi');
        }
    });
}