"use strict";

var { Given, When, Then } = require("cucumber");

var chai = require('chai');
var chaiAsPromised = require('chai-as-promised');
chai.use(chaiAsPromised);
var expect = chai.expect;
var navigate = require("../scripts/navigate"),
    filter = require("../scripts/filter"),
    clearFilter = filter.clearFilter;

var functioningDataHolder = require("../scripts/functioningDataHolder"),
    scroll = require('../scripts/scroll'),
    utils = require('../scripts/utils'),
    filter = require("../scripts/filter"),
    messages = require("../scripts/messages"),
    printscreen = require("../scripts/printScreen"),
    clearNumberField = utils.clearNumberField,
    present = require("../scripts/wait").present,
    fillDuration = utils.fillDuration,
    assertBasicInfo = require("../scripts/fillBasicEntity").assertBasicEntityInfo,
    assertDurationContent = utils.assertDurationContent,
    elementClick = utils.elementClick,
    elementClickXpath = utils.elementClickXpath,
    fillText = utils.fillText,
    fillTextxpath = utils.fillTextxpath,
    fillNumber = utils.fillNumber,
    fillNumberXpath = utils.fillNumberXpath,
    fillCombo = utils.fillCombo,
    fillTimePicker = utils.fillTimePicker,
    comboSearchAndSelect = utils.comboSearchAndSelect,
    clearCombo = utils.clearCombo,
    assertTextFieldContent = utils.assertTextFieldContent,
    selectCheckbox = utils.selectCheckbox,
    unselectCheckbox = utils.unselectCheckbox,
    finalizePool = utils.finalizePool,
    importSpreadsheets = utils.importSpreadsheets,
    addTextTags = utils.addTextTags;

const { setTripTenderingandCancelTripTendering,
    setTripTendering,
    unsetTenderingResponseLimit,
    setTenderingResponseLimit,
    setPoolCarrier,
    assertTripNotFound,
    setPoolTendering } = require("../pages/programming/partnerCollaborationPage");

const { playBackgroundTask } = require("../pages/configuration/backgroundTaskConfigParamPage");

When('que efetuo a oferta e rejeite a viagem com o pedido {string}', function (orderCode) {
    return setTripTenderingandCancelTripTendering(orderCode);
});

When('que efetuo a oferta da viagem com o pedido {string}', function (orderCode) {
    return setTripTendering(orderCode);
});

When('que habilito e configuro a ação após expirar prazo para resposta de transportadoras para {string} e justificativa {string}', function (action, justification) {
    return setTenderingResponseLimit(action, justification);
});

When('que desabilito a resposta de transportadoras', function () {
    return unsetTenderingResponseLimit();
});

When('que executo a tarefa de background {string}', function (backgroundTask) {
    return playBackgroundTask(backgroundTask);
});

When('preencho a transportadora do pool com {string}', function (carrierCode) {
    return setPoolCarrier(carrierCode);
});

When('verifico que a viagem não é exibida após filtrar pelo pedido {string}', function (orderCode) {
    return assertTripNotFound(orderCode);
});

Given('preencho a justificativa de rejeite {string}', function (justificativa) {
    return addTextTags("[name='model.justification']", justificativa);
});

Given('preencho o campo placa {string}', function (placa) {
    return fillText("[name='plate']", placa);
});

Given('preencho o campo país do caminhão {string}', function (pais) {
    return addTextTags("[name='country']", pais);
});

Given('preencho o campo estado do caminhão {string}', function (estado) {
    return addTextTags("[name='state']", estado);
});

Given('preencho o campo cidade do caminhão {string}', function (cidade) {
    return addTextTags("[name='city']", cidade);
});

Given('preencho o campo situação do caminhão {string}', function (situacao) {
    return addTextTags("[name='truckStatus']", situacao);
});

Given('preencho o campo veículo do caminhão {string}', function (veiculo) {
    return addTextTags("[name='vehicle']", veiculo);
});

Then('preencho o campo caminhão {string}', function (placa) {
    return addTextTags("[name='truck']", placa);
});

Given('que o pool de oferta está ligado', function () {
    return setPoolTendering();
});

Given('que o pool de oferta está desligado', function () {
    var el = "[name='pcConfigParams.offerRejectedTripsToPool']"
    navigate.to("Configuração", "Partner collaboration");
    unselectCheckbox(el);
    elementClick("[name='buttonSave']");
    return elementClick("[name='buttonOk']");
});

