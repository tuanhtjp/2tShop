/**
 * Created by ducqu on 23-11-2015.
 */
logout = function () {
    $.ajax({
        url: baseUrl + 'service/login/logout.json',
        method: "POST",
        data: {logout: 1},
        dataType: "json",
        success: function (result) {
            if (result.success) {
                //user.message('Đăng xuất thành công.');
                popup.msg('Đăng xuất thành công.');
                //$(window).attr('location', baseUrl);
                loading.show();
                location.reload();
            } else {
                //user.message(result.message);
                //user.message(result.message);
                popup.msg(result.message);
            }
        }
    });
};

claimPopupReset = function () {
    var claimEmail = $('#claimEmail');
    var claimPhone = $('#claimPhone');
    var claimOrderId = $('#claimOrderId');
    var claimOrderItemId = $('#claimOrderItemId');
    var claimContent = $('#claimContent');
    claimEmail.val('');
    claimPhone.val('');
    claimOrderId.val('');
    claimOrderItemId.val('');
    claimContent.val('');
};

claimPopup = function (email, phone, orderId, orderItemId) {
    console.log(email);
    console.log(phone);
    claimPopupReset();
    var claimEmail = $('#claimEmail');
    var claimPhone = $('#claimPhone');
    var claimOrderId = $('#claimOrderId');
    var claimOrderItemId = $('#claimOrderItemId');
    claimEmail.val(email);
    claimPhone.val(phone);
    claimOrderId.val(orderId);
    claimOrderItemId.val(orderItemId);
    $('#claimModal').modal();
};
claimSend = function () {
    var claimEmail = $('#claimEmail');
    var claimPhone = $('#claimPhone');
    var claimOrderId = $('#claimOrderId');
    var claimOrderItemId = $('#claimOrderItemId');
    var claimContent = $('#claimContent');
    var optionRadio = $('input[name=optionRadio]:checked');
    //var dataFile = new FormData();
    //jQuery.each(jQuery('#file')[0].files, function(i, file) {
    //    dataFile.append('file[]', file);
    //});
    $.ajax({
        url: baseUrl + 'service/login/claim.json',
        method: "POST",
        data: {
            email: claimEmail.val(),
            phone: claimPhone.val(),
            orderId: claimOrderId.val(),
            optionChose : optionRadio.val(),
            itemId: claimOrderItemId.val(),
            content: claimContent.val(),
            //images: dataFile
        },
        dataType: "json",
        success: function (result) {
            if (result.success) {
                claimPopupReset();
                $('#claimModal').modal('hide');
                popup.msg('Gửi khiếu nại thành công.');
            } else {
                popup.msg(result.message);
            }
        }
    });
};
var followItem = function (object) {
    var itemId = $(object).attr('itemId');
    var itemType = $(object).attr('itemType');
    var status = $(object).attr('status');
	var type = $(object).attr('for');
	var itemName = $(object).attr('itemName');
	var itemSellPrice = $(object).attr('itemSellPrice');
	var itemUrl = $(object).attr('itemUrl');
	var itemImage = $(object).attr('itemImage');
    $.ajax({
        url: baseUrl + 'service/customer/follow.json',
        method: "POST",
        data: {
            itemId: itemId,
            type: itemType,
            status: status,
        },
        dataType: "json",
        success: function (result) {
            if(result.message == 'login'){
                popup.msg('Vui lòng <a href="' + baseUrl + 'login.html?ref=' + window.location + '">Đăng nhập</a> hoặc <a href="' + baseUrl + 'register.html' + window.location +'">Đăng ký</a> để lưu sản phẩm yêu thích');
                return;
            }
            if (result.success == true) {
                $(object).addClass('hactive');
                $(object).attr('status', '1');
                $('#favItemList').html(buildItemFavNav(itemId, itemName, itemSellPrice, itemUrl, itemImage) + $('#favItemList').html());
				if(type === "item"){
					$(object).text('Đã lưu vào danh sách yêu thích');
				}
            } else {
                $('li[forId="'+itemId+'"]').hide();
                $(object).removeClass('hactive');
                $(object).attr('status', '0');
				if(type === "item"){
					$(object).text('Lưu vào danh sách yêu thích');
				}
            }
        }
    });
};

var buildItemFavNav = function (itemId, name, price, url, image) {
    var html = '<li forId="'+itemId+'">' +
        '<div class="inner-wishhdr"><a class="thumb-wishhdr" href="' + url +'"><img alt="' + name + '" src="' + image +'"></a></div>' +
        '<span><a href="' + url +'">' + name + '</a></span>' +
        '<span>' + price +' VNĐ</span></li>';
    return html;
};

var checkOrder = function () {
    $.ajax({
        url: baseUrl + 'service/login/checkorder.json',
        method: "POST",
        data: {
            mail: $('#checkOrderMail').val(),
            order: $('#checkOrderId').val(),
        },
        dataType: "json",
        success: function (result) {
            //if(result.status){
            //    $('#modalCheckForm').modal('hide');
            //}
            $('#checkOrderContent').html(result.html);
            //$('#checkOrderModal').modal('show');
            $('#checkOrderModal').modal('toggle');
        }
    });
};

var readNotification = function (object) {
    var obj = $(object);
    $.ajax({
        url: baseUrl + 'service/login/readnotification.json',
        method: "POST",
        data: {
            id: obj.attr('id')
        },
        dataType: "json",
        success: function (result) {
            if(result.success){
                obj.parent().remove();
                $('#countNotification').html(parseInt($('#countNotification').html()) - 1);
            }
        }
    });
};

var sharePopup = function (url){
	window.open(url , "_blank", "height=368,width=585,resizeable=yes");
};