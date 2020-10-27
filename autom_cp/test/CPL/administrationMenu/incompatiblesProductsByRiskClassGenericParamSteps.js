"use strict";

var { Given, When, Then } = require("cucumber");

const { fillIncompatiblesProductsByRiskClassGenericParam,
    setClassification,
    setIncompatibleClassification,
    searchParam,
    assertParamIncompatiblesProductsByRiskClassIsFilled } = require("../pages/administration/incompatiblesProductsByRiskClassGenericParamPage");

const { tableViewParam, addParam, saveParam } = require('../pages/Administration/genericParamPage');

const { elementClick } = require('../scripts/utils');
const { validaAtributoXpath } = require('../scripts/messages');
const { acessoTela } = require('../scripts/navigate');

When('que preencho o parâmetro genérico Incompatibilidade de produtos perigosos por classe de risco com uma classificação {string} e classificação incompatível {string}', function (classification, incompatibleClassification) {
    return fillIncompatiblesProductsByRiskClassGenericParam(classification, incompatibleClassification);
});

When('altero para o modo de edição por tabela', function () {
    return tableViewParam();
});

When('preencho a classificação incompatível com o valor {string}', function (incompatibleClassification) {
    return setIncompatibleClassification(incompatibleClassification);
});

When('preencho a classificação com o valor {string}', function (classification) {
    return setClassification(classification);
});

When('altero a classificação para {string}', function (classification) {
    return setClassification(classification);
});

When('altero a classificação incompatível para {string}', function (incompatibleClassification) {
    return setIncompatibleClassification(incompatibleClassification);
});

When('pesquiso pela classificação {string} e a classificação incompatível {string}', function (classification, incompatibleClassification) {
    return searchParam(classification, incompatibleClassification);
});

When('pesquiso um registro existente', function () {
    // Write code here that turns the phrase above into concrete actions
    return 'pending';
});

When('altero o campo Classificação', function () {
    // Write code here that turns the phrase above into concrete actions
    return 'pending';
});

When('altero o campo Classificação incompatível', function () {
    // Write code here that turns the phrase above into concrete actions
    return 'pending';
});

Then('verifico que a informação foi alterada com sucesso', function () {
    // Write code here that turns the phrase above into concrete actions
    return 'pending';
});

When('pesquiso os registros existentes', function () {
    // Write code here that turns the phrase above into concrete actions
    return 'pending';
});

When('clico no botão Exportar', function () {
    // Write code here that turns the phrase above into concrete actions
    return 'pending';
});

Then('efetuo o download de um arquivo com a extensão .xls', function () {
    // Write code here that turns the phrase above into concrete actions
    return 'pending';
});

Given('que eu esteja na tela de edição do parâmetro genérico: Incompatibilidade de produtos perigosos por classe de risco', function () {
    // Write code here that turns the phrase above into concrete actions
    return 'pending';
});

When('seleciono o arquivo \(Ver Dependência)', function () {
    // Write code here that turns the phrase above into concrete actions
    return 'pending';
});

Then('o sistema exibe uma mensagem de sucesso Importação das entidades submetidas para tarefa de background.', function () {
    // Write code here that turns the phrase above into concrete actions
    return 'pending';
});

Then('verifico se a tarefa de background é concluida com sucesso', function () {
    return assertTaskCompleted();
});

Then('verifico se o parâmetro Incompatibilidade de produtos perigosos por classe de risco está preenchido com {string}, {string} e {string}', function (classificationA, classificationB, classificationC) {
    tableViewParam();
    assertParamIncompatiblesProductsByRiskClassIsFilled(classificationA, classificationB);
    return assertParamIncompatiblesProductsByRiskClassIsFilled(classificationA, classificationC);
});

function assertTaskCompleted() {
    acessoTela("[name='menu-userMenu.administration']", "[name='subMenu-userMenu.backgroundTasks']");
    var el = "//*[@name='searchResultTable']//*[01]//*[@name='status']";
    var endDate = element(by.css("[name='endDate']"));
    let self = this;
    // utils.elementMultiClickXpath("//*[text()='ID']", 2);
    elementClick("[name='submitButton']");
    return asyncLoop();
    function asyncLoop() {
        return endDate.getText().then(function (dateValue) {
            if (dateValue == '') {
                elementClick("[name='submitButton']");
                return asyncLoop();
            }
            else {
                validaAtributoXpath(el, "Concluído", self);
            }
        });
    }
}