Given('que adiciono a origem {string} no parametro Parâmetros da política de reagendamento baseada na data de visibilidade dos pedidos', function (origem) {
    navigate.to("Administração", "Parâmetros");
    var countBeforeInsertionPromise = filter.filterBySourceIdAndGetCount("OrderVisibilityReschedulingConfiguration");
    return countBeforeInsertionPromise.then(function (regCount) {
        if (regCount === 1) {
            elementClick("[name='editButton']");
            elementClick("[name='genericParamDefinitionEditData']");
            var countBeforeInsertionPromise = filter.filterParamAndGetCount("Origem", origem);
            return countBeforeInsertionPromise.then(function (regCount) {
                if (regCount === 0) {
                    elementClick("[name='addButton']");
                    addTextTags("[name='Origem']", origem);
                    // fillCombo("[name='Origem']", origem, origem)
                    fillNumber("[name='hour']", "14");
                    fillNumber("[name='minute']", "00");
                    fillNumber("[name='Quantidade de dias adicionais antes do limite de corte de pedidos']", "1");
                    fillNumber("[name='Quantidade de dias adicionais após o limite de corte de pedidos']", "2");
                    elementClick("[name='nlgGenericParamDataSaveButton']");
                    elementClick("[name='buttonOk']");
                    elementClick("[name='buttonCancel']");
                }
            })
        }
    })
});

Given('que habilito a oferta automatica para o pool', function () {
    return setPoolTendering();
});

Given('preencho o campo minutos da Duração com {string} dias, {string} h, {string} m, {string} s e {string} ms', function (dia, hora, minuto, segundo, milesegundo) {
    return fillDuration(dia, hora, minuto, segundo, milesegundo);
});

Given('preencho o tipo de negociação como {string}', function (tipoNegocaiacao) {
    return comboSearchAndSelect("[name='freightNegotiationJustificationCategories']", tipoNegocaiacao, tipoNegocaiacao);
});
Given('preencho a justificativa de negociação com {string}', function (justificativaNegociacao) {
    return comboSearchAndSelect("[name='freightNegotiationJustification']", justificativaNegociacao, justificativaNegociacao);
});

Given('preencho o valor de negociação com {string}', function (valorNegociacao) {
    return fillNumber("[name='freightNegotiationValue']", valorNegociacao);
});

Given('que desligo a obrigatoriedade da placa do caminhão no aceite de viagens', function () {
    navigate.to("Configuração", "Partner collaboration");
    let el = "[name='pcConfigParams.useTruckPlate']";
    unselectCheckbox(el);
    elementClick("[name='buttonSave']");
    return elementClick("[name='buttonOk']");
});

Given('que ligo a obrigatoriedade da placa do caminhão no aceite de viagens', function () {
    navigate.to("Configuração", "Partner collaboration");
    let el = "[name='pcConfigParams.useTruckPlate']";
    selectCheckbox(el);
    elementClick("[name='buttonSave']");
    return elementClick("[name='buttonOk']");
});

When('informo o motivo premium com {string}', function (justificativa) {
    return addTextTags("[name='justification']", justificativa);
});

When('que a justificativa de atribuição de viagem é obrigatória', function () {
    navigate.to("Configuração", "Partner collaboration");
    let el = "[name='pcConfigParams.justificationMandatory']";
    selectCheckbox(el);
    elementClick("[name='buttonSave']");
    return elementClick("[name='buttonOk']");
});

When('que a justificativa de atribuição de viagem não é obrigatória', function () {
    navigate.to("Configuração", "Partner collaboration");
    let el = "[name='pcConfigParams.justificationMandatory']";
    unselectCheckbox(el);
    elementClick("[name='buttonSave']");
    return elementClick("[name='buttonOk']");
});

When('aceito a viagem com a transportadora {string}', function (transportadora) {
    elementClick("[name='accept']");
    return addTextTags("[name='model.carrier']", transportadora);
});

When('aceito a viagem ofertada no pool', function () {
    elementClick("[name='accept']");
    setCarrierAndVehicle();
    elementClick("[name='buttonSave']");
    messages.validaMensagem("Operação realizada com sucesso.");
    return elementClick("[name='buttonOk']");
});

When('finalizo o pool de oferta', function () {
    return finalizePool()    
});;

