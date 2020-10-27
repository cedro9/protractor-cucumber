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

const { fillText,
    fillNumber } = utils;

Given('que estou na tela de causas de ocorrencias', function () {
    return navigate.acessoTela("[name='menu-userMenu.monitoring']", "[name='subMenu-userMenu.occurrenceCause']");
});

When('preencho o campo Impacto padrão Financeiro {string}', function (name) {
    utils.clearTextFieldXpath("//*[@name='occurrenceCauseValueDelta'] //*[@name='nlgNumberInput']");
    return fillText("[name='occurrenceCauseValueDelta'] [name='nlgNumberInput']", name);
});

When('preencho o campo Impacto padrão Quantitativo {string}', function (name) {
    utils.clearTextXpath("//*[@name='occurrenceCauseQuantityDelta'] //*[@name='nlgNumberInput']");
    return fillText("[name='occurrenceCauseQuantityDelta'] [name='nlgNumberInput']", name);
});

When('preencho o Impacto padrão Temporal hora {string}', function (hora) {
    return fillNumber("[name='hour']", hora);
});

When('preencho o Impacto padrão Temporal minutos {string}', function (minutos) {
    return fillText("[name='minute'] [name='nlgNumberInput']", minutos);
});

When('preencho o Status padrão {string}', function (string) {
    utils.clearTextFieldXpath("//*[@name='occurrenceCauseDefaultStatus']//*[@name='tagInputTextField']")
    return utils.fillTextxpath("//*[@name='occurrenceCauseDefaultStatus']//*[@name='tagInputTextField']", string);
});

When('preencho o Ordem {string}', function (name) {
    utils.clearTextXpath("//*[@name='occurrenceCauseOrder'] //*[@name='nlgNumberInput']");
    return fillText("[name='occurrenceCauseOrder'] [name='nlgNumberInput']", name);
});

When('preencho o Categoria de ocorrência {string}', function (string) {
    utils.clearTextFieldXpath("//*[@name='occurrenceCauseOccurrenceCategory']//*[@name='tagInputTextField']")
    return utils.fillTextxpath("//*[@name='occurrenceCauseOccurrenceCategory']//*[@name='tagInputTextField']", string);
});

When('preencho o Tipos de monitoráveis permitidos {string}', function (string) {
    utils.clearTextFieldXpath("//*[@name='occurrenceCauseAllowedMonitorableTypes']//*[@name='tagInputTextField']")
    return utils.fillTextxpath("//*[@name='occurrenceCauseAllowedMonitorableTypes']//*[@name='tagInputTextField']", string);
});

When('preencho o Ícone da ocorrência {string}', function (string) {
    utils.clearTextFieldXpath("//*[@name='occurrenceCauseOccurrenceCategoryIcons']//*[@name='tagInputTextField']")
    return utils.fillTextxpath("//*[@name='occurrenceCauseOccurrenceCategoryIcons']//*[@name='tagInputTextField']", string);
});

When('seleciono a checkbox Anexo obrigatório', function () {
    return utils.elementClickXpath("//*[@name='occurrenceCauseImageRequired']");
});

When('realizo o filtro de Causas de ocorrência com o nome {string}', function (string) {
    element(by.xpath("//button[@name='submitButton']")).sendKeys(protractor.Key.ESCAPE);
    filter.configuraFiltroPorAtributo("Nome");
    utils.fillText("[name='tagInputTextField']", string);
    return utils.elementClick("[name='submitButton']");
});

Then('excluo o cadastro de status de ocorrência do Monitoramento com o nome {string}', { timeout: 90 * 1000 }, function (string) {
    element(by.xpath("//button[@name='submitButton']")).sendKeys(protractor.Key.ESCAPE);
    filter.configuraFiltroPorAtributo("Nome");
    utils.fillTextxpath("//*[@ng-model='filterField.value']//*[@name='tagInputTextField']", string);
    utils.elementClick("[name='submitButton']");
    return filter.excluirPosFiltro(string);
});

Then('excluo o cadastro de categorias de ocorrência do Monitoramento com o código externo {string}', { timeout: 90 * 1000 }, function (string) {
    element(by.xpath("//button[@name='submitButton']")).sendKeys(protractor.Key.ESCAPE);
    filter.configuraFiltroPorAtributo("Código externo");
    utils.fillTextxpath("//*[@ng-model='filterField.value']//*[@name='tagInputTextField']", string);
    utils.elementClick("[name='submitButton']");
    return filter.excluirPosFiltro(string);
});