"use strict";

var { Given, When, Then, } = require("cucumber");

var chai = require('chai');
var chaiAsPromised = require('chai-as-promised');
chai.use(chaiAsPromised);
var expect = chai.expect;

var utils = require('../scripts/utils');
var filter = require("../scripts/filter");
var navigate = require("../scripts/navigate");
var messages = require("../scripts/messages");
var printscreen = require("../scripts/printScreen");

/********* ACESSO A TELA ************/
Given('acesso a tela de cadastro de Zona de Transporte', function () {
    return navigate.acessoTelaCadastro("[name='menu-userMenu.cadastre']", "[name='subMenu-userMenu.carrierZone']");
});

Given('que estou na tela de pesquisa de Zona de Transporte', function () {
    return navigate.acessoTela("[name='menu-userMenu.cadastre']", "[name='subMenu-userMenu.carrierZone']");
});

/********* BOTÕES ************/

/********* VALIDAÇÃO MENSAGENS ************/
Then('e exibido a mensagem indicando todos os campos obrigatorios do cadastro de zona de transporte', function () {
    let self = this;
    printscreen.stepPrintScreen(self);
    expect(element(by.css("[name='entity.validator.NullGrouper']")).getText()).to.eventually.equal("O agrupador de zonas de transporte não pode ser nulo.");
    expect(element(by.css("[name='entity.validator.NullDetailType']")).getText()).to.eventually.equal("A zona de transporte deve possuir um tipo de detalhe não nulo.");
    expect(element(by.css("[name='entity.validator.NullDetail']")).getText()).to.eventually.equal("A zona de transporte deve possuir um detalhe não nulo.");
    expect(element(by.css("[name='entity.validator.NullLocalityRestriction']")).getText()).to.eventually.equal("A restrição de localidade não pode ser nula.");
    expect(element(by.css("[name='entity.validator.EmptyDescription']")).getText()).to.eventually.equal("O campo descrição está vazio.");
    expect(element(by.css("[name='entity.validator.EmptySourceId']")).getText()).to.eventually.equal("O campo código está vazio.");
    return expect(element(by.css("[name='entity.validator.EmptyName']")).getText()).to.eventually.equal("O campo nome está vazio.");
});

Then('e exibido a mensagem que A zona de transporte deve possuir um detalhe não nulo.', function () {
    let self = this;
    printscreen.stepPrintScreen(self);
    expect(element(by.css("[name='entity.validator.NullDetailType']")).getText()).to.eventually.equal("A zona de transporte deve possuir um tipo de detalhe não nulo.");
    return expect(element(by.css("[name='entity.validator.NullDetail']")).getText()).to.eventually.equal("A zona de transporte deve possuir um detalhe não nulo.");
});

Then('e exibido a mensagem que A restrição de localidade não pode ser nula.', function () {
    let self = this;
    return messages.validaMensagem("A restrição de localidade não pode ser nula.", self);
});

Then('e exibido a mensagem A zona de transporte não pode ter a mesma prioridade que outras zonas de transporte do mesmo agrupador.', function () {
    let self = this;
    return messages.validaMensagem("A zona de transporte não pode ter a mesma prioridade que outras zonas de transporte do mesmo agrupador.", self);
});

Then('e exibido a mensagem que A zona de transporte deve possuir ao menos um elemento.', function () {
    let self = this;
    return messages.validaMensagem("A zona de transporte deve possuir ao menos um elemento.", self);
});

/********* PREENCHIMENTO DE CAMPOS ************/
When('Seleciono o agrupador {string}, Prioridade {string} e Tipo {string}', function (string, string2, string3) {
    utils.clearTextFieldXpath("//*[@name='edition.carrierZone.carrierZoneGrouper']/*[@name='tagInputTextField']");
    utils.fillTextxpath("//*[@name='edition.carrierZone.carrierZoneGrouper']/*[@name='tagInputTextField']", string);
    utils.fillNumber("[name='edition.carrierZone.priority']", string2);
    utils.clearTextFieldXpath("//*[@name='edition.carrierZone.carrierZoneDetail']/*[@name='tagInputTextField']");
    return utils.fillTextxpath("//*[@name='edition.carrierZone.carrierZoneDetail']/*[@name='tagInputTextField']", string3);
});

When('Seleciono a Restrição de Localidade {string} e Velocidade {string}', function (string, string2) {
    utils.fillTextxpath("//*[@name='edition.carrierZone.localityRestriction']/*[@name='tagInputTextField']", string);
    return utils.fillNumber("[name='edition.carrierZone.averageSpeed']", string2);
});

When('Seleciono o Pais {string}, Estado {string}', function (string, string2) {
    utils.fillTextxpath("//*[@name='edition.carrierZone.availableCity.country']/*[@name='tagInputTextField']", string);
    utils.fillTextxpath("//*[@name='edition.carrierZone.availableCity.state']/*[@name='tagInputTextField']", string2);
    return utils.elementClickXpath("//*[@name='filterAvailableCity']");
});

When('Seleciono a Cidade Disponivel {string}', function (string) {
    utils.fillTextxpath("//*[@name='filterLeft']", string);
    utils.elementClick("[name='ListLeft'] option[label='" + string + " (SP)']");
    return utils.elementClickXpath("//*[@name='moveToRight']");
});

When('eu altero a Prioridade para {string}', function (string) {
    return utils.fillNumber("[name='edition.carrierZone.priority']", string);
});

When('eu limpo o campo Restrição de Localidade', function () {
    return utils.clearTextFieldXpath("//*[@name='edition.carrierZone.localityRestriction']/*[@name='tagInputTextField']");
});

When('eu removo a cidade selecionada', function () {
    return utils.elementClick("[name='moveAllToLeft']");
});

When('altero a restrição geral {string}', function (string) {
    utils.elementClickXpath("//*[@name='edition.carrierZone.localityRestriction']//*[@name='nlgTagInputRemoveTag']");
    return utils.fillTextxpath("//*[@name='edition.carrierZone.localityRestriction']/*[@name='tagInputTextField']", string);
});

/********* CONFIGURAÇÃO E EXECUÇÃO DE FILTRO ************/
When('realizo o filtro de Zona de Transporte com o codigo {string}', function (string) {
    filter.configuraFiltro();
    utils.fillText("[name='tagInputTextField']", string);
    return utils.elementClick("[name='submitButton']");
});

/********* EXCLUSÃO DE REGISTRO ************/
Then('excluo o cadastro Zona de Transporte gerado no teste com o codigo {string}', function (string) {
    element(by.xpath("//*[@name='body']")).sendKeys(protractor.Key.ESCAPE);
    navigate.acessoTela("[name='menu-userMenu.cadastre']", "[name='subMenu-userMenu.carrierZone']");
    filter.configuraFiltro();
    utils.fillText("[name='tagInputTextField']", string);
    utils.elementClick("[name='submitButton']");
    return filter.excluirPosFiltro(string);
});