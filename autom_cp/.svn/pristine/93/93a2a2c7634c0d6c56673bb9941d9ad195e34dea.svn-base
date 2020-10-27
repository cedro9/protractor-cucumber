"use strict";

var utils = require("../scripts/utils"),
    elementClick = utils.elementClick,
    wait = require("./wait"),
    present = require("../scripts/wait").present,
    modalClosed = require("./wait").modalClosed,
    scroll = require("../scripts/scroll");

exports.acessoTelaCadastro = function (menu, subMenu) {
    element(by.css(menu)).isPresent().then(function (isPresent) {
        if (isPresent) {
            elementClick(menu);
            elementClick(subMenu);
        } else {
            $('body').sendKeys(protractor.Key.F5);
            $('body').sendKeys(protractor.Key.TAB);
            elementClick(menu);
            elementClick(subMenu);
        }
    });
    return elementClick("[name='cadastreButton']");
};

exports.acessoTela = function (menu, subMenu) {
    modalClosed();
    element(by.css(menu)).isPresent().then(function (isPresent) {
        if (isPresent) {
            elementClick(menu);
        } else {
            $('body').sendKeys(protractor.Key.F5);
            elementClick(menu);
        }
    });
    return elementClick(subMenu);
};

/**
 * Navega para uma página, utilizando o menu lateral.
 *
 * @param {string} menu Nome da opção principal à ser clicada.
 * @param {string} subMenu Nome da opção à ser clicada.
 * */
exports.to = function (menu, subMenu) {
    const page = (menu, subMenu) => {
        // modalClosed();
        scroll.toTop();
        var sideBar = element(by.css(".pageSidebar "));
        var menuEntry = sideBar.element(by.css("[menu-entry='" + menu + "']"));
        wait.present(menuEntry).click();
        // scroll.toElementTop(menuEntry.element(by.linkText(subMenu)));
        return wait.present(scroll.toElementTop(menuEntry.element(by.linkText(subMenu)))).click();
    };
    return browser.wait(page(menu, subMenu), 5 * 1000, 'Retrying within 5 seconds')
        .catch(page(menu, subMenu));
};