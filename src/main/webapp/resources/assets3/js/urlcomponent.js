var urlcomponent = {};
/**
 * chi tiết báo giá
 */
urlcomponent.quotes_step1 = function () {
    return "request.html";
};
/**
 * chi tiết báo giá
 */
urlcomponent.quotes = function () {
    return "request/quotes.html";
};

urlcomponent.quotes_detail = function (id) {
    return "order-"+ id + "/bill.html";
};

urlcomponent.payment_office = function (id) {
    return "order-"+ id + "/bill.html";
};

/**
 * 
 * @returns {String}
 */
urlcomponent.carts = function () {
    return '/carts.html';
};
urlcomponent.order_steep_one = function () {
    return 'order.html';
};
urlcomponent.order_steep_two = function (orderId) {
    return "order-" + orderId + "/payment.html";
};

urlcomponent.item_detail = function (id, name) {
    return "item/" + textutils.createAlias(name) + "-" + id + ".html";
};

urlcomponent.wallet_success = function (id) {
    return "order-" + id + "/support.html";
};
