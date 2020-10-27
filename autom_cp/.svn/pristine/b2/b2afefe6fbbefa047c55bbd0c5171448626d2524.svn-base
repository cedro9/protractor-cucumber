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

var fillDurationInput = utils.fillDurationInput;
const { cadastreFinalStatus,
    cadastreInitialStatus } = require("../pages/monitoring/occurrenceStatusPage");

Given('que estou na tela de status de ocorrencias', function () {
    return navigate.acessoTela("[name='menu-userMenu.monitoring']", "[name='subMenu-userMenu.occurrenceStatus']");
});

When('preencho o tempo Primeiro SLA {string} dia, {string} hora, {string} minutos', function (string, string2, string3) {
    const elemento = "[name='occurrenceStatusFirstSla']";
    return fillDurationInput(elemento, string, string2, string3);
});

When('preencho o tempo Segundo SLA {string} dia, {string} hora, {string} minutos', function (string, string2, string3) {
    const elemento = "[name='occurrenceStatusSecondSla']";
    return fillDurationInput(elemento, string, string2, string3);
});

When('seleciono o tipo do status {string}', function (string) {
    utils.clearTextFieldXpath("//*[@name='occurrenceStatusAllowedStatusTypes']/*[@name='tagInputTextField']");
    return utils.fillTextxpath("//*[@name='occurrenceStatusAllowedStatusTypes']/*[@name='tagInputTextField']", string);
});

When('seleciono próximos status {string}', function (string) {
    utils.clearTextFieldXpath("//*[@name='occurrenceStatusPossibleNextStatuses']/*[@name='tagInputTextField']");
    return utils.fillTextxpath("//*[@name='occurrenceStatusPossibleNextStatuses']/*[@name='tagInputTextField']", string);
});

When('realizo o filtro de status de ocorrência com o nome {string}', function (string) {
    element(by.xpath("//button[@name='submitButton']")).sendKeys(protractor.Key.ESCAPE);
    filter.configuraFiltroPorAtributo("Nome");
    utils.fillText("[name='tagInputTextField']", string);
    return utils.elementClick("[name='submitButton']");
});

Given('que cadastro o status de ocorrência inicial {string}', function (occurrenceStatusName) {
    const statusType = "Inicial";
    return cadastreInitialStatus(statusType, occurrenceStatusName);
});

Given('que cadastro o status de ocorrência final {string}', function (occurrenceStatusName) {
    const statusType = "Final";
    return cadastreFinalStatus(statusType, occurrenceStatusName);
});