$(document).ready(function () {
    _loademail();
});

function _loademail() {
    $.ajax({
        url: '/Admin/Lienhe/LoadEmail',
        type: 'POST',
        datatype: 'JSON',
        success: function (data) {
            html = '';
            $.each(data.dt, function (key, item) {
                if(item.trangthai){
                    html += '<li><button type="button" onclick="return _reademail('+item.id+')" class="btn btn-link btn-block"><i class="fa fa-envelope-o text-red"></i> ' + item.email + '</button> </li>';
                } else {
                    html += '<li><button type="button" onclick="return _reademail(' + item.id + ')" class="btn btn-link btn-default btn-block"><i class="fa fa-envelope-o text-red"></i> ' + item.email + '</button> </li>';
                }
            });

            $('#email').html(html);
        }
    });
}

function _reademail(id) {
    $.ajax({
        url: '/Admin/Lienhe/Reademail',
        type: 'POST',
        datatype: 'JSON',
        data:{
            id:id
        },
        success: function (data) {
            var html = '';
            html += '<div class="mailbox-read-info">';
            html+='<h3>'+data.dt.hoten+'</h3>';
            html+=' <h5>';
            html+='     Email: '+data.dt.email;
            html+=' <span class="mailbox-read-time pull-right">'+data.y+'</span>';
            html+=' </h5>';
            html+='</div>';              
           
            html+='<div class="mailbox-read-message">';
            html+=data.dt.noidung;
            html += '</div>';
            html += ' <div class="box-footer">';
            html += '  <div class="pull-right">';
            html += '   <button type="button" class="btn btn-default"><i class="fa fa-reply"></i> Reply</button>';
            html += '   <button type="button" class="btn btn-default"><i class="fa fa-share"></i> Forward</button>';
            html += '   </div>';
            html += '   <button type="button" class="btn btn-default"><i class="fa fa-trash-o"></i> Delete</button>';
            html += '  <button type="button" class="btn btn-default"><i class="fa fa-print"></i> Print</button>';
            html += '</div>';
            $('#noidung').html(html);
            //alert(data.y);
        }
    });
}