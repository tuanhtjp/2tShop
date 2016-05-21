var request = {};

request.popout = function (flag, uri, name) {
    var day = 1;
    switch (flag) {
        case 'button' :
            request.saveCookie(day, name);
            $(".popup-bottom").hide();
            break;
        default:
            request.saveCookie(day, name);
            break;
    }
}; 

request.hiden = function () {
	var cookieVisa = request.getCookie('messsage');
    if (cookieVisa === '' || cookieVisa === null || cookieVisa === 'undefined') {
        $(".popup-bottom").show();
    }else{
    	$(".popup-bottom").hide();
    }
};

request.getCookie = function (c_name) {
    if (document.cookie.length > 0) {
        c_start = document.cookie.indexOf(c_name + "=");
        if (c_start != -1) {
            c_start = c_start + c_name.length + 1;
            c_end = document.cookie.indexOf(";", c_start);
            if (c_end == -1) {
                c_end = document.cookie.length;
            }
            return unescape(document.cookie.substring(c_start, c_end));
        }
    }
    return "";
}

request.saveCookie = function (days, name) {
    if (days) {
        var baseDomain = 'www.ebay.vn';
        var date = new Date();
        date.setTime(date.getTime() + (days * 24 * 60 * 60 * 1000));
        var expires = "; expires=" + date.toGMTString();
    }
    else
        var expires = "";
    document.cookie = name + "=" + name + expires;
};