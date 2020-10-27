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

const product = require("../pages/cadastre/productPage");
const { cadastre,
  navigateAndUpdateDimensions } = require("../pages/cadastre/productPage");

/********* ACESSO A TELA ************/
Given('acesso a tela de cadastro de produto', function () {
  return navigate.acessoTelaCadastro("[name='menu-userMenu.cadastre']", "[name='subMenu-userMenu.simpleProducts']");
});

Given('que estou na tela de pesquisa Produtos', function () {
  return navigate.acessoTela("[name='menu-userMenu.cadastre']", "[name='subMenu-userMenu.simpleProducts']");
});

/********* BOTÕES ************/

/********* VALIDAÇÃO MENSAGENS ************/
Then('e exibido a mensagem informando todos os campos do cadastro de produto nao preenchidos', function () {
  let self = this;
  printscreen.stepPrintScreen(self);
  expect(element(by.css("[name='entity.validator.NullShipper']")).getText()).to.eventually.equal("O campo embarcador está vazio.");
  expect(element(by.css("[name='entity.validator.NullCategory']")).getText()).to.eventually.equal("O campo categoria está vazio.");
  expect(element(by.css("[name='entity.validator.BelowAbsoluteMinHeight']")).getText()).to.eventually.equal("A altura mínima é de 1mm.");
  expect(element(by.css("[name='entity.validator.EmptyDescription']")).getText()).to.eventually.equal("O campo descrição está vazio.");
  expect(element(by.css("[name='entity.validator.EmptySourceId']")).getText()).to.eventually.equal("O campo código está vazio.");
  return expect(element(by.css("[name='entity.validator.EmptyName']")).getText()).to.eventually.equal("O campo nome está vazio.");
});

Then('e exibido a mensagem que O campo categoria esta vazio.', function () {
  let self = this;
  return messages.validaMensagem("O campo categoria está vazio.", self);
});

Then('e exibido a mensagem que O campo embarcador esta vazio.', function () {
  let self = this;
  return messages.validaMensagem("O campo embarcador está vazio.", self);
});

Then('e exibido a mensagem que A altura minima e de 1mm.', function () {
  let self = this;
  return messages.validaMensagem("A altura mínima é de 1mm.", self);
});

Then('e exibido a mensagem Uma folga de embutimento deve ser definida.', function () {
  let self = this;
  return messages.validaMensagem("Uma folga de embutimento deve ser definida.", self);
});

Then('e exibido a mensagem Uma folga e orientação de embutimento deve ser definida.', function () {
  let self = this;
  printscreen.stepPrintScreen(self);
  expect(element(by.css("[name='entity.validator.InvalidEmbeddingOffset']")).getText()).to.eventually.equal("Uma folga de embutimento deve ser definida.");
  return expect(element(by.css("[name='entity.validator.InvalidEmbeddingOrientation']")).getText()).to.eventually.equal("Uma orientação de embutimento deve ser selecionada.");
});

/********* PREENCHIMENTO DE CAMPOS ************/
When('Preencho o campo Categioria com a categoria {string}', function (category) {
  return product.setCategory(category);
});

When('Preencho o campo Altura minima com o valor {string}', function (height) {
  return product.setHeight(height);
});

When('Preencho os campos de embutimento Orientação {string} e folga {string}', function (string, string2) {
  return product.setEmbedding(string, string2);
});

When('altero o campo de classificação classe de risco para {string}', function (string) {
  return product.setProductClassificationRiskClass(string);
});

When('altero o campo de classificação tipo de produto para {string}', function (string) {
  return product.setProductClassificationProductType(string);
});

Then('verifico se o campo de classificação compartimento de produto está preenchido com {string}', function (string) {
  return product.getProductClassificationProductCompartment(string);
});

When('altero o campo de classificação compartimento de produto para {string}', function (string) {
  return product.setProductClassificationProductCompartment(string);
});

Then('verifico se o campo de classificação de unitização de produto está preenchido com {string}', function (string) {
  return product.getProductClassificationProductUnitization(string);
});

When('altero o campo de classificação de unitização de produto para {string}', function (string) {
  return product.setProductClassificationProductUnitization(string);
});

When('Preencho as dimensões Comprimento {string}, Largura {string}, Altura {string}, Peso {string}', function (length, width, height, weight) {
  product.setLength(length);
  product.setWidth(width);
  product.setHeight(height);
  return product.setWeight(weight);
});

When('Preencho a opção de carregamento / descarregamento {string}', function (string) {
  product.setCheckBoxLoadAndUnloadConfigurations();
  return product.setBlockedDirections(string);
});

When('Preencho o campo forma como {string}', function (shape) {
  return product.setShape(shape);
});

/********* CONFIGURAÇÃO E EXECUÇÃO DE FILTRO ************/
When('realizo o filtro produto com o codigo {string}', function (string) {
  filter.configuraFiltro();
  utils.fillText("[name='tagInputTextField']", string);
  return utils.elementClick("[name='submitButton']");
});

/********* EXCLUSÃO DE REGISTRO ************/
Then('excluo o cadastro de Produto gerado no teste com o codigo {string}', function (string) {
  element(by.xpath("//*[@name='body']")).sendKeys(protractor.Key.ESCAPE);
  navigate.acessoTela("[name='menu-userMenu.cadastre']", "[name='subMenu-userMenu.simpleProducts']");
  filter.configuraFiltro();
  utils.fillText("[name='tagInputTextField']", string);
  utils.elementClick("[name='submitButton']");
  return filter.excluirPosFiltro(string);
});

Given('que cadastro o produto {string} com a categoria {string} e embarcador {string} e classificação classe de risco {string}', function (produto, categoria, embarcador, classification) {
  const height = "0,370",
    width = "0,150",
    length = "0,050";
  return cadastre(produto, produto, produto, categoria, embarcador, classification, height, width, length);
});

Given('que altero as dimensões do produto {string} para {string}', function (code, dimensions) {
  const height = dimensions,
    width = dimensions,
    length = dimensions;
  return navigateAndUpdateDimensions(code, width, height, length);
});

Given('que cadastro o produto {string} com a categoria {string} e embarcador {string}', function (produto, categoria, embarcador) {
  const height = "0,370",
    width = "0,150",
    length = "0,050";
  return cadastre(produto, produto, produto, categoria, embarcador, "", height, width, length);
});

Given('que altero a classificação tipo de produto para {string} do produto {string}', function (classification, productCode) {
  return product.updateProductClassificationProductType(classification, productCode);
});