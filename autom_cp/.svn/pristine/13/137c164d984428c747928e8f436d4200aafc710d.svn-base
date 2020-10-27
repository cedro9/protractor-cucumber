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
When('preencho o campo provedor {string}', function (string) {
    utils.clearTextFieldXpath("//*[@name='provider']//*[@name='tagInputTextField']");
    return utils.fillTextxpath("//*[@name='provider']//*[@name='tagInputTextField']", string);
});

When('preencho o campo número do dispositivo mobile {string}', function (string) {
    utils.clearNumberFieldXpath("//*[@name='nlgIntlPhoneNumber']");
    return utils.fillTextxpath("//*[@name='nlgIntlPhoneNumber']", string);
});

When('preencho o campo número do dispositivo {string}', function (string) {
    utils.clearNumberFieldXpath("//*[@name='deviceId']");
    return utils.fillTextxpath("//*[@name='deviceId']", string);
});

When('preencho a placa {string}', function (string) {
    utils.clearNumberFieldXpath("//*[@name='plate']");
    return utils.fillTextxpath("//*[@name='plate']", string);
});

When('preencho a descrição {string}', function (string) {
    utils.clearNumberFieldXpath("//*[@name='description']");
    utils.fillTextxpath("//*[@name='description']", string);
    return utils.elementClickXpath("//*[@name='description']");
});

// EXCLUSÃO DE CADASTRO
Then('excluo o dispositivo cadastrado com o código {string}', { timeout: 90 * 1000 }, function (string) {
    element(by.xpath("//button[@name='submitButton']")).sendKeys(protractor.Key.ESCAPE);
    filter.configuraFiltroPorAtributo("Número do dispositivo");
    utils.fillTextxpath("//*[@ng-model='filterField.value']", string);
    utils.elementClick("[name='submitButton']");
    return filter.excluirPosFiltro(string);
});

// FILTRO
When('realizo o filtro de dispositivos com o número {string}', function (string) {
    element(by.xpath("//button[@name='submitButton']")).sendKeys(protractor.Key.ESCAPE);
    filter.configuraFiltroPorAtributo("Número do dispositivo");
    utils.fillTextxpath("//*[@ng-model='filterField.value']", string);
    return utils.elementClick("[name='submitButton']");
});