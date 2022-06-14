function _error() {
    // Bước 1: Lấy giá trị của username và password
    var firstname = $('#firstname').val();
    var lastname = $('#lastname').val();
    var email = $('#email').val();
    var noidung = $('#noidung').val();
    var kt = true;
    // Bước 2: Kiểm tra dữ liệu hợp lệ hay không

    if (firstname == '') {
        //$('#er_firstname').html('Bạn chưa nhập firstname');
        kt = false;
    }
    //else $('#er_firstname').html('');

    if (lastname == '') {
        //$('#er_lastname').html('Bạn chưa nhập lastname');
        kt = false;
    }
    //else $('#er_lastname').html('');
    if (email == '') {
       // $('#er_email').html('Bạn chưa nhập email');
        kt = false;
    }
    //else $('#er_email').html('');
    if (noidung == '') {
       // $('#er_noidung').html('Bạn chưa nhập nội dung');
        kt = false;
    }
    //else $('#er_noidung').html('');
    return kt;
}

function guilienhe() {
    _error();
    var firstname = $('#firstname').val();
    var lastname = $('#lastname').val();
    var email = $('#email').val();
    var noidung = $('#noidung').val();
    if (!_error()) {
        alert('vui lòng điền đầy đủ thông tin');
    }
    else {
        $.ajax({
            url: '/Page/Contact/Guilienhe',
            type: "POST",
            dataType: "json",
            data:{
                firstname: firstname,
                lastname: lastname,
                email: email,
                noidung: noidung
            },
            success: function (data) {
                if(data.success==true){
                    alert('Tin nhắn của bạn đã được gửi');
                    location.reload();
                }
                if (data.success == false) {
                    alert('xảy ra lỗi khi gửi dữ liệu');
                }
                //location.reload();
                //$('.modal-title').html(data.message);
            },
            error: function (errormessage) {
                alert('xảy ra lỗi');
            }
        });
    }
}
