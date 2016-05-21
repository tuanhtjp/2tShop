(function () {
    this.ajax = function (params) {
    	params.loading = (typeof params.loading !== 'undefined' && !params.loading) ? false : true;
    	if (params.contentType === 'json') {
            params.contentType = 'application/json; charset=utf-8';
            params.data = JSON.stringify(params.data);
        }

        if (params.service.substr(-4) !== 'json') {
            params.service = params.service + '.json';
        }
        params = $.extend({
            url: baseUrl + params.service,
            dataType: 'json',
            headers: {
                "auth": "huylx@peacesoft.net",
                "code": "0973789890"
            },
            success: function (result) {
                if (params.loading)
                    loading.hide();
                params.done(result);
            },
            error: function () {
                if (params.loading)
                    loading.hide();
                //popup.msg('Lỗi trong quá trình xử lý, xin thử lại sau!');
            }
        }, params);
        if (params.loading){
            loading.show();
        }
        setTimeout(function () {
        	$.ajax(params);
        }, 300);
    };

    this.ajaxSubmit = function (params) {
        var data = {};
        $('#' + params.id).find('input, select, textarea').each(function () {
            if ($(this).attr('type') === 'checkbox') {
                if ($(this).is(':checked')) {
                    data[$(this).attr('name')] = true;
                } else {
                    data[$(this).attr('name')] = false;
                }
            } else if ($(this).attr('type') === 'radio') {
                if ($(this).is(':checked')) {
                    data[$(this).attr('name')] = $(this).val();
                }
            }
            else {
                if ($(this).val() !== '' && typeof $(this).attr('name') != 'undefined') {
                    if (isNaN($(this).val())) {
                        data[$(this).attr('name')] = $(this).val();
                    } else {
                        data[$(this).attr('name')] = parseFloat($(this).val());
                    }
                }
            }
        });
        para = $.extend({
            success: function (result) {
                loading.hide();
                if (result.success) {
                    params.done(result);
                }
                else {
                	
                    if (result.data) {
                        $('#' + params.id + ' input,#' + params.id + ' select,#' + params.id + ' textarea').each(function () {
                            $(this).parents('.form-group').removeClass('has-error');
                            $(this).next('.help-block').remove();
                            if ($(this).attr('name') && result.data[$(this).attr('name')]) {
                                $(this).parents('.form-group').addClass('has-error');
                                //$(this).after('<span class="help-block">' + result.data[$(this).attr('name')] + '</span>');
                            }
                        });
                    }
                    if (result.message) {
                        params.done(result);
//                        popup.msg(result.message);
                    }
                }
            },
            service: params.service,
            type: 'post',
            data: data,
            contentType: 'json'
        }, params);
        ajax(para);
    }
})();