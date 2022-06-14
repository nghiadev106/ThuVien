$(document).ready(function () {
    _danhmuc1();
    _danhmuc2_1();
    _danhmuc2_2();
    _team1();
    _team2();
    _team3();
    _team4();
    _soitem();
    _countdocgia();
    _countkho();
    _counttheloai();
    _toptacgia();
});

function _danhmuc1() {
    $.ajax({
        url: '/Page/Home/Danhmuc1',
        type: 'POST',
        datatype: 'json',
        success: function (data) {
            var html = '';
            $.each(data.dt, function (key, item) {
                html += '<li>';
                html += '<i class="fa fa-play-circle-o" aria-hidden="true"></i>' + item;
                html += '</li>';
            });
            $('#danhmuc1').html(html);
        },
        //error: function (data) {
        //    alert('xảy ra lỗi');
        //}

    });
}

function _danhmuc2_1() {
    $.ajax({
        url: '/Page/Home/Danhmuc2_1',
        type: 'POST',
        datatype: 'json',
        success: function (data) {
            var html = '';
            $.each(data.dt, function (key, item) {
                html += '<div class="ab1">';
                html += '<div class="col-md-3 col-sm-3 col-xs-3 ab1-icon">';
                html += '<span class="fa fa-book" aria-hidden="true"></span>';
                html += '</div>';
                html += '<div class="col-md-9 col-sm-9 col-xs-9 ab1-text">';
                html += ' <h5>' + item.tentheloai + '</h5>';
                html += '<a href="#">loremipsum is a dummy text</a>';
                html += '</div>';
                html += '<div class="clearfix"></div>';
                html += '</div>';
            });
            $('#danhmuc2_1').html(html);
        },
        error: function (data) {
            //alert('xảy ra lỗi');
        }

    });
}

function _danhmuc2_2() {
    $.ajax({
        url: '/Page/Home/Danhmuc2_2',
        type: 'POST',
        datatype: 'json',
        success: function (data) {
            var html = '';
            $.each(data.dt, function (key, item) {
                html += '<div class="ab1">';
                html += '<div class="col-md-3 col-sm-3 col-xs-3 ab1-icon">';
                html += '<span class="fa fa-book" aria-hidden="true"></span>';
                html += '</div>';
                html += '<div class="col-md-9 col-sm-9 col-xs-9 ab1-text">';
                html += ' <h5>' + item.tentheloai + '</h5>';
                html += '<a href="#">loremipsum is a dummy text</a>';
                html += '</div>';
                html += '<div class="clearfix"></div>';
                html += '</div>';
            });
            $('#danhmuc2_2').html(html);
        },
        error: function (data) {
           // alert('xảy ra lỗi');
        }

    });
}

function _soitem() {
    $.ajax({
        url: '/Page/Home/Soitem',
        type: 'POST',
        datatype: 'json',
        success: function (data) {
            var html = '';
            html += '<h6>Tài liệu</h6>';
            html += '<div class="numscroller numscroller-big-bottom" data-slno="1" data-min="0" data-max="' + data.dt + '" data-delay=".5" data-increment="300">' + data.dt + '</div>';

            $('#soitem').html(html);
        },
        error: function (data) {
           // alert('xảy ra lỗi');
        }

    });
}
function _countdocgia() {
    $.ajax({
        url: '/Page/Home/Count_Docgia',
        type: 'POST',
        datatype: 'json',
        success: function (data) {
            var html = '';
            html += '<h6>Độc giả</h6>';
            html += '<div class="numscroller numscroller-big-bottom" data-slno="1" data-min="0" data-max="' + data.dt + '" data-delay=".5" data-increment="300">' + data.dt + '</div>';

            $('#sodocgia').html(html);
        },
        error: function (data) {
           // alert('xảy ra lỗi');
        }

    });
}

function _countkho() {
    $.ajax({
        url: '/Page/Home/Count_Kho',
        type: 'POST',
        datatype: 'json',
        success: function (data) {
            var html = '';
            html += '<h6>Kho</h6>';
            html += '<div class="numscroller numscroller-big-bottom" data-slno="1" data-min="0" data-max="' + data.dt + '" data-delay=".5" data-increment="300">' + data.dt + '</div>';

            $('#sokho').html(html);
        },
        error: function (data) {
            //alert('xảy ra lỗi');
        }

    });
}
function _counttheloai() {
    $.ajax({
        url: '/Page/Home/Count_Theloai',
        type: 'POST',
        datatype: 'json',
        success: function (data) {
            var html = '';
            html += '<h6>Thể loại</h6>';
            html += '<div class="numscroller numscroller-big-bottom" data-slno="1" data-min="0" data-max="' + data.dt + '" data-delay=".5" data-increment="300">' + data.dt + '</div>';

            $('#sotheloai').html(html);
        },
        error: function (data) {
            //alert('xảy ra lỗi');
        }

    });
}
function _team1() {
    $.ajax({
        url: '/Page/Home/Team1',
        type: 'POST',
        datatype: 'json',
        success: function (data) {
            var html = '';
            html += '<div class="team-effect">';
            html += ' <img src="/Images/admin/' + data.dt.imgurl + '" alt="img" class="img-responsive">';
            html += ' <div class="social-icon">';
            html += '   <a href="#" class="social-button twitter">';
            html += '      <i class="fa fa-twitter"></i>';
            html += '  </a>';
            html += '  <a href="#" class="social-button facebook">';
            html += '      <i class="fa fa-facebook"></i>';
            html += '  </a>';
            html += '  <a href="#" class="social-button google">';
            html += '     <i class="fa fa-google-plus"></i>';
            html += '  </a>';
            html += '  </div>';
            html += '</div>';
            html += '<div class="team-text">';
            html += '  <h4>' + data.dt.name + '</h4>';
            html += '  <span>' + data.dt.diachi + '</span>';
            html += ' <p>Người quản lí thư viện trường đại học spkt hưng yên</p>';
            html += '</div>';
            $('#team1').html(html);
        },
        error: function (data) {
            //alert('xảy ra lỗi');
        }

    });
}

