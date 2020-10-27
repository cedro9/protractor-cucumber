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

/********* ACESSO A TELA ************/
Given('acesso a tela de Grupo de Regiões', function () {
    return navigate.acessoTelaCadastro("[name='menu-userMenu.cadastre']", "[name='subMenu-userMenu.regionGroup']");
});

Given('que estou na tela de pesquisa de Grupo de Regiões', function () {
    return navigate.acessoTela("[name='menu-userMenu.cadastre']", "[name='subMenu-userMenu.regionGroup']");
});

/********* BOTÕES ************/

/********* VALIDAÇÃO MENSAGENS ************/
Then('é exibido a mensagem Pelo menos uma região deve ser adicionada ao grupo.', function () {

    let self = this;
    return messages.validaMensagem("Pelo menos uma região deve ser adicionada ao grupo.", self);

});

/********* PREENCHIMENTO DE CAMPOS ************/
When('seleciono o Importar regiões {string}', function (string) {
    return utils.addTextTags("[name='importRegion']", string);
});

/********* CONFIGURAÇÃO E EXECUÇÃO DE FILTRO ************/
When('realizo o filtro Grupo de Regiões com o codigo {string}', function (string) {
    filter.configuraFiltro();
    utils.fillText("[name='tagInputTextField']", string);
    return utils.elementClick("[name='submitButton']");
});

/********* EXCLUSÃO DE REGISTRO ************/
Then('excluo o cadastro de Grupo de Regiões gerado no teste com o codigo {string}', function (string) {
    element(by.xpath("//*[@name='body']")).sendKeys(protractor.Key.ESCAPE);
    navigate.acessoTela("[name='menu-userMenu.cadastre']", "[name='subMenu-userMenu.regionGroup']");
    filter.configuraFiltro();
    utils.fillText("[name='tagInputTextField']", string);
    utils.elementClick("[name='submitButton']");
    return filter.excluirPosFiltro(string);
});