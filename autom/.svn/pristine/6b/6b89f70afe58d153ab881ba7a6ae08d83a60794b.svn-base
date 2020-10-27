"use strict";

const { Given, When, Then } = require("cucumber");

const { navigateToParamEditingPage,
    saveParam,
    addParam,
    importParam,
    confirmParam,
    removeDataParam,
    setPreValidator,
    tableViewParam } = require('../pages/Administration/genericParamPage');

const importSpreadsheets = require('../scripts/utils').importSpreadsheets;
const { validaMensagem } = require('../scripts/messages');

Given('que eu esteja na tela de edição do parâmetro genérico {string}', function (genericParamName) {
    return navigateToParamEditingPage(genericParamName);
});

When('clico no botão importar do modal de edição do parâmetro', function () {
    return importParam();
});

When('clico no botão salvar no modal de edição do parâmetro', function () {
    return saveParam();
});

When('altero para edição por tabela', function () {
    return tableViewParam();
});

When('adiciono uma nova linha', function () {
    return addParam();
});

When('importo a planilha {string} para preenchimento do parâmetro', function (spreadSheetName) {
    importParam();
    importSpreadsheets(spreadSheetName);
    validaMensagem("Importação das entidades submetidas para tarefa de background.");
    return confirmParam();
});

Then('excluo o registro do parâmetro', function () {
    removeDataParam();
    return saveParam();
});

Given('que adiciono o validador {string} como pré-validador de operação manual soft do contexto {string}', function (validatorName, contextCode) {
    const genericParamName = "Pré-validadores de operação manual (Soft)";
    return setPreValidator(genericParamName, validatorName, contextCode);
});

Given('que adiciono o validador {string} como pré-validador de otimização soft do contexto {string}', function (validatorName, contextCode) {
    const genericParamName = "Pré-validadores de otimização (Soft)";
    return setPreValidator(genericParamName, validatorName, contextCode);
});