"use strict";

var { Given, When, Then } = require("cucumber");

var chai = require('chai');
var chaiAsPromised = require('chai-as-promised');
chai.use(chaiAsPromised);
var expect = chai.expect;

var utils = require('../scripts/utils'),
    fillTextxpath = utils.fillTextxpath,
    elementClick = utils.elementClick,
    elementClickXpath = utils.elementClickXpath;
var filter = require("../scripts/filter");
var cadastroDeBau = require('../scripts/dependencies').cadastroDeBau;
var navigate = require("../scripts/navigate");
var messages = require("../scripts/messages");
var present = require("../scripts/wait").present;
const transfer = require("../scripts/transferPanel");

const vehicle = require("../pages/cadastre/vehiclePage");

Given('que cadastro o veículo {string}, com {string} de largura, {string} de comprimento e {string} de altura', function (veiculo, largura, comprimento, altura) {
    return vehicle.cadastre(veiculo, veiculo, veiculo, largura, comprimento, altura);
});

/********* ACESSO A TELA ************/
Given('acesso a tela de cadastro de Veiculos', function () {
    return navigate.acessoTelaCadastro("[name='menu-userMenu.cadastre']", "[name='subMenu-userMenu.vehicles']");
});

Given('que estou na tela de pesquisa de Veiculos', function () {
    return navigate.acessoTela("[name='menu-userMenu.cadastre']", "[name='subMenu-userMenu.vehicles']");
});

/********* BOTÕES ************/
When('clico na aba Restrições de categorias de produto', function () {
    return utils.elementClickXpath("//*[@name='productCategoryRestrictions']/*");
});

When('clico na aba Restrições de categorias de invólucro', function () {
    return utils.elementClickXpath("//*[@name='shipmentUnitWrapperCategoryRestrictions']/*");
});

When('clico na aba Baus', function () {
    return utils.elementClickXpath("//*[@name='containers']/*");
});

/********* VALIDAÇÃO MENSAGENS ************/
Then('e exibido a mensagem indicando todos os campos obrigatorios do cadastro de Veiculos', function () {
    expect(element(by.css("[name='entity.validator.InvalidSizeModals']")).getText()).to.eventually.equal("Ao menos um modal deve estar associado ao veículo.");
    expect(element(by.css("[name='entity.validator.InvalidSizeVehicleContainers']")).getText()).to.eventually.equal("Deve haver pelo menos um baú no veículo.");
    expect(element(by.css("[name='entity.validator.EmptyDescription']")).getText()).to.eventually.equal("O campo descrição está vazio.");
    expect(element(by.css("[name='entity.validator.EmptySourceId']")).getText()).to.eventually.equal("O campo código está vazio.");
    return expect(element(by.css("[name='entity.validator.EmptyName']")).getText()).to.eventually.equal("O campo nome está vazio.");
});

Then('e exibido a mensagem Ao menos um modal deve estar associado ao veículo.', function () {
    let self = this;
    return messages.validaMensagem("Ao menos um modal deve estar associado ao veículo.", self);
});

Then('e exibido a mensagem Deve haver pelo menos um baú no veículo.', function () {
    let self = this;
    return messages.validaMensagem("Deve haver pelo menos um baú no veículo.", self);
});

/********* PREENCHIMENTO DE CAMPOS ************/
When('preencho a Similaridade {string} e a Propriedade {string}', function (string, string2) {
    utils.fillNumber("[name='similarity']", string);
    return utils.fillNumber("[name='priority']", string2);
});

When('preencho o Numero de Eixos {string} e Velocidade Padrão {string}', function (string, string2) {
    utils.fillNumber("[name='numberOfAxles']", string);
    return utils.fillNumber("[name='defaultSpeed']", string2);
});

When('seleciono a Associação de modais {string}', function (modal) {
    return vehicle.setAssociatedModal(modal);
});

When('seleciono a Configurações para Carregamento-Descarregamento {string}', function (direction) {
    return vehicle.setBlockedUnlodDirections(direction);
});

When('seleciono a forma {string}', function (shape) {
    return vehicle.setShape(shape);
});

When('seleciono o Empilhamento acima nao permitido {string}', function (shape) {
    return vehicle.setBlockedShapesAbove(shape);
});

When('seleciono o Empilhamento abaixo nao permitido {string}', function (value) {
    return vehicle.setBlockedShapesBelow(value);
});

When('seleciono as Restrições de categorias de produto {string}, Altura maxima {string}', function (poductCategory, maxHight) {
    return vehicle.setMaxHeightByProductCategory(poductCategory, maxHight);
});

When('seleciono as Restrições de categorias de invólucro {string}, Altura maxima {string}', function (shipmentUnitWrapperCategory, height) {
    return vehicle.setShipmentUnitWrapperCategoryRestrictions(shipmentUnitWrapperCategory, height);
});

Given('que altero a classificação veículo granel para {string} do veículo {string}', function (classification, vehicleCode) {
    return vehicle.updateVehicleClassificationGranelVeihcleType(classification, vehicleCode);
});

When('adiciono 1 Bau', function () {
    var codigoBau = "Bau1",
        largura = "2,50",
        comprimento = "10,00",
        altura = "3,00",
        bau = 1;
    utils.adiconaBau(codigoBau, largura, comprimento, altura, bau);
    utils.adiconaEixo();
    return utils.adiconaEspaçosOcupados();
});

When('adiciono o segundo Bau', function () {
    var codigoBau = "Bau2",
        largura = "2,50",
        comprimento = "10,00",
        altura = "3,00",
        bau = 2;
    return utils.adiconaBau(codigoBau, largura, comprimento, altura, bau);
});

When('edito 1 Bau', function () {
    return utils.fillNumber("[name='1'] [name='maxWeight']", "16600,00");
});

When('edito o segundo Bau', function () {
    return utils.fillNumber("[name='2'] [name='maxWeight']", "16700,00");
});

When('desseleciono todas as modais', function () {
    return utils.elementClickXpath("//*[@name='modals']/*/*/*/*[@name='moveAllToLeft']");
});

When('apago o Bau', function () {
    return utils.elementClickXpath("//*[@name='remove nlgTableRemoveButton']");
});

/********* CONFIGURAÇÃO E EXECUÇÃO DE FILTRO ************/
When('realizo o filtro Veiculos com o codigo {string}', function (string) {
    filter.configuraFiltro();
    utils.fillText("[name='tagInputTextField']", string);
    return utils.elementClick("[name='submitButton']");
});

/********* EXCLUSÃO DE REGISTRO ************/
Then('excluo o cadastro de Veiculo gerado no teste com o codigo {string}', function (string) {
    element(by.xpath("//*[@name='body']")).sendKeys(protractor.Key.ESCAPE);
    navigate.acessoTela("[name='menu-userMenu.cadastre']", "[name='subMenu-userMenu.vehicles']");
    filter.configuraFiltro();
    utils.fillText("[name='tagInputTextField']", string);
    utils.elementClick("[name='submitButton']");
    return filter.excluirPosFiltro(string);
});