When('executo a task {string}', function (taskName) {
    return element.all(by.css("table[name='backgroundTaskTable'] tbody tr"))
        .getText()
        .then(function (tasks) {
            tasks.filter((task, indexTask) => {
                if (process.env.CLIENT_NAME === 'grd') {
                    if (task.includes(taskName) && task.includes("regional.1400")) {
                        elementClick("[name='" + indexTask + "'] [name='playTask']");
                        return elementClick("[name='buttonOk']");
                    }
                } else {
                    if (task.includes(taskName)) {
                        elementClick("[name='" + indexTask + "'] [name='playTask']");
                        return elementClick("[name='buttonOk']");
                    }
                }
            });
        });
});

When('que altero para dias a unidade de tempo de execução da task {string}', function (taskName) {
    navigate.to("Configuração", "Tarefas de background");
    return element.all(by.css("[name='backgroundTaskTable'] [name='backgroundTaskName']")).getText().then(function (tasks) {
        const taskIndex = tasks.indexOf(taskName);
        addTextTags("[name='" + taskIndex + "'] [name='backgroundTaskUser']", "acquisition_DEFAULT");
        elementClick("[name='" + taskIndex + "'] [name='scheduleEdition']");
        elementClick("[name='temporalUnit'] [name='nlgTagInputRemoveTag']");
        addTextTags("[name='temporalUnit']", "Dias");
        elementClick("[name='modalFooter'] [name='buttonSave']");
        elementClick("[name='buttonSave']");
        return elementClick("[name='buttonOk']");
    });
});

Given('que altero a execução da task {string} para unidade de dias e usuário {string}', function (taskName, user) {
    navigate.to("Configuração", "Tarefas de background");
    return element.all(by.css("[name='backgroundTaskTable'] [name='backgroundTaskName']")).getText().then(function (tasks) {
        const taskIndex = tasks.indexOf(taskName);
        addTextTags("[name='" + taskIndex + "'] [name='backgroundTaskUser']", user);
        elementClick("[name='" + taskIndex + "'] [name='scheduleEdition']");
        elementClick("[name='temporalUnit'] [name='nlgTagInputRemoveTag']");
        addTextTags("[name='temporalUnit']", "Dias");
        elementClick("[name='modalFooter'] [name='buttonSave']");
        elementClick("[name='buttonSave']");
        return elementClick("[name='buttonOk']");
    });
});

When('dado que importo a planilha de frete', () => {

    if (process.env.CLIENT_NAME === 'automtest') {
        navigate.to("Administração", "Calculadores de frete - Carga");
        elementClick("[name='importButton']");
        importSpreadsheets("FreightRuleGroup");
        messages.validaMensagem("Importação das entidades submetidas para tarefa de background.");
        return elementClick("[name='buttonOk']");
    }

    if (process.env.CLIENT_NAME === 'mcb') {
        navigate.to("Administração", "Calculadores de frete - Carga");
        elementClick("[name='importButton']");
        importSpreadsheets("MCBFreightRuleGroup");
        messages.validaMensagem("Importação das entidades submetidas para tarefa de background.");
        return elementClick("[name='buttonOk']");
    }
});

function setCarrierAndVehicle() {
    if (process.env.CLIENT_NAME === 'automtest') {
        setVehicle();
       return setCarrier();
    }
    else {
        elementClick("[name='model.carrier'] [name='tagInputShowValues']");
        element(by.css("[name='model.carrier'] [name='tagInputTextField']"))
            .sendKeys(protractor.Key.ENTER);
        elementClick("[name='truck'] [name='tagInputShowValues']");
        element(by.css("[name='truck'] [name='tagInputTextField']"))
            .sendKeys(protractor.Key.ENTER);
        // fillNumber("[name='offeredFreightValue']", "1000");
    }

    function setCarrier() {
        return addTextTags("[name='model.carrier']", "TRANDEPPC02");
    }
    function setVehicle() {
        return addTextTags("[name='truck']", "DEP-1235");
    }
}

When('aceito a viagem ofertada no pool com a transportadora {string} e caminhão {string}', function (carrier, truck) {
    elementClick("[name='accept']");
    addTextTags("[name='model.carrier']", carrier);
    addTextTags("[name='truck']", truck);
    elementClick("[name='buttonSave']");
    messages.validaMensagem("Operação realizada com sucesso.");
    return elementClick("[name='buttonOk']");
});