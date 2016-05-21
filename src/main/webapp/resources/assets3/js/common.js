/**
 * Created by ducquan on 2/11/2015.
 */
var common = {};
$(function () {
    $('#searchKeyword').on('keypress', function (event) {
        if (event.which === 13) {
            common.search();
        }
    });
    $('#searchCategory').on('keypress', function (event) {
        if (event.which === 13) {
            common.search();
        }
    });
});
common.search = function () {
    var searchKeyword = $('#searchKeyword').val();
    searchKeyword = searchKeyword.replace(/ /g, '+').replace(/%20/g, "+");
    if (searchKeyword.length > 2) {
        var cate = $('#searchCategory').val();
        var categoryUrl = '';
        if (cate != 0) {
            categoryUrl = UrlUtility.buildUrl({"categoryIds": [cate]});
        }
        window.location = baseUrl + 'tim-kiem/' + searchKeyword + '.html' + categoryUrl;
    } else {
        popup.msg('Từ khóa phải chứa ít nhất 3 ký tự');
        $('#searchKeyword').focus();
    }
    
};