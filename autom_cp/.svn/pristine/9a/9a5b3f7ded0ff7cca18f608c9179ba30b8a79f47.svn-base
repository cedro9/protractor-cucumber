"use strict";

var driver = browser.driver;
var TIMEOUT = 100000;

/**
 * Espera até que um elemento esteja presente na página.
 *
 * @param {Element} element elemento à ser esperado.
 * @returns {Element} o próprio elemento.
 * */
exports.present = function (element) {
    driver.wait(element.isPresent.bind(element), TIMEOUT).catch(logWaitTimeout(element));
    return element;
};

/**
 * Espera até que um elemento seja removido na página.
 *
 * @param {Element} element elemento à ser esperado.
 * @returns {Element} o próprio elemento.
 * */
exports.notPresent = function (element) {
    driver.wait(function () {
        return element.isPresent()
            .then(function (present) {
                return !present;
            });
    }, TIMEOUT).catch(logWaitTimeout(element));
    return element;
};

/**
 * Espera até que o modal esteja fechado.
 * */
exports.modalClosed = function () {
    var el = element(by.css("[class='modal fade ng-isolate-scope in']"));
    return exports.notPresent(el);
};

/**
 * Espera até que um elemento esteja habilitado na página.
 *
 * @param {Element} element elemento à ser esperado por ser habilitado.
 * @returns {Element} o próprio elemento.
 * */
exports.isEnabled = function (element) {
    driver.wait(function () {
        return element.isEnabled();
    }, TIMEOUT).catch(logWaitTimeout(element));
    return element;
};

function logWaitTimeout(element) {
    return function (e) {
        e.message += " for selector " + element.locator();
        return protractor.promise.rejected(e);
    };
};