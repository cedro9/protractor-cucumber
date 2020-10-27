"use strict";

var { Given, When, Then } = require("cucumber");

var chai = require('chai');
var chaiAsPromised = require('chai-as-promised');
chai.use(chaiAsPromised);
var expect = chai.expect;

var functioningDataHolder = require("../scripts/functioningDataHolder");
var utils = require('../scripts/utils'),
    fillText = utils.fillText,
    elementClick = utils.elementClick,
    fillNumber = utils.fillNumber,
    addTextTags = utils.addTextTags;
var filter = require("../scripts/filter");
var navigate = require("../scripts/navigate");
var printscreen = require("../scripts/printScreen");
var messages = require("../scripts/messages");

/********* ACESSO A TELA ************/
Given('acesso a tela de Cadastro Doca', function () {
    return navigate.acessoTelaCadastro("[name='menu-userMenu.cadastre']", "[href='#/access/entity/docks']");
});

Given('que estou na tela de pesquisa de Doca', function () {
    return navigate.acessoTela("[name='menu-userMenu.cadastre']", "[href='#/access/entity/docks']");
});

/********* BOTÕES ************/
When('clico na aba Restrições logísticas', function () {
    return utils.elementClick("[name='logisticRestrictions']");
});

When('clico na aba Restrições de engenharia', function () {
    return utils.elementClick("[name='engineeringRestrictions']");
});

When('Desativo as compatibilidades', function () {
    utils.elementClick("[name='entity.useBlockedShippers']");
    utils.elementClick("[name='logisticRestrictions']");
    utils.elementClick("[name='entity.useBlockedVehicles']");
    utils.elementClick("[name='entity.useBlockedCarriers']");
    utils.elementClick("[name='entity.useBlockedServiceTypes']");
    utils.elementClick("[name='engineeringRestrictions']");
    utils.elementClick("[name='entity.useIncompCategories']");
    utils.elementClick("[name='functioning']");
    return utils.elementClick("[name='workingHoursAllowed'] [name='workingHoursAllowed']");
});

/********* VALIDAÇÃO MENSAGENS ************/
Then('e exibido a mensagem informando todos os campos do cadastro de Doca padrao nao preenchidos', function () {
    let self = this;
    printscreen.stepPrintScreen(self);
    expect(element(by.css("[name='form.edition.locality.function.msg.invalid.weekly.hours.empty.hours']")).getText()).to.eventually.equal("Sem horário de funcionamento definido.");
    expect(element(by.css("[name='entity.validator.NullDockType']")).getText()).to.eventually.equal("O serviço suportado deve ser especificado.");
    expect(element(by.css("[name='entity.validator.NullLocality']")).getText()).to.eventually.equal("A localidade deve ser especificada.");
    expect(element(by.css("[name='entity.validator.EmptyDescription']")).getText()).to.eventually.equal("O campo descrição está vazio.");
    expect(element(by.css("[name='entity.validator.EmptySourceId']")).getText()).to.eventually.equal("O campo código está vazio.");
    return expect(element(by.css("[name='entity.validator.EmptyName']")).getText()).to.eventually.equal("O campo nome está vazio.");
});

Then('e exibido a mensagem O serviço suportado deve ser especificado.', function () {
    let self = this;
    return messages.validaMensagem("O serviço suportado deve ser especificado.", self);
});

Then('e exibido a mensagem A localidade deve ser especificada.', function () {
    let self = this;
    return messages.validaMensagem("A localidade deve ser especificada.", self);
});

Then('e exibido a mensagem Os dados de funcionamento para horários permitidos informados não podem ser vazios.', function () {
    let self = this;
    return messages.validaMensagem("Os dados de funcionamento para horários permitidos informados não podem ser vazios.", self);
});

/********* PREENCHIMENTO DE CAMPOS ************/
When('preencho o Serviços suportados {string}, Localidade {string} e Prioridade {string}', function (servico, origem, prioridade) {
    addTextTags("[name='dockType']", servico);
    addTextTags("[name='locality']", origem)
    return fillNumber("[name='priority']", prioridade);
});

