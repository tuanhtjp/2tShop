var textutils = {};

/**
 * 
 * @param {type} str
 * @returns {String}
 */
textutils.encode_keyword = function (str) {
    if (str === null || str === '')
        return '';
    return str.replace(/ /g, "+").toLowerCase();
};

Number.prototype.toMoney = function (decimals, decimal_sep, thousands_sep) {
    var n = this,
            c = isNaN(decimals) ? 2 : Math.abs(decimals), //if decimal is zero we must take it, it means user does not want to show any decimal
            d = decimal_sep || '.', //if no decimal separator is passed we use the dot as default decimal separator (we MUST use a decimal separator)

            t = (typeof thousands_sep === 'undefined') ? ',' : thousands_sep, //if you don't want to use a thousands separator you can pass empty string as thousands_sep value

            sign = (n < 0) ? '-' : '',
            //extracting the absolute value of the integer part of the number and converting to string
            i = parseInt(n = Math.abs(n).toFixed(c)) + '',
            j = ((j = i.length) > 3) ? j % 3 : 0;
    return sign + (j ? i.substr(0, j) + t : '') + i.substr(j).replace(/(\d{3})(?=\d)/g, "$1" + t) + (c ? d + Math.abs(n - i).toFixed(c).slice(2) : '');
};

textutils.drawAlias = function (obj) {
    $("input[data-alias=alias]").val(textutils.createAlias($(obj).val()));
};

textutils.createAlias = function (str) {
    if (str === null || str === '')
        return '';
    return textutils.removeDiacritical(str).replace(/\W/g, "-").toLowerCase();
};

textutils.removeDiacritical = function (str) {
    str = str.replace(/(à|á|ạ|ả|ã|â|ầ|ấ|ậ|ẩ|ẫ|ă|ằ|ắ|ặ|ẳ|ẵ)/g, "a");
    str = str.replace(/(è|é|ẹ|ẻ|ẽ|ê|ề|ế|ệ|ể|ễ)/g, "e");
    str = str.replace(/(ì|í|ị|ỉ|ĩ)/g, "i");
    str = str.replace(/(ò|ó|ọ|ỏ|õ|ô|ồ|ố|ộ|ổ|ỗ|ơ|ờ|ớ|ợ|ở|ỡ)/g, "o");
    str = str.replace(/(ù|ú|ụ|ủ|ũ|ư|ừ|ứ|ự|ử|ữ)/g, "u");
    str = str.replace(/(ỳ|ý|ỵ|ỷ|ỹ)/g, "y");
    str = str.replace(/(đ)/g, "d");
    str = str.replace(/(À|Á|Ạ|Ả|Ã|Â|Ầ|Ấ|Ậ|Ẩ|Ẫ|Ă|Ằ|Ắ|Ặ|Ẳ|Ẵ)/g, "A");
    str = str.replace(/(È|É|Ẹ|Ẻ|Ẽ|Ê|Ề|Ế|Ệ|Ể|Ễ)/g, "E");
    str = str.replace(/(Ì|Í|Ị|Ỉ|Ĩ)/g, "I");
    str = str.replace(/(Ò|Ó|Ọ|Ỏ|Õ|Ô|Ồ|Ố|Ộ|Ổ|Ỗ|Ơ|Ờ|Ớ|Ợ|Ở|Ỡ)/g, "O");
    str = str.replace(/(Ù|Ú|Ụ|Ủ|Ũ|Ư|Ừ|Ứ|Ự|Ử|Ữ)/g, "U");
    str = str.replace(/(Ỳ|Ý|Ỵ|Ỷ|Ỹ)/g, "Y");
    str = str.replace(/(Đ)/g, "D");
    return str;
};

