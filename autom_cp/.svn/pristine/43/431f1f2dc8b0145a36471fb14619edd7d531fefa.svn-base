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
When('seleciono o tipo de localidade Monitoramento {string}', function (string) {
    utils.clearTextFieldXpath("//*[@ng-model='entity.localityType']/*[@name='tagInputTextField']");
    return utils.fillTextxpath("//*[@ng-model='entity.localityType']/*[@name='tagInputTextField']", string);
});

When('preencho o responsavel Monitoramento {string} e email {string}', function (string, string2) {
    utils.fillTextxpath("//*[@name='responsibleName']", string);
    return utils.fillTextxpath("//*[@name='email']", string2);
});

When('realizo o filtro de localidade pelo identificador {string}', function (string) {
    element(by.xpath("//button[@name='submitButton']")).sendKeys(protractor.Key.ESCAPE);
    filter.configuraFiltroPorAtributo("Código externo");
    utils.fillTextxpath("//*[@ng-model='filterField.value']//*[@name='tagInputTextField']", string);
    return utils.elementClick("[name='submitButton']");
});

When('altero o campo Decrição {string}', function (string) {
    utils.clearTextXpath("//*[@name='description']");
    return utils.fillText("[name='description']", string);
});

When('clico e confirmo na geolocalização pelo endereço', function () {
    return utils.elementClickXpath("//*[@name='validateAddressByAddress']");
});

When('preencho o número do endereço {string}', function (string) {
    utils.clearTextField("[name='address.number']");
    return utils.fillTextxpath("//*[@name='address.number']", string);
});