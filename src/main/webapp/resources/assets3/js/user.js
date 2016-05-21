$(function () {
    /*$( document ).ajaxStart(function() {
        loading.show();
    });
    $( document ).ajaxComplete(function() {
        loading.hide();
    });*/
    $('#username').focus();
    //$('#favItemLi').mouseover(function () {
    //    if ($('#favItemLi').attr('loaded') == 'false') {
    //        $('#favItemLi').attr('loaded', true);
    //        $.ajax({
    //            url: baseUrl + 'service/user/followeditem.json',
    //            method: "POST",
    //            dataType: "json",
    //            success: function (result) {
    //                if (result.success) {
    //                    //user.message('Đăng nhập thành công.');
    //                    loading.show();
    //                    popup.msg('Đăng nhập thành công, chúng tôi sẽ chuyển bạn sang trang đích trong giây lát.');
    //                    $(window).attr('location',ref);
    //                } else {
    //                    popup.msg(result.message);
    //                    //user.message(result.message);
    //                }
    //            }
    //        });
    //    }
    //});
});
$.urlParam = function(name){
    var results = new RegExp('[\?&]' + name + '=([^&#]*)').exec(window.location.href);
    if(results === null){
        return null;
    }
    return results[1] || 0;
};
var user = {};
function isEmail(email) {
    var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
    return regex.test(email);
};

function isPhoneNumber(phone) {
    var regex = /^[0-9]{10,11}$/;
    return regex.test(phone);
};
user.message = function (mess) {
    $('#messLabel').html(mess);
    $('#mess').modal();
};
user.login = function () {
    var ref = $.urlParam('ref') == null ? baseUrl : $.urlParam('ref');
    var username = $('#username');
    var password = $('#password');
    var remember = $('#remember').is(':checked');
    if (username.val() == '') {
        $('div[for="username"]').removeClass('hide');
        username.focus();
        return;
    } else {
        $('div[for="username"]').addClass('hide');
    }
    if (password.val() == '') {
        $('div[for="password"]').removeClass('hide');
        password.focus();
        return;
    } else {
        $('div[for="password"]').addClass('hide');
    }
    loading.show();
    $.ajax({
        url: baseUrl + 'service/login/login.json',
        method: "POST",
        data: {
            username: username.val(),
            password: password.val(),
            remember: remember
        },
        dataType: "json",
        success: function (result) {
            if (result.success) {
                //user.message('Đăng nhập thành công.');
                loading.show();
                popup.msg('Đăng nhập thành công, chúng tôi sẽ chuyển bạn sang trang đích trong giây lát.');
                $(window).attr('location',ref);
            } else {
                popup.msg(result.message);
                //user.message(result.message);
            }
        }
    });
};
user.forgot = function () {
    $.ajax({
        url: baseUrl + 'service/login/forgot.json',
        method: "POST",
        data: {
            username: $('#username').val(),
            email: $('#email').val(),
        },
        dataType: "json",
        success: function (result) {
            if (result.success) {
                popup.msg(result.message);
                $(window).attr('location',baseUrl);
            } else {
                popup.msg(result.message);
                //user.message(result.message);
            }
        }
    });
};

user.register = function () {
    var ref = $.urlParam('ref') == null ? baseUrl : $.urlParam('ref');
    var username = $('#username');
    var email = $('#email');
    var password = $('#password');
    var rePass = $('#rePassword');
    var phone = $('#phonenumber');
    var receive = $('#receiveInformation').is(':checked');
    var accepted = $('#accepted').is(':checked');
    if (username.val() == '') {
        $('div[for="username"]').removeClass('hide');
        username.focus();
        return;
    } else {
        $('div[for="username"]').addClass('hide');
    }
    if (email.val() == '') {
        $('div[for="email"]').removeClass('hide');
        email.focus();
        return;
    } else {
        $('div[for="email"]').addClass('hide');
        if (!isEmail(email.val())) {
            $('div[for="validEmail"]').removeClass('hide');
            email.focus();
            return;
        } else {
            $('div[for="validEmail"]').addClass('hide');
        }
    }
    if (phone.val() == '') {
        $('div[for="phonenumber"]').removeClass('hide');
        phone.focus();
        return;
    } else {
        $('div[for="phonenumber"]').addClass('hide');
        if (!isPhoneNumber(phone.val())) {
            $('div[for="validPhonenumber"]').removeClass('hide');
            phone.focus();
            return;
        } else {
            $('div[for="validPhonenumber"]').addClass('hide');
        }
    }
    if (password.val() == '') {
        $('div[for="password"]').removeClass('hide');
        password.focus();
        return;
    } else {
        $('div[for="password"]').addClass('hide');
    }
    if (password.val() != rePass.val()) {
        $('div[for="rePassword"]').removeClass('hide');
        rePass.focus();
        return;
    } else {
        $('div[for="rePassword"]').addClass('hide');
    }

    if (accepted == false) {
        user.message('Bạn phải đồng ý với điều khoản của ebay.vn trước khi đăng ký.');
        return;
    }
    $.ajax({
        url: baseUrl + 'service/login/register.json',
        method: "POST",
        data: {
            username: username.val(),
            password: password.val(),
            phone: phone.val(),
            email: email.val(),
            receiveEmailMarketing: receive
        },
        dataType: "json",
        success: function (result) {
            if (result.success) {
                //user.message('Đăng ký thành công.');
                loading.show();
                popup.msg(result.message);
                $(window).attr('location',ref);
            } else {
                //user.message(result.message);
                popup.msg(result.message);
            }
        }
    });
};