textutils.hashParam = function () {
    var urlParams;
    var match,
            pl = /\+/g, // Regex for replacing addition symbol with a space
            search = /([^&=]+)=?([^&]*)/g,
            decode = function (s) {
                return decodeURIComponent(s.replace(pl, " "));
            },
            query = $(location).attr("hash").replace('#', '').split("?")[1];
    if (typeof query == 'undefined') {
        return {};
    }
    urlParams = {};
    while (match = search.exec(query))
        urlParams[decode(match[1])] = decode(match[2]);
    return urlParams;
};

textutils.queryParam = function () {
    var urlParams;
    var match,
            pl = /\+/g, // Regex for replacing addition symbol with a space
            search = /([^&=]+)=?([^&]*)/g,
            decode = function (s) {
                return decodeURIComponent(s.replace(pl, " "));
            },
            query = window.location.search.substring(1);
    urlParams = {};
    while (match = search.exec(query))
        urlParams[decode(match[1])] = decode(match[2]);
    return urlParams;
};

textutils.buildQuery = function (params) {
    var queryString = "";
    $.each(params, function (key, val) {
        if (typeof val != 'undefined' && val != null && val != "") {
            if (i === 1)
                queryString += "?";
            else
                queryString += "&";
            queryString += key + "=" + val;
            i++;
        }
    });
    return queryString == "" ? "?" : queryString;
};

textutils.formatTime = function (time, format) {
    var months = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12'];
    time = parseFloat(time * 1000);
    var a = new Date(time);
    var year = a.getFullYear();
    var month = months[a.getMonth()];
    var day = a.getDate();
    var hour = a.getHours();
    var minute = a.getMinutes();
    var second = a.getSeconds();
    var time = "";
    if (format === 'day') {
        time = day + "/" + month + "/" + year;
    } else if (format === 'hour') {
        time = hour + ":" + minute + " " + day + "/" + month + "/" + year;
    } else if (format === 'time') {
        time = day + "/" + month + "/" + year + " " + hour + ":" + minute + ":" + second;
    } else {
        time = hour + ":" + minute + ":" + second + " " + day + "/" + month + "/" + year;
    }
    return time;
};

textutils.percentFormat = function (startPrice, sellPrice) {
    var percent = 0;
    if (startPrice > sellPrice)
        percent = (startPrice - sellPrice) / startPrice;

    percent *= 100;
    percent = Math.ceil(percent);
    return percent.toMoney(0, ',', '.');
};

textutils.ucfirst = function (str) {
    str += '';
    var f = str.charAt(0)
            .toUpperCase();
    return f + str.substr(1);
};

textutils.timeConverter = function (time) {
    var a = new Date(time);
    var months = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12'];
    var year = a.getFullYear();
    var month = months[a.getMonth()];
    var date = a.getDate();
    var hour = a.getHours();
    var min = a.getMinutes();
    var sec = a.getSeconds();
    var time = +hour + ':' + min + ' - ' + date + '/' + month + '/' + year;
    return time;
}
textutils.startPrice = function (startPrice, sellPrice, discount) {
    if (!discount && startPrice <= sellPrice) {
        return "0";
    }
    if (discount && startPrice <= sellPrice) {
        startPrice = sellPrice;
    }
    if (startPrice > 0) {
        return startPrice.toMoney(0, ',', '.');
    }
    return "";
};

textutils.sellPrice = function (sellPrice, discount, discountPrice, discountPercent) {
    if (discount) {
        if (discountPercent > 0) {
            sellPrice = eval(sellPrice) * (100 - eval(discountPercent)) / 100;
        } else {
            sellPrice = eval(sellPrice) - eval(discountPrice);
        }
    }
    return sellPrice.toMoney(0, ',', '.');
};
/**
 * 
 * @param {type} startPrice
 * @param {type} sellPrice
 * @param {type} discount
 * @param {type} discountPrice
 * @param {type} discountPercent
 * @returns {String}
 */
