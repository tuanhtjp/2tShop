var cart = {};

cart.select = function () {
	$('div[rel=cartItem] input[type=checkbox]').each(function () {
		if($('#select-all')[0].checked){
			$(this)[0].checked = true;
		}else{
			$(this)[0].checked = false;
		}
    });
};

cart.delete = function(itemId, type){
	ajax({
        service: 'service/order/removefromcart',
		data: {
            id: itemId,
        },
        loading: true,
        done: function (resp) {
            if (resp.success) {
            	$('span[data=count]').text(resp.data.count);
            	$('span[data=countCart]').text('('+ resp.data.count +' sản phẩm)');
            	$('#totalCart').html(resp.data.totalPrice +' đ');
            	$("#cart-item-"+itemId).remove();
            	cart.reset(type);
            } else {
            	popup.msg("Thêm vào giỏ hàng thất bại!");
            }
        }
    });
};

cart.itemup = function(itemId, price){
	var count = parseInt($("#cart-quality-"+itemId).val());
	ajax({
        service: 'service/order/updatecart',
		data: {
            id: itemId,
			quantity: count + 1
        },
        loading: false,
        done: function (resp) {
            if (resp.success) {
				$("#cart-quality-"+itemId).val(count + 1);
				$("#total-price-item-"+itemId).text((price * (count + 1)) + " VNĐ");
            } else {
				popup.msg("Thêm vào giỏ hàng thất bại!");
            }
        }
    });
	
	
};

cart.itemdown = function(itemId, price){
	var count = parseInt($("#cart-quality-"+itemId).val());
	if(count > 1){
		ajax({
			service: 'service/order/updatecart',
			data: {
				id: itemId,
				quantity: count - 1
			},
			loading: false,
			done: function (resp) {
				if (resp.success) {
					$("#cart-quality-"+itemId).val(count - 1);
					$("#total-price-item-"+itemId).text((price * (count - 1)) + " VNĐ");
				} else {
					popup.msg("Thêm vào giỏ hàng thất bại!");
				}
			}
		});
	}
};

cart.changeQuality = function(itemId, parentId){
	var quantity = 1;
	if (isNaN(parseInt($('input[name="cartQuantity'+itemId+'"]').val())) || parseInt($('input[name="cartQuantity'+itemId+'"]').val()) < 1) {
        $('input[name="cartQuantity'+itemId+'"]').val(1);
    }
	quantity = parseInt($('input[name="cartQuantity'+itemId+'"]').val());
	ajax({
		service: 'service/order/updatecart',
		data: {
			id: itemId,
			quantity: quantity,
			parentId: parentId,
		},
		loading: false,
		done: function (resp) {
			if (resp.success) {
				$('#totalItemAmount-'+itemId).html(resp.data.totalItemPrice +' đ');
				$('#totalCart').html(resp.data.totalPrice +' đ');
            } else {
            	popup.msg(resp.message);
            	if(resp.data){
            		$('input[name="cartQuantity'+itemId+'"]').val(resp.data);
            	}
            }
		}
	});
};

cart.reset = function (type){
	var count = 0;
	if(type === 'step1'){
		var count = $("#cart-list").children().length;
	}else{
		var count = $("#cartContent").children().length;
	}	
	if(count < 2){
		$('.bot-itcart').css('display','none');
	}
};

cart.showCart = function (){
	$('#cartList').modal('show');
};