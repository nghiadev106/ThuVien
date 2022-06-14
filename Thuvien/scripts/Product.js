$(document).ready(function () {
    _loadtheloai();
    _loadtacgia();
    _danhmucsanpham(1);
    _pagelist(1);
   
});


function _search() {
    $('#search_ten').val("");
    _danhmucsanpham(1);
    _pagelist(1);
}

function _search_ten() {

    _danhmucsanpham(1);
    _pagelist(1);
}
function _loadtheloai() {
    $.ajax({
        url: '/Page/ProductCatalog/Loadtheloai',
        type: 'GET',
        datatype: 'json',
        success: function (data) {
            var html = '';
            html += ' <h3 class="shopf-sear-headits-sear-head"> Thể loại</h3>';
            html += '<select class="form-control" id="matheloai" name="matheloai">';
            html += '  <option selected value="">null</option>';
            $.each(data.dt, function (key, item) {
                html += ' <option value="' + item.matheloai + '">' + item.tentheloai + '</option>'
            });
            html += ' </select>';
            $('#loadtheloai').html(html);
        },
        error: function (data) {
            alert('xảy ra lỗi');
        }

    });
}

function _loadtacgia() {
    $.ajax({
        url: '/Page/ProductCatalog/Loadtacgia',
        type: 'GET',
        datatype: 'json',
        success: function (data) {
            var html = '';
            html += ' <h3 class="shopf-sear-headits-sear-head"> Tác giả</h3>';
            html += '<select class="form-control" id="matacgia" name="matacgia">';
            html += '  <option selected value="">null</option>';
            $.each(data.dt, function (key, item) {
                html += ' <option value="' + item.matacgia + '">' + item.tentacgia + '</option>'
            });
            html += ' </select>';
            $('#loadtacgia').html(html);
        },
        error: function (data) {
            //alert('xảy ra lỗi');
        }

    });
}
function _danhmucsanpham(page) {
    var matheloai = $('#matheloai').val();
    var matacgia = $('#matacgia').val();
    var search_ten = $('#search_ten').val();
    $.ajax({
        url: '/Page/ProductCatalog/Danhmucsanpham/',
        type: 'POST',
        datatype: 'json',
        data: {
            page: page,
            matacgia: matacgia,
            matheloai: matheloai,
            search: search_ten
        },
        success: function (data) {
            var html = '';
            $.each(data.dt, function (key, item) {
                html += '<div class="col-md-3 product-men">';
                html += '       <div class="product-chr-info chr">';
                html += '            <div class="thumbnail">';
                html += '                <a href="/Page/ProductCatalog/Chitiettailieu/'+item.masach+'">';
                html += '                    <img src="/Images/sach/' + item.imgurl + '" style="width:226px;height:290px" alt="">';
                html += '               </a>';
                html += '            </div>';
                html += '             <div class="caption">';
                html += '                <h4>' + item.tensach.substring(0, 20) + '...</h4>';
                html += '                <p>' + item.tentheloai.substring(0, 20) + '</p>';
                html += '                <div class="matrlf-mid">';
                html += '              <ul class="price-list">';
                html += '                  <li>' + formatNumber(item.giabia, '.', ',') + ' vnd</li>';
                html += '                  <li style="text-decoration:none">' + item.sosach1 + ' / ' + item.sosach2 + '</li>';
                html += '              </ul>';
                html += '              <div class="clearfix"> </div>';
                html += '          </div>';
                //html += '              <button type="submit" onclick="return _getmsb(' + item.masach + ')" class="chr-cart pchr-cart">';
                //html += '                   Mượn sách';
                //html += '                  <i class="fa fa-cart-plus" aria-hidden="true"></i>';
                //html += '              </button>';
                html += '      </div>';
                html += '  </div>';
                html += '</div>';
            });
            $('#danhmucsach').html(html);
            _pagelist(page, matacgia, matheloai);
        },
        error: function (data) {
            //alert('xảy ra lỗi');
        }

    });
}

function _pagelist(vt) {
    var matheloai = $('#matheloai').val();
    var matacgia = $('#matacgia').val();
    var search_ten = $('#search_ten').val();
    $.ajax({
        url: '/Page/ProductCatalog/Pagelist',
        type: 'POST',
        datatype: 'json',
        data: {
            matacgia: matacgia,
            matheloai: matheloai,
            search: search_ten
        },
        success: function (data) {
            var html = '';
            html += '<nav aria-label="Page navigation example">';
            html += '<ul class="pagination pull-right">';
            if (vt == 1) {
                html += '<li class="page-item"><a class="page-link" onclick="return _danhmucsanpham(' + data.dp + ')" href="#danhmucsach">Previous</a></li>';
            }
            else {
                html += '<li class="page-item"><a class="page-link" onclick="return _danhmucsanpham(' + (vt - 1) + ')" href="#danhmucsach">Previous</a></li>';
            }

            for (var i = 1; i <= data.dp; i++) {

                if (vt == i) {
                    html += ' <li class="page-item active" disable><a class="page-link" onclick="return _danhmucsanpham(' + i + ')" href="#danhmucsach">' + i + '</a></li>';
                }
                else {
                    html += ' <li class="page-item"><a class="page-link" onclick="return _danhmucsanpham(' + i + ')" href="#danhmucsach">' + i + '</a></li>';
                }
            }
            if (vt == data.dp) {
                html += ' <li class="page-item"><a class="page-link"onclick="return _danhmucsanpham(' + 1 + ')" href="#danhmucsach">Next</a></li>';
            }
            else {
                html += ' <li class="page-item"><a class="page-link"onclick="return _danhmucsanpham(' + (vt + 1) + ')" href="#danhmucsach">Next</a></li>';
            }

            html += '</ul>';
            html += '</nav>';         
                $('#pagelist').html(html);

        },
        error: function (data) {
            //alert('xảy ra lỗi');
        }

    });
}

function formatNumber(nStr, decSeperate, groupSeperate) {
    nStr += '';
    x = nStr.split(decSeperate);
    x1 = x[0];
    x2 = x.length > 1 ? '.' + x[1] : '';
    var rgx = /(\d+)(\d{3})/;
    while (rgx.test(x1)) {
        x1 = x1.replace(rgx, '$1' + groupSeperate + '$2');
    }
    return x1 + x2;
}