textutils.discountPrice = function (startPrice, sellPrice, discount, discountPrice, discountPercent) {
    if (discount && startPrice <= sellPrice) {
        startPrice = sellPrice;
    }
    if (discount) {
        if (discountPercent > 0) {
            sellPrice = eval(sellPrice) * (100 - eval(discountPercent)) / 100;
        } else {
            sellPrice = eval(sellPrice) - eval(discountPrice);
        }
    }
    var price = (eval(startPrice) - eval(sellPrice));
    price = (price > 0 ? price : 0);
    return price.toMoney(0, ',', '.');
};

textutils.numberFormat = function (priceNum){
	return priceNum.toMoney(0, ',', '.');
};
/**
 * 
 * @param {type} str
 * @returns {String}
 */
textutils.createAlias = function (str) {
    if (str === null || str === '')
        return '';
    return textutils.removeDiacritical(str).replace(/\W/g, "-").toLowerCase();
};

/**
 * 
 * @param {type} params
 * @returns {String}
 */
textutils.buildQuery = function (params) {
    var i = 1;
    var queryString = "";
    $.each(params, function (key, val) {
        if (typeof val != 'undefined' && val !== null && val !== "") {
            if (i === 1)
                queryString += "?";
            else
                queryString += "&";
            queryString += key + "=" + val;
            i++;
        }
    });
    return queryString;
};

textutils.isProperty = function (key) {
    var arr = ['category_link', 'interpark_disp_no', 'interpark_disp_nm', 'siteId', 'site_domain', 'site_config', 'interpark_no', 'interpark_ord_age_rstr_yn', 'interpark_ord_rstr_age', 'interpark_sale_unitcost', 'interpark_biz_tp', 'interpark_entr_nm', 'interpark_entr_seller_nm', 'interpark_hdelv_mafc_entr_nm', 'interpark_icn_img_url', 'interpark_list_img_url', 'interpark_main_img_url', 'interpark_main_nm', 'category', 'category_path', 'feeShip', 'usTax', 'feeMore', 'coefficient', 'rate', 'ebay_sellerId', 'ebay_categoryId', 'ebay_categoryName', 'ebay_usShipping', 'ebay_usTax', 'ebay_condition', 'ebay_sellPrice'];
    if (arr.indexOf(key) === -1) {
        return true;
    }
    return false;
};
textutils.countCart = function (obj) {
    var count = 0;
    $.each(obj, function () {
        $.each(this, function (key, value) {
            if (key == 'order') {
                count += eval(value.items.length);
            }
        });
    });

    return count;
};

textutils.getCookie = function (c_name) {
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
};

textutils.saveCookie = function (days, name, value) {
    if (days) {
        var date = new Date();
        date.setTime(date.getTime() + (days * 24 * 60 * 60 * 1000));
        var expires = "; expires=" + date.toGMTString();
    }
    else
        var expires = "";
    document.cookie = name + "=" + value + expires;
};

textutils.formatPriceVND = function (num) {
    return num.toString().replace(/(\d)(?=(\d{3})+(?!\d))/g, "$1,")
};

