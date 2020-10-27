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
var elementClick = utils.elementClick;

/********* ACESSO A TELA ************/
Given('acesso a tela de cadastro de caminhoes', function () {
    return navigate.acessoTelaCadastro("[name='menu-userMenu.cadastre']", "[name='subMenu-userMenu.trucks']");
});

Given('que estou na tela de pesquisa caminhoes', function () {
    return navigate.acessoTela("[name='menu-userMenu.cadastre']", "[name='subMenu-userMenu.trucks']");
});

/********* BOTÕES ************/

/********* VALIDAÇÃO MENSAGENS ************/
Then('e exibido a mensagem informando todos os campos cadastro de caminhões nao preenchidos', function () {
    let self = this;
    printscreen.stepPrintScreen(self);
    expect(element(by.css("[name='entity.validator.NullTruckStatus']")).getText()).to.eventually.equal("Situação do caminhão deve ser especificada");
    expect(element(by.css("[name='entity.validator.InvalidSizeTruckCarriers']")).getText()).to.eventually.equal("Caminhão deve ter ao menos uma transportadora associada.");
    expect(element(by.css("[name='entity.validator.NullTruckVehicle']")).getText()).to.eventually.equal("O caminhão deve estar associado a algum veículo.");
    expect(element(by.css("[name='entity.validator.EmptyDescription']")).getText()).to.eventually.equal("O campo descrição está vazio.");
    expect(element(by.css("[name='entity.validator.EmptySourceId']")).getText()).to.eventually.equal("O campo código está vazio.");
    return expect(element(by.css("[name='entity.validator.EmptyName']")).getText()).to.eventually.equal("O campo nome está vazio.");
});

Then('e exibido a mensagem que Situação do caminhão deve ser especificada.', function () {
    let self = this;
    return messages.validaMensagem("Situação do caminhão deve ser especificada", self);
});

Then('e exibido a mensagem que O caminhão deve estar associado a algum veículo.', function () {
    let self = this;
    return messages.validaMensagem("O caminhão deve estar associado a algum veículo.", self);
});

Then('e exibido a mensagem que Caminhão deve ter ao menos uma transportadora associada.', function () {
    let self = this;
    return messages.validaMensagem("Caminhão deve ter ao menos uma transportadora associada.", self);
});

Then('e exibido a mensagem O país da placa deve ser especificado.', function () {
    let self = this;
    return messages.validaMensagem("O país da placa deve ser especificado.", self);
});

Then('e exibido a mensagem Cidade inválida. A cidade deve ser preenchida.', function () {
    let self = this;
    return messages.validaMensagem("Cidade inválida. A cidade deve ser preenchida.", self);
});

/********* PREENCHIMENTO DE CAMPOS ************/
When('Preencho o Pais com {string}, Estado {string} e Cidade {string}', function (string, string2, string3) {
    return element(by.css("[name='plate.country'] [name='nlgTagInputRemoveTag']")).isPresent().then(function (isPresent) {
        if (isPresent) {
            elementClick("[name='plate.country'] [name='nlgTagInputRemoveTag']");
        }
        utils.fillTextxpath("//*[@name='plate.country']/*[@name='tagInputTextField']", string);
        utils.fillTextxpath("//*[@name='selection.state']/*[@name='tagInputTextField']", string2);
        utils.fillTextxpath("//*[@name='plate.city']/*[@name='tagInputTextField']", string3);
        return utils.elementClick("[name='plate.country']");
    });
});

When('Preencho o campo situação do caminhão com {string}', function (string) {
    return element(by.css("[name='truckStatus'] [name='nlgTagInputRemoveTag']")).isPresent().then(function (isPresent) {
        if (isPresent) {
            elementClick("[name='truckStatus'] [name='nlgTagInputRemoveTag']");
        }
        return utils.fillTextxpath(" //*[@name='truckStatus']/*[@name='tagInputTextField']", string);
    });
});

When('Associo ao veiculo {string}', function (string) {
    return element(by.css("[name='vehicle'] [name='nlgTagInputRemoveTag']")).isPresent().then(function (isPresent) {
        if (isPresent) {
            elementClick("[name='vehicle'] [name='nlgTagInputRemoveTag']");
        }
        return utils.fillTextxpath(" //*[@name='vehicle']/*[@name='tagInputTextField']", string);
    });
});

When('Seleciono a transportadora {string}', function (string) {
    return element(by.css("[name='moveAllToLeft']")).isPresent().then(function (isPresent) {
        if (isPresent) {
            elementClick("[name='moveAllToLeft']");
        }
        if (string !== ' ') {
            utils.fillTextxpath("//*[@name='filterLeft']", string);
            utils.elementClick("[name='carriers'] [name='ListLeft'] option[label='" + string + "']");
            return utils.elementClickXpath("//*[@name='moveToRight']");
        }
    });
});

When('altero o veiculo para {string} e transportadora para {string}', function (string, string2) {
    utils.elementClickXpath("//*[@name='vehicle']/*[@name='tagInputTextField']").sendKeys(protractor.Key.BACK_SPACE);
    // browser.actions().sendKeys(protractor.Key.BACK_SPACE);
    utils.fillTextxpath("//*[@name='vehicle']/*[@name='tagInputTextField']", string);
    utils.elementClickXpath("//*[@name='moveAllToLeft']");
    utils.fillTextxpath("//*[@name='filterLeft']", string2);
    utils.elementClick("[name='carriers'] [name='ListLeft'] option[label='" + string2 + "']");
    return utils.elementClickXpath("//*[@name='moveToRight']");
});

When('Apago Pais', function () {
    return utils.clearTextFieldXpath("//*[@name='plate.country']/*[@name='tagInputTextField']");
});

When('Apago a Cidade', function () {
    return utils.clearTextFieldXpath("//*[@name='plate.city']/*[@name='tagInputTextField']");
});

When('Apago a situação do caminhao', function () {
    return utils.clearTextFieldXpath("//*[@name='truckStatus']/*[@name='tagInputTextField']");
});

When('Apago o veiculo', function () {
    return utils.clearTextFieldXpath("//*[@name='vehicle']/*[@name='tagInputTextField']");
});

When('Apago a transportadora', function () {
    utils.elementClickXpath("//*[@name='filterRight']");
    return utils.elementClickXpath("//*[@name='moveAllToLeft']");
});

/********* CONFIGURAÇÃO E EXECUÇÃO DE FILTRO ************/
When('realizo o filtro caminhao com o codigo {string}', { timeout: 90 * 1000 }, function (string) {
    filter.configuraFiltro();
    utils.fillText("[name='tagInputTextField']", string);
    return utils.elementClick("[name='submitButton']");
});

/********* EXCLUSÃO DE REGISTRO ************/
Then('excluo o cadastro de Caminhões gerado no teste com o codigo {string}', { timeout: 90 * 1000 }, function (string) {
    element(by.xpath("//*[@name='body']")).sendKeys(protractor.Key.ESCAPE);
    navigate.acessoTela("[name='menu-userMenu.cadastre']", "[name='subMenu-userMenu.trucks']");
    filter.configuraFiltro();
    utils.fillText("[name='tagInputTextField']", string);
    utils.elementClick("[name='submitButton']");
    return filter.excluirPosFiltro(string);
});