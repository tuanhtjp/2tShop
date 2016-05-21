servicesource = {
};

/**
 * params_data: dữ liệu post lên
 * params_config['group']: nhóm trường sử dụng để nhóm lại
 * params_config['getlink']: function lấy dữ liệu
 * params_config['suffix']: đuôi xác định grid
 */
servicesource.getDataSource = function (params_controller, params_schema, params_data, params_config) {
    if (typeof params_config !== 'undefined') {
        params_config['group'] = typeof params_config['group'] !== 'undefined' ? params_config['group'] : [];
        params_config['filter'] = typeof params_config['filter'] !== 'undefined' ? params_config['filter'] : [];
        /* nếu ko truyền biến params_config['getlink'] thì default = getlist */
        params_config['getlink'] = typeof params_config['getlink'] !== 'undefined' ? params_config['getlink'] : 'getlist';
        params_config['suffix'] = typeof params_config['suffix'] !== 'undefined' ? params_config['suffix'] : '';
    } else {
        params_config = {
            group: [],
            getlink: 'getlist',
            suffix: ''
        };
    }

    var crudServiceBaseUrl = baseUrl + 'service',
            dataSource = new kendo.data.DataSource({
                pageSize: 20,
                transport: {
                    read: {
                        url: crudServiceBaseUrl + '/' + params_controller + '/' + params_config['getlink'],
                        data: params_data,
                        dataType: "json",
                        type: 'POST',
                    },
                    update: {
                        url: crudServiceBaseUrl + '/' + params_controller + '/edit',
                        dataType: "json",
                        type: "POST",
                        contentType: "application/json;odata=verbose",
                        complete: function (data, status) {
                            if (status === "success") {
                                alert('Update record is successful');
                                if (params_config['suffix'] !== '') {
                                    $(".k-grid").each(function (index) {
                                        $(this).data("kendoGrid").dataSource.read();
                                    });
                                }
                                $("#" + params_controller + params_config['suffix'] + "-grid").data("kendoGrid").dataSource.read();
                            } else {
                                alert("Update record is fail");
                            }
                        }
                    },
                    create: {
                        url: crudServiceBaseUrl + '/' + params_controller + '/add',
                        data: params_data,
                        dataType: "json",
                        type: "POST",
                        contentType: "application/json;odata=verbose",
                        complete: function (data, status) {
                            if (status === "success") {
                                alert('Create record is successful');
                                if (params_config['suffix'] !== '') {
                                    $(".k-grid").each(function (index) {
                                        $(this).data("kendoGrid").dataSource.read();
                                    });
                                }
                                $("#" + params_controller + params_config['suffix'] + "-grid").data("kendoGrid").dataSource.read();
                            } else {
                                alert("Create record is fail");
                            }
                        }
                    },
                    destroy: {
                        url: crudServiceBaseUrl + '/' + params_controller + '/destroy',
                        type: "POST",
                        data: params_data
                    },
                    parameterMap: function (data, operation) {
                        if (operation === "update" || operation === "create") {
                            return JSON.stringify({data: data});
                        }
                        return data;
                    }
                },
                batch: true,
                schema: {
                    data: "Data",
                    total: "Total",
                    model: params_schema
                },
                serverPaging: true,
                filter: params_config['filter'],
                group: params_config['group'],
            });
            /* lấy tổng bản ghi */
            dataSource.fetch(function () {
                servicesource.load_total(params_config['id_name_total'],dataSource.total());
             });
    return dataSource;
}

/* lấy ra tổng giá trị và gán vào id_name truyền vào */
servicesource.load_total = function(id_name, total) {
    if(id_name != '') {
        $('#' + id_name).text(total);
    }
}

function timeEditor(container, options) {
    $('<input readonly="true" data-text-field="' + options.field + '" data-value-field="' + options.field + '" data-bind="value:' + options.field + '" data-format="' + options.format + '"/>')
            .appendTo(container)
            .kendoTimePicker({
                enable: false
            });
}
function dateEditor(container, options) {
    $('<input readonly="true" data-text-field="' + options.field + '" data-value-field="' + options.field + '" data-bind="value:' + options.field + '" data-format="' + options.format + '"/>')
            .appendTo(container)
            .kendoDatePicker({
                enable: false
            });
}
function dateTimeEditor(container, options) {
    $('<input readonly="true" data-text-field="' + options.field + '" data-value-field="' + options.field + '" data-bind="value:' + options.field + '" data-format="' + options.format + '"/>')
            .appendTo(container)
            .kendoDateTimePicker({
                enable: false
            });
}
function timeEditorEdit(container, options) {
    $('<input readonly="true" data-text-field="' + options.field + '" data-value-field="' + options.field + '" data-bind="value:' + options.field + '" data-format="' + options.format + '"/>')
            .appendTo(container)
            .kendoTimePicker({
                enable: false
            });
}
function dateEditorEdit(container, options) {
    $('<input data-text-field="' + options.field + '" data-value-field="' + options.field + '" data-bind="value:' + options.field + '" data-format="' + options.format + '"/>')
            .appendTo(container)
            .kendoDatePicker({});
}
function dateTimeEditorEdit(container, options) {
    $('<input data-text-field="' + options.field + '" data-value-field="' + options.field + '" data-bind="value:' + options.field + '" data-format="' + options.format + '"/>')
            .appendTo(container)
            .kendoDateTimePicker({});
}