"use strict";

var { Given, When, Then,} = require("cucumber");

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
Given('acesso a tela de Cadastro Palete Padrão', function () {
  return navigate.acessoTelaCadastro("[name='menu-userMenu.cadastre']", "[name='subMenu-userMenu.simplePallet']");
});

Given('que estou na tela de pesquisa Palete Padrão', function () {
  return navigate.acessoTela("[name='menu-userMenu.cadastre']", "[name='subMenu-userMenu.simplePallet']");
});

/********* BOTÕES ************/

/********* VALIDAÇÃO MENSAGENS ************/
Then('e exibido a mensagem informando todos os campos palete padrao nao preenchidos', function () {
  let self = this;
  printscreen.stepPrintScreen(self);
  expect(element(by.css("[name='entity.validator.NullProduct']")).getText()).to.eventually.equal("O produto não pode ser nulo.");
  expect(element(by.css("[name='entity.validator.NullShipmentUnitWrapper']")).getText()).to.eventually.equal("O invólucro não pode ser nulo.");
  expect(element(by.css("[name='entity.validator.EmptyDescription']")).getText()).to.eventually.equal("O campo descrição está vazio.");
  expect(element(by.css("[name='entity.validator.EmptySourceId']")).getText()).to.eventually.equal("O campo código está vazio.");
  return expect(element(by.css("[name='entity.validator.EmptyName']")).getText()).to.eventually.equal("O campo nome está vazio.");
});

/********* PREENCHIMENTO DE CAMPOS ************/
When('seleciono o Involucro composto {string}', function (string) {
  utils.elementClickXpath("//*[@name='category']/*[@name='tagInputTextField']").sendKeys(protractor.Key.BACK_SPACE);
  // browser.actions().sendKeys(protractor.Key.BACK_SPACE);
  return utils.fillTextxpath("//*[@name='category']/*[@name='tagInputTextField']", string);
 
});

When('altero o Involucro composto {string}', function (string) {
  utils.elementClickXpath("//*[@name='category']/*[@name='tagInputTextField']").sendKeys(protractor.Key.BACK_SPACE);
  // browser.actions().sendKeys(protractor.Key.BACK_SPACE);
  return utils.fillTextxpath("//*[@name='category']/*[@name='tagInputTextField']", string);
 
});

When('seleciono o Produto {string}', function (string) {
  utils.elementClickXpath("//*[@name='product']/*[@name='tagInputTextField']").sendKeys(protractor.Key.BACK_SPACE);
  // browser.actions().sendKeys(protractor.Key.BACK_SPACE);
  return utils.fillTextxpath("//*[@name='product']/*[@name='tagInputTextField']", string);
});

When('eu limpo o campo Involucro', function () {
 return utils.elementClickXpath("//*[@name='category']/*[@name='tagInputTextField']").sendKeys(protractor.Key.BACK_SPACE);
  // return browser.actions().sendKeys(protractor.Key.BACK_SPACE);
});

When('eu limpo o campo Protudo', function () {
  return utils.elementClickXpath("//*[@name='product']/*[@name='tagInputTextField']").sendKeys(protractor.Key.BACK_SPACE);
  // return browser.actions().sendKeys(protractor.Key.BACK_SPACE);
});

/********* CONFIGURAÇÃO E EXECUÇÃO DE FILTRO ************/
When('eu filtrar o palete do cenario anterior pelo codigo {string}', function (string) {
  filter.configuraFiltro();
  utils.fillText("[name='tagInputTextField']", string);
  return utils.elementClick("[name='submitButton']");
});

Then('excluo o cadastro de Palete Padrão gerado no teste com o codigo {string}', function (string) {
  element(by.xpath("//*[@name='body']")).sendKeys(protractor.Key.ESCAPE);
  navigate.acessoTela("[name='menu-userMenu.cadastre']", "[name='subMenu-userMenu.simplePallet']");
  filter.configuraFiltro();
  utils.fillText("[name='tagInputTextField']", string);
  utils.elementClick("[name='submitButton']");
  return filter.excluirPosFiltro(string);
});