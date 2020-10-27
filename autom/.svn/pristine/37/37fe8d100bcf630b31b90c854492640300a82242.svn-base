"use strict";

var { Given, When, Then } = require("cucumber");

var chai = require('chai');
var chaiAsPromised = require('chai-as-promised');
chai.use(chaiAsPromised);
var expect = chai.expect;

var isEnabled = require("../scripts/wait").isEnabled;
var utils = require('../scripts/utils');
var filter = require("../scripts/filter");
var navigate = require("../scripts/navigate");
var printscreen = require("../scripts/printScreen");
var messages = require("../scripts/messages");

const {cadastreUser, deleteUser} = require("../pages/monitoring/userPage");

When('preencho o campo E-mail {string}', function (string) {
    return utils.fillTextxpath("//*[@name='user.email']", string);
});

When('seleciono Perfil {string}', function (string) {
    return utils.fillTextxpath("//*[@name='userProfile']//*[@name='tagInputTextField']", string);
});

When('preencho o campo Senha {string}', function (string) {
    return utils.fillText("[name='passwordFields.password']", string);
});

When('preencho o campo Confirmar senha {string}', function (string) {
    return utils.fillTextxpath("//*[@name='passwordFields.confirmation']", string);
});

When('realizo o filtro de usuários pelo e-mail {string}', function (string) {
    element(by.xpath("//button[@name='submitButton']")).sendKeys(protractor.Key.ESCAPE);
    filter.configuraFiltroPorAtributo("Email");
    utils.fillTextxpath("//*[@ng-model='filterField.value']//*[@name='tagInputTextField']", string);
    return utils.elementClick("[name='submitButton']");
});

Then('que excluo o usuário do monitoramento {string}', function (email) {
    return deleteUser(email);
});

Given('que cadastro o usuário do monitoramento {string}', function (email) {
    const profile = "root";
    return cadastreUser(email, profile);
});

Given('que cadastro o usuário do planejamento {string}', function (email) {
    const profile = "Administrador";
    return cadastreUser(email, profile);
});