function _team2() {
    $.ajax({
        url: '/Page/Home/Team2',
        type: 'POST',
        datatype: 'json',
        success: function (data) {
            var html = '';
            html += '<div class="team-text">';
            html += '  <h4>' + data.dt.name + '</h4>';
            html += '  <span>' + data.dt.diachi + '</span>';
            html += ' <p>Người quản lí thư viện trường đại học spkt hưng yên</p>';
            html += '</div>';
            html += '<div class="team-effect">';
            html += ' <img src="/Images/admin/' + data.dt.imgurl + '" alt="img" class="img-responsive">';
            html += ' <div class="social-icon">';
            html += '   <a href="#" class="social-button twitter">';
            html += '      <i class="fa fa-twitter"></i>';
            html += '  </a>';
            html += '  <a href="#" class="social-button facebook">';
            html += '      <i class="fa fa-facebook"></i>';
            html += '  </a>';
            html += '  <a href="#" class="social-button google">';
            html += '     <i class="fa fa-google-plus"></i>';
            html += '  </a>';
            html += '  </div>';
            html += '</div>';

            $('#team2').html(html);
        },
        error: function (data) {
            //alert('xảy ra lỗi');
        }

    });
}

function _team3() {
    $.ajax({
        url: '/Page/Home/Team3',
        type: 'POST',
        datatype: 'json',
        success: function (data) {
            var html = '';
            html += '<div class="team-effect">';
            html += ' <img src="/Images/admin/' + data.dt.imgurl + '" alt="img" class="img-responsive">';
            html += ' <div class="social-icon">';
            html += '   <a href="#" class="social-button twitter">';
            html += '      <i class="fa fa-twitter"></i>';
            html += '  </a>';
            html += '  <a href="#" class="social-button facebook">';
            html += '      <i class="fa fa-facebook"></i>';
            html += '  </a>';
            html += '  <a href="#" class="social-button google">';
            html += '     <i class="fa fa-google-plus"></i>';
            html += '  </a>';
            html += '  </div>';
            html += '</div>';
            html += '<div class="team-text">';
            html += '  <h4>' + data.dt.name + '</h4>';
            html += '  <span>' + data.dt.diachi + '</span>';
            html += ' <p>Người quản lí thư viện trường đại học spkt hưng yên</p>';
            html += '</div>';
            $('#team3').html(html);
        },
        error: function (data) {
            //alert('xảy ra lỗi');
        }

    });
}

function _team4() {
    $.ajax({
        url: '/Page/Home/Team4',
        type: 'POST',
        datatype: 'json',
        success: function (data) {
            var html = '';
            html += '<div class="team-text">';
            html += '  <h4>' + data.dt.name + '</h4>';
            html += '  <span>' + data.dt.diachi + '</span>';
            html += ' <p>Người quản lí thư viện trường đại học spkt hưng yên</p>';
            html += '</div>';
            html += '<div class="team-effect">';
            html += ' <img src="/Images/admin/' + data.dt.imgurl + '" alt="img" class="img-responsive">';
            html += ' <div class="social-icon">';
            html += '   <a href="#" class="social-button twitter">';
            html += '      <i class="fa fa-twitter"></i>';
            html += '  </a>';
            html += '  <a href="#" class="social-button facebook">';
            html += '      <i class="fa fa-facebook"></i>';
            html += '  </a>';
            html += '  <a href="#" class="social-button google">';
            html += '     <i class="fa fa-google-plus"></i>';
            html += '  </a>';
            html += '  </div>';
            html += '</div>';

            $('#team4').html(html);
        },
        error: function (data) {
            //alert('xảy ra lỗi');
        }

    });
}

function _toptacgia() {
    $.ajax({
        url: '/Page/Home/Tacgianoibat',
        type: 'POST',
        datatype: 'json',
        success: function (data) {
            var html = '';
            $.each(data.dt, function (key, item) {
                html += '<div class="col-md-6  testi-main">';
                html += ' <div class="testi-grids">';
                html += '  <div class="col-md-9 col-sm-9 col-xs-9 team-w3ls-txt">';
                html += '     <h6>' + item.tentacgia + '</h6>';
                html += '      <p>Tác giả được quan tâm nhiều nhất</p>';
                html += '      <h5>' + item.nguyenquan + '</h5>';
                html += '  </div>';
                html += '   <div class="col-md-3 col-sm-3 col-xs-3  img-testi">';
                html += '<img class="img-responsive" src="/Images/Tacgia/'+item.imgurl+'" alt="">';
                html += '   </div>';
                html += ' <div class="clearfix"> </div>';
                html += '</div>';
                html += ' </div>';
            });
            $('#toptacgia').html(html);
        },
        error: function (data) {
            //alert('xảy ra lỗi');
        }

    });
}