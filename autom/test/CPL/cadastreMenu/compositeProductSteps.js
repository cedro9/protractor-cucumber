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
Given('acesso a tela de cadastro de Produto Composto', function () {
    return navigate.acessoTelaCadastro("[name='menu-userMenu.cadastre']", "[name='subMenu-userMenu.compositeProducts']");
});

Given('que estou na tela de pesquisa de Produto Composto', function () {
    return navigate.acessoTela("[name='menu-userMenu.cadastre']", "[name='subMenu-userMenu.compositeProducts']");
});

/********* BOTÕES ************/
When('removo o segundo produto', function () {
    return utils.elementClickXpath("//*[@name='1']/*/*[@name='remove']/*");
});

/********* VALIDAÇÃO MENSAGENS ************/
Then('e exibido a mensagem indicando que os campos obrigatorios nao preenchidos para o cadastro de Produto Composto', function () {
    let self = this;
    return messages.validaMensagem("Nenhuma propriedade da entidade foi alterada.", self);

});

Then('e exibido a mensagem indicando que o campo Embarcador esta vazio', function () {
    let self = this;
    return messages.validaMensagem("O campo embarcador está vazio.", self);

});

Then('e exibido a mensagem indicando que deve conter pelo menos {int} produto', function (int) {
    let self = this;
    return messages.validaMensagem("A quantidade de subvolumes é inválida, deve ser superior a 1 (produtos compostos devem ter múltiplos subvolumes).", self);
});

Then('e exibido a mensagem indicando que deve conter pelo menos {int} Subvolume', function (int) {
    let self = this;
    return messages.validaMensagem("O produto composto deve ter todos seus subvolumes devidamente preenchidos. Cada subvolume deve possuir um produto simples e uma quantidade associados.", self);
});

/********* PREENCHIMENTO DE CAMPOS ************/
When('seleciono o embarcador {string}', function (string) {
    utils.clearTextFieldXpath("//*[@name='shipper']/*[@name='tagInputTextField']");
    return utils.fillTextxpath("//*[@name='shipper']/*[@name='tagInputTextField']", string);
});

When('Adiciono o produto {string}, Quantidade {string} e Referencia {string}', function (string, string2, string3) {
    utils.elementClick("[name='add']");
    utils.fillTextxpath("//*[@name='product']/*[@name='tagInputTextField']", string);
    utils.fillNumberXpath("//*[@name='nlgNumberInput']", string2);
    return utils.fillTextxpath("//*[@name='reference']", string3);
});

When('Adiciono o segundo produto {string}, Quantidade {string} e Referencia {string}', function (string, string2, string3) {
    utils.elementClick("[name='add']");
    utils.fillTextxpath("//*[@name='1']/*/*[@name='product']/*[@name='tagInputTextField']", string);
    utils.fillNumberXpath("//*[@name='1']/*/*[@name='quantity']/*[@name='nlgNumberInput']", string2);
    return utils.fillTextxpath("//*[@name='1']/*/*[@name='reference']", string3);
});

When('Adiciono o terceiro produto {string}, Quantidade {string} e Referencia {string}', function (string, string2, string3) {
    utils.elementClick("[name='add']");
    utils.fillTextxpath("//*[@name='2']/*/*[@name='product']/*[@name='tagInputTextField']", string);
    utils.fillNumberXpath("//*[@name='2']/*/*[@name='quantity']/*[@name='nlgNumberInput']", string2);
    return utils.fillTextxpath("//*[@name='2']/*/*[@name='reference']", string3);
});

When('Adiciono o quarto produto {string}, Quantidade {string} e Referencia {string}', function (string, string2, string3) {
    utils.elementClick("[name='add']");
    utils.fillTextxpath("//*[@name='3']/*/*[@name='product']/*[@name='tagInputTextField']", string);
    utils.fillNumberXpath("//*[@name='3']/*/*[@name='quantity']/*[@name='nlgNumberInput']", string2);
    return utils.fillTextxpath("//*[@name='3']/*/*[@name='reference']", string3);
});

When('removo todos subvolumes', function () {
    return utils.elementClick("[name='remove']");
});

/********* CONFIGURAÇÃO E EXECUÇÃO DE FILTRO ************/
When('realizo o filtro produto composto pelo codigo {string}', function (string) {
    filter.configuraFiltro();
    utils.fillText("[name='tagInputTextField']", string);
    return utils.elementClick("[name='submitButton']");
});

/********* EXCLUSÃO DE REGISTRO ************/
Then('excluo o cadastro produto composto gerado no teste com o codigo {string}', function (string) {
    element(by.xpath("//*[@name='body']")).sendKeys(protractor.Key.ESCAPE);
    navigate.acessoTela("[name='menu-userMenu.cadastre']", "[name='subMenu-userMenu.compositeProducts']");
    filter.configuraFiltro();
    utils.fillText("[name='tagInputTextField']", string);
    utils.elementClick("[name='submitButton']");
    return filter.excluirPosFiltro(string);
});