textutils.encodeBase64 = function (string){
	var Base64={_keyStr:"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=",encode:function(e){var t="";var n,r,i,s,o,u,a;var f=0;e=Base64._utf8_encode(e);while(f<e.length){n=e.charCodeAt(f++);r=e.charCodeAt(f++);i=e.charCodeAt(f++);s=n>>2;o=(n&3)<<4|r>>4;u=(r&15)<<2|i>>6;a=i&63;if(isNaN(r)){u=a=64}else if(isNaN(i)){a=64}t=t+this._keyStr.charAt(s)+this._keyStr.charAt(o)+this._keyStr.charAt(u)+this._keyStr.charAt(a)}return t},decode:function(e){var t="";var n,r,i;var s,o,u,a;var f=0;e=e.replace(/[^A-Za-z0-9\+\/\=]/g,"");while(f<e.length){s=this._keyStr.indexOf(e.charAt(f++));o=this._keyStr.indexOf(e.charAt(f++));u=this._keyStr.indexOf(e.charAt(f++));a=this._keyStr.indexOf(e.charAt(f++));n=s<<2|o>>4;r=(o&15)<<4|u>>2;i=(u&3)<<6|a;t=t+String.fromCharCode(n);if(u!=64){t=t+String.fromCharCode(r)}if(a!=64){t=t+String.fromCharCode(i)}}t=Base64._utf8_decode(t);return t},_utf8_encode:function(e){e=e.replace(/\r\n/g,"\n");var t="";for(var n=0;n<e.length;n++){var r=e.charCodeAt(n);if(r<128){t+=String.fromCharCode(r)}else if(r>127&&r<2048){t+=String.fromCharCode(r>>6|192);t+=String.fromCharCode(r&63|128)}else{t+=String.fromCharCode(r>>12|224);t+=String.fromCharCode(r>>6&63|128);t+=String.fromCharCode(r&63|128)}}return t},_utf8_decode:function(e){var t="";var n=0;var r=c1=c2=0;while(n<e.length){r=e.charCodeAt(n);if(r<128){t+=String.fromCharCode(r);n++}else if(r>191&&r<224){c2=e.charCodeAt(n+1);t+=String.fromCharCode((r&31)<<6|c2&63);n+=2}else{c2=e.charCodeAt(n+1);c3=e.charCodeAt(n+2);t+=String.fromCharCode((r&15)<<12|(c2&63)<<6|c3&63);n+=3}}return t}}
	return Base64.encode(string);
};

textutils.decodeBase64 = function (string){
	var Base64={_keyStr:"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=",encode:function(e){var t="";var n,r,i,s,o,u,a;var f=0;e=Base64._utf8_encode(e);while(f<e.length){n=e.charCodeAt(f++);r=e.charCodeAt(f++);i=e.charCodeAt(f++);s=n>>2;o=(n&3)<<4|r>>4;u=(r&15)<<2|i>>6;a=i&63;if(isNaN(r)){u=a=64}else if(isNaN(i)){a=64}t=t+this._keyStr.charAt(s)+this._keyStr.charAt(o)+this._keyStr.charAt(u)+this._keyStr.charAt(a)}return t},decode:function(e){var t="";var n,r,i;var s,o,u,a;var f=0;e=e.replace(/[^A-Za-z0-9\+\/\=]/g,"");while(f<e.length){s=this._keyStr.indexOf(e.charAt(f++));o=this._keyStr.indexOf(e.charAt(f++));u=this._keyStr.indexOf(e.charAt(f++));a=this._keyStr.indexOf(e.charAt(f++));n=s<<2|o>>4;r=(o&15)<<4|u>>2;i=(u&3)<<6|a;t=t+String.fromCharCode(n);if(u!=64){t=t+String.fromCharCode(r)}if(a!=64){t=t+String.fromCharCode(i)}}t=Base64._utf8_decode(t);return t},_utf8_encode:function(e){e=e.replace(/\r\n/g,"\n");var t="";for(var n=0;n<e.length;n++){var r=e.charCodeAt(n);if(r<128){t+=String.fromCharCode(r)}else if(r>127&&r<2048){t+=String.fromCharCode(r>>6|192);t+=String.fromCharCode(r&63|128)}else{t+=String.fromCharCode(r>>12|224);t+=String.fromCharCode(r>>6&63|128);t+=String.fromCharCode(r&63|128)}}return t},_utf8_decode:function(e){var t="";var n=0;var r=c1=c2=0;while(n<e.length){r=e.charCodeAt(n);if(r<128){t+=String.fromCharCode(r);n++}else if(r>191&&r<224){c2=e.charCodeAt(n+1);t+=String.fromCharCode((r&31)<<6|c2&63);n+=2}else{c2=e.charCodeAt(n+1);c3=e.charCodeAt(n+2);t+=String.fromCharCode((r&15)<<12|(c2&63)<<6|c3&63);n+=3}}return t}}
	return Base64.decode(string);
};