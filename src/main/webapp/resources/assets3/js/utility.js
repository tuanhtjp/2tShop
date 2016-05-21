/**
 * Created by ducquan on 2/11/2015.
 */

var UrlUtility = {};
UrlUtility.getUrlVars = function () {
    var url = window.location.href;
    return $.parseParams(url.split('?')[1] || '');
};

UrlUtility.buildUrl = function (params) {
    var url = '';
    var i = 0;
    $.each(params, function (key, value) {
        var sub = (i == 0) ? '?' : '&';
        if ($.isArray(value)) {
            $.each(value, function (k, v) {
                sub = (i == 0) ? '?' : '&';
                url += sub + key + '[]=' + v;
                i++;
            });
        } else {
            url += sub + key + '=' + value;
        }
        i++;
    });
    return url;
};