"use strict";

/**
 * Faz scroll da página de modo que um elemento fique visível, isto é,
 * não fique escondido pelo header.
 *
 * @param {ElementFinder} element Elemento que deve ficar visível.
 * */
exports.toElement = function (element) {
    browser.executeAsyncScript(function (element, done) {
        /* globals window */
        if (element && element.getBoundingClientRect().top < 60) {
            window.scrollTo(0, 0);
            return setTimeout(done, 0);
        }
        done();
    }, element);
    return element;
};

/**
 * Faz scroll para o topo de uma div que tenha scrollbar.
 *
 * @param {ElementFinder} element Elemento que deve ficar visível.
 * */
exports.toElementTop = function (element) {
    browser.executeAsyncScript(function (element, done) {
        /* globals window */
        element.scrollTop = 0;
        setTimeout(done, 0);
    }, element);
    return element;
};

/**
 * Faz scroll para o topo da página.
 *
 * @deprecated Evite o uso deste método. Teoricamente o {#toElement} deve ser o suficiente.
 * */
exports.toTop = function () {
    browser.executeAsyncScript(function (done) {
        /* globals window */
        window.scrollTo(0, 0);
        setTimeout(done, 0);
    });
};