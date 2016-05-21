var item = {};
/**
 * biến item loading
 * @type type
 */
item.item = {};
item.selecteds = [];
item.selected = -1;

/**
 *
 * @param {type} _item
 * @returns {undefined}
 */
item.init = function(_item) {
	item.item = $.extend({}, _item);
    item.initSub();
};

item.translate = function (url){
	window.open('http://translate.google.com.vn/translate?hl=vi&sl=en&tl=vi&u=' + url + '&sandbox=1', '_blank');
};
/**
 *
 * @returns {undefined}
 */
item.initSub = function() {
    var mul = false;
    if (item.item.subItems && item.item.subItems.length > 0) {
        //change select specifics
        $('div[rel=specifics] select').change(function() {
            item.select($(this));

            $('div[rel=specifics] select').each(function () {
                if ($(this).val() == 0) {
                    return;
                }
            });
        });
    };
};


item.select = function(sl) {
	var selecteds = [];
    var i = 0;
    var selectedSubs = [];
    $('#note-quality').css('display','none');
    $('div[rel=specifics] select').each(function() {
        if ($(this).val() != 0) {
            selecteds[i] = {
                name: $(this).attr('name'),
                value: $(this).val()
            };
            i++;
        }
    });
	
    if (selecteds.length == 0) {
        item.reset();
    } else {
        var n = 0;
        for (i = 0; i < item.item.subItems.length; i++) {
            var pass = 0;
            var subitem = item.item.subItems[i];
            $.each(subitem.specifics, function(name, value) {
				for (k = 0; k < selecteds.length; k++) {
					if (value.name.replace(/[\W]/g, '').toLowerCase() == selecteds[k].name && value.value.replace(/[\W]/g, '').toLowerCase() == selecteds[k].value) {
                         pass++;
                    }
                }
            });
            if (pass == selecteds.length) {
                selectedSubs[n] = item.item.subItems[i];
                n++;
            }
        }
        if (selectedSubs.length > 0) {
        	$('div[rel=specifics] select option').attr('class', 'disabled');
        	$('div[rel=specifics] select option[value="0"]').removeClass('disabled');

            $('div[rel=specifics] select select').each(function() {
                if ($(this).val() != 0) {
                    if (selecteds.length == 1) {            
                    	$(this).find('option').removeClass('disabled');
                    }
                }
            });
            for (i = 0; i < selectedSubs.length; i++) {
                for (j = 0; j < item.item.subItems.length; j++) {
                    if (item.item.subItems[j].identity == selectedSubs[i].identity) {
                        $.each(item.item.subItems[j].specifics, function(name, value) {
                        	$.each(value, function() {
                            	$('div[rel=specifics] select option[value=' + this.replace(/[\W]/g, '').toLowerCase() + ']').removeClass('disabled');
                            });
                        });
                    }
                }
            }
            item.setSub(selectedSubs[0].identity);
        } else {
            var error = '<p>Không có thuộc tính: </p><p style="padding-left:20px;" >- ' + sl.attr('data') + ': ' + sl.val().toUpperCase() + '</p>';
            sl.val(0);
            var message = "<p>Sản phẩm <b>" + item.item.title + "</b> có thuộc tính:</p>";
            $('div[rel=specifics] select').each(function() {
                if ($(this).val() != 0) {
                    message += '<p style="padding-left:20px;" >- ' + $(this).attr('data') + ': ' + $(this).val().toUpperCase() + '</p>';
                }
            });
            popup.msg(message + '\n' + error);
            sl.trigger("change");
        }
    }
};

/**
 * Reset lại mặc định
 * @returns {undefined}
 */
item.reset = function() {
    item.selected = -1;
};

item.setSub = function(id) {
    $.each(item.item.subItems, function() {
        var sub = this;
        if (sub.identity === id) {
            item.selected = id;
            //Vẽ lại thuộc tính sản phẩm
			var price = textutils.sellPrice(sub.sellPrice) + " VNĐ";
			var subQuantity = sub.quantity - sub.quantitySold;
            if (sub.sellPrice < sub.startPrice) {
                $('#start-price').html(textutils.sellPrice(sub.startPrice) + " VNĐ");
				$('#sale-price').html("<span>Tiết kiệm: </span>" + textutils.sellPrice(sub.startPrice - sub.sellPrice) + " VNĐ");
				$('#sale-percent').html("<span>-"+ textutils.percentFormat(sub.startPrice, sub.sellPrice) +"%</span>");
            } else {
                $('#start-price').addClass('hide');
                $('#sale-price').addClass('hide');
                $('#sale-percent').addClass('hide');
            }
            $('#sell-price').html(price);
			
            $('span[data=quantity]').text(" " + subQuantity);
            
            var image = '<div id="imageslider" class="owl-carousel">';
            if (sub.images.length > 0) {
                $('div.pi-inner').html('<img id="myCloudZoom" class="cloudzoom" data-cloudzoom ="zoomSizeMode: \'image\', zoomImage: \'' + sub.images[0] + '\'" src="' + sub.images[0] + '" alt="' + sub.name + '">');
            }
            if (sub.images.length > 0) {
                $.each(sub.images, function(index) {
                    image += '<div class="pi-item ' + (index == 0 ? "active" : "") + '"><a class="cloudzoom-gallery" data-cloudzoom="useZoom:\'.cloudzoom\', image:\'' + this + '\' " href="' + this + '"><img src="' + this + '" alt="' + sub.name + '"  /></a></div>';
                });
                image += '</div>';
                $('#imageslider').replaceWith(image);
                $('#imageslider').owlCarousel({
                    margin: 0,
                    responsiveClass: true,
                    nav: true,
                    dots: false,
                    autoplay: false,
                    autoHeight: false,
                    autoplayTimeout: 4000,
                    autoplayHoverPause: true,
                    responsive: {
                        0: {
                            items: 1
                        },
                        768: {
                            items: 5
                        }
                    }
                });
                CloudZoom.quickStart();
            }

            return false;
        }
    });
};

/**
 * Vẽ tạm tính
 * @returns {undefined}
 */
item.provisional = function() {
    var quantity = $("input[name=buyQuantity]").val();
    var maxQuality = eval($('span[data=quantity]').text());
    if (isNaN(quantity) || quantity < 1) {
        quantity = 1;
        $("input[name=buyQuantity]").val(quantity);
    }
    if(quantity > maxQuality){
    	$("input[name=buyQuantity]").val(maxQuality);
    }
};

$(document).ready(function() {
    $('span.pr-top').click(function() {
        var q = eval($('input[name=buyQuantity]').val());
        var maxQuality = eval($('span[data=quantity]').text());
        if(q < maxQuality){
        	$('input[name=buyQuantity]').val(q + 1);
        }else{
        	$('input[name=buyQuantity]').val(maxQuality);
        }
        
    });
    $('span.pr-bottom').click(function() {
    	var q = $('input[name=buyQuantity]').val();
        if (q < 2) {
            $('input[name=buyQuantity]').val(1);
        } else {
            $('input[name=buyQuantity]').val(q - 1);
        }
    });
});