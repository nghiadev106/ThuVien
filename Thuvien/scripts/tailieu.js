function _delete(masach) {
    
        var cf = confirm('xóa hay không xóa?');
        if (cf) {
            $.ajax({
                type: 'POST',
                url: '/Tailieu/Delete',
                datatype: "json",
                data: {
                    masach: masach,
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

function _CreateMCB(masach) {
    $.ajax({
        type: 'POST',
        url: '/Tailieu/CreateMCB',
        datatype: "json",
        data: {
            masach: masach,
        },
        success: function (data) {
            $('#thongbao_model').modal('show');
            $('#title_model').html(data.ms);
            var html = '';
            html += '<p>mã cá biệt: ' + data.dt.macabiet + '</p><p>mã sách: ' + data.dt.masach + '</p><p>Trạng thái: ' + data.dt.trangthai + '</p>';
            $('#content_model').html(html);
        },
        error: function (data) {
            alert("Xảy ra lỗi");
            showmessage("Error:", data.message);
        },

    });
}

function _delete_mcb(macabiet) {

    var cf = confirm('xóa hay không xóa?');
    if (cf) {
        $.ajax({
            type: 'POST',
            url: '/Tailieu/DeleteMCB',
            datatype: "json",
            data: {
                macabiet: macabiet,
            },
            success: function (data) {
                $('#thongbao_model').modal('show');
                $('#title_model').html(data.ms);
                var html = '';
                html += '<p>mã cá biệt: ' + data.mcb.macabiet + '</p><p>mã sách: ' + data.mcb.masach + '</p><p>Trạng thái: ' + data.mcb.trangthai + '</p>';
                $('#content_model').html(html);
            },
            error: function (data) {
                alert("khong thể xóa");
                showmessage("Error:", data.message);
            },

        });
    }
}