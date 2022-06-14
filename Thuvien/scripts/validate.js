//function is_ngaysinh($str) {
//    return (!preg_match("/^([0|1|2|3]+[0-9]\/)+([0|1]+[0-9]\/)+([1|2])+([0-9]{3,})$/", $str)) ? false : true;
//}

//function is_user($str) {
//    return (!preg_match("/^[\w\S]{6,}$/", $str)) ? false : true;
//}

//function is_pass($str) {
//    return (!preg_match("/^[\w.]{6,}$/", $str)) ? false : true;
//}

//function is_sdt($str) {
//    return (!preg_match("/^[0-9-+]{10,11}$/", $str)) ? false : true;
//}
//function is_gmail($str) {
//    return (!preg_match("/^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/", $str)) ? false : true;
//}
//function is_so($str) {
//    return (!preg_match("/^[0-9]{0,11}$/", $str)) ? false : true;
//}

function checkemail(email) {
    var filter = /^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/;
    return !filter.test(email) ? false : true;
}

function checksdt(sdt) {
    var str = /^[0-9-+]{10,11}$/;
    return !str.test(sdt) ? false : true;
}

function checkpass(pass) {
    var str = /^[\w.]{6,}$/;
    return str.test(pass) ? true : false;
}

function checknumber(number) {
    var str = /^[\d]+$/;
    return str.test(number) ? true : false;
}

function checkuser(user) {
    var str = /^[\w\S]{6,}$/;
    return str.test(user) ? true : false;
}

function checkisbn(isbn) {
    var str = /\b(?:ISBN(?:: ?| ))?((?:97[89])?\d{9}[\dx])\b/;
    return str.test(isbn) ? true : false;
}