When('seleciono a Permissão de embarcadores {string}', function (string) {
    utils.elementClick("[name='entity.useBlockedShippers']");
    utils.fillTextxpath("//*[@name='blockedShippersList']/*/*/*/*[@name='filterLeft']", string);
    utils.elementClick("[name='blockedShippersList'] [name='ListLeft'] option[label='" + string + "']");
    return utils.elementClickXpath("//*[@name='blockedShippersList']/*/*/*/*[@name='moveToRight']");
});

When('Bloqueio o veiculo {string}', function (string) {
    utils.elementClick("[name='entity.useBlockedVehicles']");
    utils.fillTextxpath("//*[@name='blockedVehicles']/*/*/*/*[@name='filterLeft']", string);
    utils.elementClick("[name='blockedVehicles'] [name='ListLeft'] option[label='" + string + "']");
    return utils.elementClickXpath("//*[@name='blockedVehicles']/*/*/*/*[@name='moveToRight']");
});

When('Bloqueio a Transportadora {string}', function (string) {
    utils.elementClick("[name='entity.useBlockedCarriers']");
    utils.fillTextxpath("//*[@name='blockedCarriers']/*/*/*/*[@name='filterLeft']", string);
    utils.elementClick("[name='blockedCarriers'] [name='ListLeft'] option[label='" + string + "']");
    return utils.elementClickXpath("//*[@name='blockedCarriers']/*/*/*/*[@name='moveToRight']");
});

When('Bloqueio o tipo de serviço {string}', function (string) {
    utils.elementClick("[name='entity.useBlockedServiceTypes']");
    utils.fillTextxpath("//*[@name='blockedServiceTypes']/*/*/*/*[@name='filterLeft']", string);
    utils.elementClick("[name='blockedServiceTypes'] [name='ListLeft'] option[label='" + string + "']");
    return utils.elementClickXpath("//*[@name='blockedServiceTypes']/*/*/*/*[@name='moveToRight']");
});

When('seleciono a Categoria de Produto incompativel {string}', function (string) {
    utils.elementClick("[name='entity.useIncompCategories']");
    utils.fillTextxpath("//*[@name='incompCategories']/*/*/*/*[@name='filterRight']", string);
    utils.elementClick("[name='incompCategories'] [name='ListRight'] option[label='" + string + "']");
    return utils.elementClickXpath("//*[@name='incompCategories']/*/*/*/*[@name='moveToLeft']");
});

When('seleciono a Categoria de invólucro compativel {string}', function (string) {
    utils.fillTextxpath("//*[@name='allowedWrappers']/*/*/*/*[@name='filterLeft']", string);
    utils.elementClick("[name='allowedWrappers'] [name='ListLeft'] option[label='" + string + "']");
    return utils.elementClickXpath("//*[@name='allowedWrappers']/*/*/*/*[@name='moveToRight']");
});

When('apago o horario de funcionamento', function () {
    functioningDataHolder.cleanWorkingHour();
    return utils.elementClick("[name='functioning']");
});

When('apago o dia da semana', function () {
    utils.clearTextFieldXpath("//*[@name='0']/*[@name='dayOnWeek']/*/*/*[@name='tagInputTextField']");
    return utils.clearTextFieldXpath("//*[@name='1']/*[@name='dayOnWeek']/*/*/*[@name='tagInputTextField']");
});

When('apago o serviço suportado', function () {
    return elementClick("[name='dockType'] [name='nlgTagInputRemoveTag']");
});

When('apago a localidade', function () {
    return elementClick("[name='locality'] [name='nlgTagInputRemoveTag']");
});

/********* CONFIGURAÇÃO E EXECUÇÃO DE FILTRO ************/
When('realizo o filtro Docas com o codigo {string}', function (string) {
    filter.configuraFiltro();
    utils.fillText("[name='tagInputTextField']", string);
    return utils.elementClick("[name='submitButton']");
});

/********* EXCLUSÃO DE REGISTRO ************/
Then('excluo o cadastro de Docas gerado no teste com o codigo {string}', function (string) {
    element(by.xpath("//*[@name='body']")).sendKeys(protractor.Key.ESCAPE);
    navigate.acessoTela("[name='menu-userMenu.cadastre']", "[href='#/access/entity/docks']");
    filter.configuraFiltro();
    utils.fillText("[name='tagInputTextField']", string);
    utils.elementClick("[name='submitButton']");
    return filter.excluirPosFiltro(string);
});