"use strict";
var { Given, When, Then } = require("cucumber");

var chai = require('chai');
var chaiAsPromised = require('chai-as-promised');
chai.use(chaiAsPromised);
var expect = chai.expect;

var utils = require('../scripts/utils');
var filter = require("../scripts/filter");
var navigate = require("../scripts/navigate");
var printscreen = require("../scripts/printScreen");
var messages = require("../scripts/messages");

/********* ACESSO A TELA ************/

/********* BOTÕES ************/

/********* VALIDAÇÃO MENSAGENS ************/
Then('é exibido a mensagem informando todos os campos obrigatorios da tela de cadastro de Notas Fiscais', function () {
    let self = this;
    printscreen.stepPrintScreen(self);
    expect(element(by.css("[name='entity.validator.emptyOrders']")).getText()).to.eventually.equal("O campo 'pedidos' está vazio.");
    expect(element(by.css("[name='entity.validator.EmptyDescription']")).getText()).to.eventually.equal("O campo descrição está vazio.");
    expect(element(by.css("[name='entity.validator.EmptySourceId']")).getText()).to.eventually.equal("O campo código está vazio.");
    return expect(element(by.css("[name='entity.validator.EmptyName']")).getText()).to.eventually.equal("O campo nome está vazio.");
});

/********* PREENCHIMENTO DE CAMPOS ************/
When('Preencho o Valor da nota fiscal {string}', function (string) {
    return utils.fillNumberXpath("//*[@name='totalValue']/*[@name='nlgNumberInput']",string);
});

When('preencho o Peso da nota fiscal {string}', function (string) {
    return utils.fillNumberXpath("//*[@name='totalWeight']/*[@name='nlgNumberInput']",string);
});

When('seleciono o Pedido {string}', function (string) {
    return utils.fillTextxpath("//*[@name='tagInputTextField']",string);
});

When('preencho a Chave NFe {string}', function (string) {
    return utils.fillNumberXpath("//*[@name='nfeKey']",string);
});

When('apago o pedido', function () {
    return utils.clearTextFieldXpath("//*[@name='tagInputTextField']");
});

/********* CONFIGURAÇÃO E EXECUÇÃO DE FILTRO ************/

/********* EXCLUSÃO DE REGISTRO ************/
Then('excluo o cadastro de Notas Fiscais gerado no teste com o codigo {string}', function (string) {
    element(by.xpath("//*[@name='body']")).sendKeys(protractor.Key.ESCAPE);
    navigate.acessoTela("[name='menu-userMenu.cadastre']", "[name='subMenu-userMenu.invoices']");
    filter.configuraFiltro();
    utils.fillText("[name='tagInputTextField']", string);
    utils.elementClick("[name='submitButton']");
    return filter.excluirPosFiltro(string);
});