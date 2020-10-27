"use strict";

var { Given, When, Then} = require("cucumber");

var chai = require('chai');
var chaiAsPromised = require('chai-as-promised');
chai.use(chaiAsPromised);
var expect = chai.expect;

var utils = require('../scripts/utils');
var filter = require("../scripts/filter");
var navigate = require("../scripts/navigate");

var printscreen = require("../scripts/printScreen");
const { cadastre } = require("../pages/cadastre/shipperPage");

var driver = browser.driver;

/********* ACESSO A TELA ************/
Given('acesso a tela de cadastro de Embarcadores', function () {
  return navigate.acessoTelaCadastro("[name='menu-userMenu.cadastre']", "[name='subMenu-userMenu.shippers']");
});

Given('que estou na tela de pesquisa de Embarcadores', function () {
  return navigate.acessoTela("[name='menu-userMenu.cadastre']", "[name='subMenu-userMenu.shippers']");
});

/********* BOTÕES ************/

/********* VALIDAÇÃO MENSAGENS ************/

/********* PREENCHIMENTO DE CAMPOS ************/
When('seleciono o Grupo Logistico {string}', function (string) {
 utils.elementClickXpath("//*[@name='tagInputTextField']");
  return utils.fillTextxpath("//*[@name='tagInputTextField']", string);
});

When('seleciono o Embarcador incompatível {string}', function (string) {
  utils.fillTextxpath("//*[@name='filterLeft']", string);
  utils.elementClick("[name='ListLeft'] option[label='" + string + "']");
  return utils.elementClickXpath("//*[@name='moveToRight']");
});

When('altero o Grupo Logistico para {string}', function (string) {
  utils.elementClickXpath("//*[@name='tagInputTextField']").sendKeys(protractor.Key.BACK_SPACE);
  // browser.actions().sendKeys(protractor.Key.BACK_SPACE);
  return utils.fillTextxpath("//*[@name='tagInputTextField']", string);
});

When('removo o Embarcador incompatível', function () {
  return utils.elementClick("[name='moveAllToLeft']");
});

/********* CONFIGURAÇÃO E EXECUÇÃO DE FILTRO ************/
When('realizo o filtro do embarcador com o codigo com o codigo {string}', function (string) {
  filter.configuraFiltro();
  utils.fillText("[name='tagInputTextField']", string);
  return utils.elementClick("[name='submitButton']");
});

Given('que cadastro o embarcador {string}', function (embarcador) {
  return cadastre(embarcador, embarcador, embarcador);
});