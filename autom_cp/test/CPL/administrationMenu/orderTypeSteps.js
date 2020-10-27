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
const setOrderTypeCompatibility = require('../pages/orderTypesPage').setOrderTypeCompatibility;

/********* ACESSO A TELA ************/
Given('acesso a tela de Tipo de Pedido', function () {
  return navigate.acessoTelaCadastro("[name='menu-userMenu.administration']", "[name='subMenu-userMenu.orderTypes']");
});

Given('que estou na tela de pesquisa Tipos de Pedido', function () {
  return navigate.acessoTela("[name='menu-userMenu.administration']", "[name='subMenu-userMenu.orderTypes']");
});

/********* BOTÕES ************/

/********* VALIDAÇÃO MENSAGENS ************/

/********* PREENCHIMENTO DE CAMPOS ************/
When('seleciono a compatibilidade {string}', function (string) {
  return setOrderTypeCompatibility(string);
});

/********* CONFIGURAÇÃO E EXECUÇÃO DE FILTRO ************/
When('realizo o filtro Tipos de Pedido com o codigo {string}', function (string) {
  filter.configuraFiltro();
  utils.fillText("[name='tagInputTextField']", string);
  return utils.elementClick("[name='submitButton']");
});

/********* EXCLUSÃO DE REGISTRO ************/
Then('excluo o Tipo de Pedido gerado no teste com o codigo {string}', function (string) {
  element(by.xpath("//*[@name='body']")).sendKeys(protractor.Key.ESCAPE);
  navigate.acessoTela("[name='menu-userMenu.administration']", "[name='subMenu-userMenu.orderTypes']");
  filter.configuraFiltro();
  utils.fillText("[name='tagInputTextField']", string);
  utils.elementClick("[name='submitButton']");
  return filter.excluirPosFiltro(string);
});