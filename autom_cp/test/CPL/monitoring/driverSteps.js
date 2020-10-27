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

// PREENCHIMENTO DE CAMPOS
When('preencho o nome do motorista {string}', function (string) {
    utils.clearTextField("[name='driverName']");
    return utils.fillTextxpath("//*[@name='driverName']", string);
});

When('preencho o Identificador do motorista {string}', function (string) {
    utils.clearTextField("[name='driverIdentifier']");
    return utils.fillTextxpath("//*[@name='driverIdentifier']", string);
});

When('preencho o Codigo do motorista {string}', function (string) {
    utils.clearTextField("[name='driverSourceId']");
    return utils.fillTextxpath("//*[@name='driverSourceId']", string);
});

When('seleciono o Usuario do motorista {string}', function (string) {
    utils.clearTextFieldXpath("//*[@name='driver.user']//*[@name='tagInputTextField']")
    return utils.fillTextxpath("//*[@name='driver.user']//*[@name='tagInputTextField']", string);
});

When('realizo o filtro de motoristas pelo identificador {string}', function (string) {
    element(by.xpath("//button[@name='submitButton']")).sendKeys(protractor.Key.ESCAPE);
    filter.configuraFiltroPorAtributo("Identificador");
    utils.fillTextxpath("//*[@ng-model='filterField.value']//*[@name='tagInputTextField']", string);
    return utils.elementClick("[name='submitButton']");
});

Then('excluo o cadastro do Motorista com o identificador {string}', function (string) {
    element(by.xpath("//button[@name='submitButton']")).sendKeys(protractor.Key.ESCAPE);
    filter.configuraFiltroPorAtributo("Identificador");
    utils.fillTextxpath("//*[@ng-model='filterField.value']//*[@name='tagInputTextField']", string);
    utils.elementClick("[name='submitButton']");
    return filter.excluirPosFiltro(string);
});