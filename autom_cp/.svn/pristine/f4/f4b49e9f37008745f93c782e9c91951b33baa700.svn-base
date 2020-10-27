"use strict";

var { Given, When, Then } = require("cucumber");

var chai = require('chai');
var chaiAsPromised = require('chai-as-promised');
chai.use(chaiAsPromised);
var expect = chai.expect;

var utils = require('../scripts/utils');
var filter = require("../scripts/filter");
var navigate = require("../scripts/navigate");

/********* ACESSO A TELA ************/

Given('acesso a tela de cadastro de Agrupadores de Zona de Transporte', function () {
  return navigate.acessoTelaCadastro("[name='menu-userMenu.cadastre']", "[name='subMenu-userMenu.transportZoneGroupers']");
});

Given('que estou na tela de pesquisa Agrupadores de Zona de Transporte', function () {
  return navigate.acessoTela("[name='menu-userMenu.cadastre']", "[name='subMenu-userMenu.transportZoneGroupers']");
});

/********* BOTÕES ************/

/********* VALIDAÇÃO MENSAGENS ************/

/********* PREENCHIMENTO DE CAMPOS ************/

/********* CONFIGURAÇÃO E EXECUÇÃO DE FILTRO ************/
When('realizo o filtro do agrupador com o codigo com o codigo {string}', function (string) {
  filter.configuraFiltro();
  utils.fillText("[name='tagInputTextField']", string);
  return utils.elementClick("[name='submitButton']");
});

/********* EXCLUSÃO DE REGISTRO ************/
Then('excluo o cadastro Agrupador Zona de Transporte gerado no teste com o codigo {string}',{timeout: 90 * 1000}, function (string) {
  element(by.xpath("//*[@name='body']")).sendKeys(protractor.Key.ESCAPE);
  navigate.acessoTela("[name='menu-userMenu.cadastre']", "[name='subMenu-userMenu.transportZoneGroupers']");
  filter.configuraFiltro();
  utils.fillText("[name='tagInputTextField']", string);
  utils.elementClick("[name='submitButton']");
  return filter.excluirPosFiltro(string);
});