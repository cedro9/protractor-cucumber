"use strict";

var { Given, When, Then } = require("cucumber");

var chai = require('chai');
var chaiAsPromised = require('chai-as-promised');
chai.use(chaiAsPromised);
var expect = chai.expect;

var utils = require('../scripts/utils');
var filter = require("../scripts/filter");
var navigate = require("../scripts/navigate");
var messages = require("../scripts/messages");
var printscreen = require("../scripts/printScreen");
var wait = require("../scripts/wait");

var fillDurationInput = utils.fillDurationInput;
var assertBasicInfo = require("../scripts/fillBasicEntity").assertBasicEntityInfo;
var assertDurationContent = utils.assertDurationContent;
var assertTextFieldContent = utils.assertTextFieldContent;
var elementClick = utils.elementClick;

/********* ACESSO A TELA ************/
Given('acesso a tela de Tempo de espera', function () {
    return navigate.acessoTelaCadastro("[name='menu-userMenu.cadastre']", "[name='subMenu-userMenu.leadTimes']");
});

Given('que estou na tela de pesquisa de Tempo de espera', function () {
    return navigate.acessoTela("[name='menu-userMenu.cadastre']", "[name='subMenu-userMenu.leadTimes']");
});

/********* BOTÕES ************/

/********* VALIDAÇÃO CAMPOS ************/
When('confere se os campos estão preenchidos Codigo {string},  Nome {string} e Descrição {string}', function (string, string2, string3) {
    return assertBasicInfo(string, string2, string3);
});

When('confere se o Agrupador está preenchido com {string}', function (string) {
    return assertTextFieldContent(["name='tagAnchor'"], string);
});

When('confere se a duração da ZT {string} está preenchida com {string} dias, {string} horas e {string} minutos', function (string, string2, string3, string4) {
    return assertDurationContent(string, string2, string3, string4);
});

/********* VALIDAÇÃO MENSAGENS ************/

/********* PREENCHIMENTO DE CAMPOS ************/
When('seleciono o Agrupador {string}', function (string) {
    return utils.fillTextxpath("//*[@name='tagInputTextField']", string);
});

When('altero o Agrupador {string}', function (string) {
    elementClick("[name='nlgTagInputRemoveTag']");
    return utils.fillTextxpath("//*[@name='tagInputTextField']", string);
});

When('preencho {string} com {string} dias, {string} horas e {string} minutos', function (el, day, hour, min) {
    // Write code here that turns the phrase above into concrete actions
    return fillDurationInput("[name='" + el + "']", day, hour, min);
});

/********* CONFIGURAÇÃO E EXECUÇÃO DE FILTRO ************/
When('realizo o filtro Tempo de espera com o codigo {string}', function (string) {
    filter.configuraFiltro();
    utils.fillText("[name='tagInputTextField']", string);
    return utils.elementClick("[name='submitButton']");
});

/********* EXCLUSÃO DE REGISTRO ************/
Then('excluo o cadastro de Tempo de espera gerado no teste com o codigo {string}', function (string) {
    element(by.xpath("//*[@name='body']")).sendKeys(protractor.Key.ESCAPE);
    navigate.acessoTela("[name='menu-userMenu.cadastre']", "[name='subMenu-userMenu.leadTimes']");
    filter.configuraFiltro();
    utils.fillText("[name='tagInputTextField']", string);
    utils.elementClick("[name='submitButton']");
    return filter.excluirPosFiltro(string);
});