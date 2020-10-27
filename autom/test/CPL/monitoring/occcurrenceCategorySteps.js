"use strict";

var { Given, When, Then } = require("cucumber");

var chai = require('chai');
var chaiAsPromised = require('chai-as-promised');
chai.use(chaiAsPromised);
var expect = chai.expect;

var isEnabled = require("../scripts/wait").isEnabled;
var utils = require('../scripts/utils');
var filter = require("../scripts/filter");
var navigate = require("../scripts/navigate");
var printscreen = require("../scripts/printScreen");
var messages = require("../scripts/messages");

Given('que estou na tela de categoria de ocorrencias', function () {
    return navigate.acessoTela("[name='menu-userMenu.monitoring']", "[name='subMenu-userMenu.occurrenceCategory']");
});

When('seleciono a checkbox Quantidade de Categoria de ocorrência', function () {
    return utils.elementClickXpath("//*[@name='occurrenceCategoryQuantity']");
});

When('seleciono a checkbox Impacto temporal de Categoria de ocorrência', function () {
    return utils.elementClickXpath("//*[@name='occurrenceCategoryTimeDelta']");
});

When('seleciono a checkbox Impacto financeiro de Categoria de ocorrência', function () {
    return utils.elementClickXpath("//*[@name='occurrenceCategoryValueDelta']");
});

When('seleciono a checkbox Notificar sistema externo de Categoria de ocorrência', function () {
    return utils.elementClickXpath("//*[@name='occurrenceCategoryNotifyExternalSystem']");
});

// FILTRO
When('realizo o filtro de Categoria de ocorrência com o código {string}', function (string) {
    element(by.xpath("//button[@name='submitButton']")).sendKeys(protractor.Key.ESCAPE);
    filter.configuraFiltroPorAtributo("Código externo");
    utils.fillText("[name='tagInputTextField']", string);
    return utils.elementClick("[name='submitButton']");
});

// ECLUSÃO
Then('excluo o cadastro de Categoria de ocorrência do Monitoramento com o código externo {string}', { timeout: 90 * 1000 }, function (string) {
    // element(by.xpath("//button[@name='submitButton']")).sendKeys(protractor.Key.ESCAPE);
    filter.configuraFiltroPorAtributo("Código externo");
    utils.fillTextxpath("//*[@ng-model='filterField.value']//*[@name='tagInputTextField']", string);
    utils.elementClick("[name='submitButton']");
    return filter.excluirPosFiltro(string);
});