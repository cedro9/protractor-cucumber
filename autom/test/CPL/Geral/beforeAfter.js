"use strict";

var { Before, After } = require("cucumber");

var chai = require('chai');
var chaiAsPromised = require('chai-as-promised');
chai.use(chaiAsPromised);

var driver = browser.driver;
var login = require('../pages/LoginPage');
var printscreen = require("../scripts/printScreen");

function clearStorage() {
  window.sessionStorage.clear();
  window.localStorage.clear();
}

var usuario = process.env.USER_NEOLOG;
var senha = process.env.PASSWORD_NEOLOG;

/********* LOGIN ************/
Before(function () {
  return login.acessar(usuario, senha)
    .then(function () {
      return login.login1(usuario, senha);
    });
});

/********* PÓS EXECUÇÃO ************/
After(function (scenarioResult) {
  let self = this;
  printscreen.stepFailedPrintScreen(scenarioResult, self);
  driver.manage().deleteAllCookies();
  return driver.executeScript(clearStorage); //função para limpar cash do navegador.
});