user.setNewPass = function () {
    var password = $('#password');
    var uid = $('#uid');
    var rePass = $('#rePassword');
    var token = $('#token');
    if (password.val().length < 6) {
        $('div[for="password"]').removeClass('hide');
        password.focus();
        return;
    } else {
        $('div[for="password"]').addClass('hide');
    }
    if (password.val() != rePass.val()) {
        $('div[for="rePassword"]').removeClass('hide');
        rePass.focus();
        return;
    } else {
        $('div[for="rePassword"]').addClass('hide');
    }
    $.ajax({
        url: baseUrl + 'service/login/newpass.json',
        method: "POST",
        data: {
            userId: uid.val(),
            password: password.val(),
            token: token.val(),
        },
        dataType: "json",
        success: function (result) {
            if (result.success) {
                popup.msg(result.message);
                $(window).attr('location', baseUrl + 'login.html');
            } else {
                popup.msg(result.message);
            }
        }
    });
};

user.paymentLogin = function (){
	var ref = $.urlParam('ref') == null ? baseUrl : $.urlParam('ref');
    var username = $('#username');
    var password = $('#password');
    var remember = $('#remember').is(':checked');
    if (username.val() == '') {
        $('div[for="username"]').removeClass('hide');
        username.focus();
        return;
    } else {
        $('div[for="username"]').addClass('hide');
    }
    if (password.val() == '') {
        $('div[for="password"]').removeClass('hide');
        password.focus();
        return;
    } else {
        $('div[for="password"]').addClass('hide');
    }
    $.ajax({
        url: baseUrl + 'service/login/login.json',
        method: "POST",
        data: {
            username: username.val(),
            password: password.val(),
            remember: remember
        },
        dataType: "json",
        success: function (result) {
            if (result.success) {
            	location.reload();
            } else {
            	$('div[for="password"]').removeClass('hide');
            	$('div[for="password"]').html(result.message);
            	username.focus();
            }
        }
    });
};

user.paymentRegister = function () {
    var ref = $.urlParam('ref') == null ? baseUrl : $.urlParam('ref');
    var username = $('#reusername');
    var email = $('#reemail');
    var password = $('#repassword');
    var rePass = $('#rerePassword');
    var phone = $('#rephonenumber');
    var accepted = $('#reaccepted').is(':checked');
    
    if (username.val() == '') {
        $('div[for="reusername"]').removeClass('hide');
        username.focus();
        return;
    } else {
        $('div[for="reusername"]').addClass('hide');
    }
    if (phone.val() == '') {
        $('div[for="rephonenumber"]').removeClass('hide');
        phone.focus();
        return;
    } else {
        $('div[for="rephonenumber"]').addClass('hide');
        if (!isPhoneNumber(phone.val())) {
            $('div[for="revalidPhonenumber"]').removeClass('hide');
            phone.focus();
            return;
        } else {
            $('div[for="revalidPhonenumber"]').addClass('hide');
        }
    }
    if (email.val() == '') {
        $('div[for="reemail"]').removeClass('hide');
        email.focus();
        return;
    } else {
        $('div[for="reemail"]').addClass('hide');
        if (!isEmail(email.val())) {
            $('div[for="revalidEmail"]').removeClass('hide');
            email.focus();
            return;
        } else {
            $('div[for="revalidEmail"]').addClass('hide');
        }
    }
    
    if (password.val() == '') {
        $('div[for="repassword"]').removeClass('hide');
        password.focus();
        return;
    } else {
        $('div[for="repassword"]').addClass('hide');
    }
    if (password.val() != rePass.val()) {
        $('div[for="rerePassword"]').removeClass('hide');
        rePass.focus();
        return;
    } else {
        $('div[for="rerePassword"]').addClass('hide');
    }

    if (accepted == false) {
    	console.log("accepted" + accepted);
    	$('div[for="reError"]').addClass('hide');
        return;
    }
    $.ajax({
        url: baseUrl + 'service/login/register.json',
        method: "POST",
        data: {
            username: username.val(),
            password: password.val(),
            phone: phone.val(),
            email: email.val()
        },
        dataType: "json",
        success: function (result) {
            if (result.success) {
            	$('#username').val(username.val());
            	$('#password').val(password.val());
            	user.paymentLogin();
            } else {
            	$('div[for="reError"]').removeClass('hide');
            	$('div[for="reError"]').html(result.message);
            }
        }
    });
};

user.close = function (){
	$(".bs-signin-modal-sm").removeClass("fade").modal("hide");
};


user.loadAutionTime = function () {
    $('p.time-leftbh-auction').each(function () {
        var endTime = parseInt($(this).attr('data'));
        var days = 24 * 60 * 60, hours = 60 * 60, minutes = 60;

        var left = Math.floor((endTime - (new Date())) / 1000); //trừ số giây sai lệch
        if (left < 0) {
            left = 0;
        }
        if (left == 0) {
            $(this).html('Hết hạn');
            return;
        }
        d = Math.floor(left / days);
        left -= d * days;
        h = Math.floor(left / hours);
        left -= h * hours;
        m = Math.floor(left / minutes);
        left -= m * minutes;
        s = left;


        $(this).html('Còn lại '+d+' ngày,<span> '+h+':'+m+':'+s+'</span>');
    });
};

user.removeFollowInBackend = function (itemId) {
    $.ajax({
        url: baseUrl + 'service/customer/follow.json',
        method: "POST",
        data: {
            itemId: itemId,
            type: 1,
            status: 1,
        },
        dataType: "json",
        success: function (result) {
            if (result.success == false) {
                $('tr[forItem="'+itemId+'"]').hide();
            } else {
            }
        }
    });
};