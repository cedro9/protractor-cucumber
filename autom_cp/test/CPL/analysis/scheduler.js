"use strict";

var { Given, When, Then, setDefaultTimeout } = require("cucumber");

var chai = require('chai');
var chaiAsPromised = require('chai-as-promised');
chai.use(chaiAsPromised);
var expect = chai.expect,
    assert = chai.assert;
var navigate = require("../scripts/navigate"),
    filter = require("../scripts/filter"),
    clearFilter = filter.clearFilter;

var functioningDataHolder = require("../scripts/functioningDataHolder"),
    expect = chai.expect,
    scroll = require('../scripts/scroll'),
    utils = require('../scripts/utils'),
    filter = require("../scripts/filter"),
    messages = require("../scripts/messages"),
    printscreen = require("../scripts/printScreen"),
    present = require("../scripts/wait").present,
    messages = require("../scripts/messages"),
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
    selectOrderOrTrip = utils.selectOrderOrTrip,
    tripBasket = "[selection='selection.tripBasket']",
    userBasket = "[selection='selection.deliveryUnits']",
    generalBasket = "[selection='selection.availableDeliveryUnits']",
    tripHeader = " [data-node-type='Trip']",
    loadHeader = " [data-node-type='Load']",
    stopHeader = " [data-node-type='Stop']",
    orderHeader = " [data-node-type='Order']",
    orderItemHeader = " [data-node-type='DeliveryUnit']",
    scheduleHeader = "[data-node-type='Schedule']";

    const analisys = require ("../pages/analisysPage");
    const carrier = require ("../pages/cadastre/carrierPage");

When('seleciono o destino {string}', function (destino) {
    if(process.env.CLIENT_NAME==='grd'){
        destino = process.env.DESTINO;
    }
    return analisys.setDestinationScheduler(destino);
});

When('seleciono a origem {string}', function (origins) {
    return analisys.setOriginsSheduler(origins);
});

When('agendo o pedido para {string} até as {string}:{string}', function (dateScheduled, hour, minute) {
    fillTextxpath("//*[@name='date']/*/*[@name='dateInput']/*[@name='datepicker']/*[@name='dateInput']", dateScheduled);
    fillNumberXpath("//*[@name='date']/*/*[@name='timeInput']/*/*[@name='nlgTimepicker']/*[@name='hour']/*[@name='nlgNumberInput']", hour);
    return fillNumberXpath("//*[@name='date']/*/*[@name='timeInput']/*/*[@name='nlgTimepicker']/*[@name='minute']/*[@name='nlgNumberInput']", minute);
});

When('clico no checkbox {string}', function (string) {
    return elementClickXpath(" //*[01]/*[text()='" + string + "']/../..//*[@name='nlgScheduleLoading']");
});

When('clico no checkbox Descarregamento', function () {
    return elementClickXpath("//div[1]/input[@name='scheduleRadio']");
});

When('clico no checkbox Carregamento', function () {
    return elementClickXpath("//div[2]/input[@name='scheduleRadio']");
});

Then('preencho a Data de Expedição {string} {string} horas e {string} minutos', function (dateScheduled, hour, minute) {
    fillTextxpath("//*[@name='expeditionDate']/*/*[@name='dateInput']/*[@name='datepicker']/*[@name='dateInput']", dateScheduled);
    fillNumberXpath("//*[@name='expeditionDate']/*/*[@name='timeInput']/*/*[@name='nlgTimepicker']/*[@name='hour']/*[@name='nlgNumberInput']", hour);
    return fillNumberXpath("//*[@name='expeditionDate']/*/*[@name='timeInput']/*/*[@name='nlgTimepicker']/*[@name='minute']/*[@name='nlgNumberInput']", minute);
});

Then('preencho Data de Agendamento {string} {string} horas e {string} minutos', function (dateScheduled, hour, minute) {
    fillTextxpath("//*[@name='date']/*/*[@name='dateInput']/*[@name='datepicker']/*[@name='dateInput']", dateScheduled);
    fillNumberXpath("//*[@name='date']/*/*[@name='timeInput']/*/*[@name='nlgTimepicker']/*[@name='hour']/*[@name='nlgNumberInput']", hour);
    return fillNumberXpath("//*[@name='date']/*/*[@name='timeInput']/*/*[@name='nlgTimepicker']/*[@name='minute']/*[@name='nlgNumberInput']", minute);
});

Then('preencho a Data de Entrega {string} {string} horas e {string} minutos', function (dateScheduled, hour, minute) {
    fillTextxpath("//*[@name='deliveryDate']/*/*[@name='dateInput']/*[@name='datepicker']/*[@name='dateInput']", dateScheduled);
    fillNumberXpath("//*[@name='deliveryDate']/*/*[@name='timeInput']/*/*[@name='nlgTimepicker']/*[@name='hour']/*[@name='nlgNumberInput']", hour);
    return fillNumberXpath("//*[@name='deliveryDate']/*/*[@name='timeInput']/*/*[@name='nlgTimepicker']/*[@name='minute']/*[@name='nlgNumberInput']", minute);
});

Then('é exibido os campos {string} {string} e {string}', function (string1, string2, string3) {
    let self = this;
    var el1 = "//*[@class='modal-body']//*[text()='" + string1 + "']";
    var el2 = "//*[@class='modal-body']//*[text()='" + string2 + "']";
    var el3 = "//*[@class='modal-body']//*[text()='" + string3 + "']";
    messages.validaAtributoXpath(el1, string1, self);
    messages.validaAtributoXpath(el2, string2, self);
    return messages.validaAtributoXpath(el3, string3, self);
});

When('preencho a senha da agenda {string}', function (password) {
    return fillText("[name='password']", password);
});

When('seleciono todas as Uts', function () {
    return elementClick("[name='selectAll']");
});

Then('o botão {string} deve ser exibido', function (string) {
    let self = this;
    var el = "//*[@name='suggestSchedule']";
    return messages.validaAtributoXpath(el, string, self);
});

Then('o sistema deve exibir um filtro para selecionar a Origem', function () {
    let self = this;
    var el = "//*[text()='Origem']";
    var string = "Origem"
    return messages.validaAtributoXpath(el, string, self);
});

Then('o sistema deve exibir um filtro para selecionar o Destino', function () {
    let self = this;
    var el = "//*[@class='form-group col-xs-4 ng-scope']//*[text()='Destino']";
    var string = "Destino"
    return messages.validaAtributoXpath(el, string, self);
});

Then('o sistema deve exibir o filtro Destino no agendamento em massa', function () {
    let self = this;
    var el = "//*[@class='form-group col-xs-6 ng-scope']//*[text()='Destino']";
    var string = "Destino"
    return messages.validaAtributoXpath(el, string, self);
});

Then('verifico se o pedido está agendado para {string}', function (schedule) {
    let self = this;
    elementClick("[name='viewType']");
    return element(by.css("[name='programming.viewTypes.scheduleView']")).isPresent().then(function (isPresent) {
        if (isPresent === true) {
            elementClick("[name='programming.viewTypes.scheduleView']");
            let el = "[name='presentationnode.nodeproperty.date']";
            return messages.validaAtributo(el, schedule, self);
        }
        else {
            elementClick("[name='programming.viewTypes.orderItemView']");
            elementClick("[selection='selection.deliveryUnits'] [name='nlgAnalysisTreeChildren'] [name='nlgAnalysisTreeNode'] [name='nlgAnalysisTreeExpand']");
            let el = "[name='presentationnode.nodeproperty.schedule']"
            return messages.validaAtributo(el, schedule, self);
        }
    });
});

Then('deve exibir no filtro de destino de agendamento em massa o destino {string}', function (destino) {
    let self = this;
    var el = "//*[@name='tagAnchor']";
    return messages.validaAtributoXpath(el, destino, self);
});

When('seleciono a agenda {string} na cesta do usuário', function (schedule) {
    var el = "[data-node-type='Schedule']";
    return selectOrderOrTrip(el);
});

Then('deve exibir a coluna {string} e {string}', function (string, string2) {
    let self = this;
    var el1 = "//*[@class='scheduleDateHeader ng-binding ng-scope'][text()='" + string + "']";
    var el2 = "//*[@class='scheduleDateHeader ng-binding ng-scope'][text()='" + string2 + "']";
    messages.validaAtributoXpath(el1, string, self);
    return messages.validaAtributoXpath(el2, string2, self);
});

Then('deve exibir dois destinos dos pedidos - o {string} e o {string}', function (locality1, locality2) {
    messages.validaAtributo("[name='locality-0']", locality1);
    return messages.validaAtributo("[name='locality-1']", locality2);
});

Then('deve ser exibido a localidade de destino {string}', function (locality) {
    return messages.validaAtributo("[name='locality-0']", locality);
});

Then('o sistema deve exibir o filtro Origem no agendamento em massa', function () {
    let self = this;
    var el = "//*[@class='form-group col-xs-6 ng-scope']//*[text()='Origem']";
    var string = "Origem"
    return messages.validaAtributoXpath(el, string, self);
});

Then('deve exibir no filtro de origem de agendamento em massa a origem {string}', function (origin) {
    let self = this;
    var el = "//*[@name='tagAnchor']";
    return messages.validaAtributoXpath(el, origin, self);
});

Then('deve exibir duas origens dos pedidos - o {string} e o {string}', function (string, string2) {
    let self = this;
    var el1 = "//*[@name='locality-0']";
    var el2 = "//*[@name='locality-1']";
    messages.validaAtributoXpath(el1, string, self);
    return messages.validaAtributoXpath(el2, string2, self);
});

Then('deve ser exibido a localidade de origem {string}', function (string) {
    let self = this;
    var el = "//*[@name='locality-0']";
    return messages.validaAtributoXpath(el, string, self);
});

When('preencho na primeira linha os campos Data de Agendamento {string} e Data de Expedição {string}', function (dateSchedule,dateExpedition) {
    analisys.setScheduleDate(dateSchedule);
    return analisys.setExpeditionDate(dateExpedition)
});

// When('preencho na primeira linha os campos Data de Agendamento {string} e Data de Expedição {string} com hora {string} e minuto {string}', function (dateSchedule,dateExpedition) {
//     analisys.setScheduleDate(dateSchedule);
//     clickBatchEditDate();
//     analisys.setExpeditionDate(dateExpedition);
//     return analisys.clickBatchEditExpeditionDate();
// });

When('preencho na primeira linha os campos Data de Agendamento {string} com hora {string} e minuto {string} e Data de entrega {string} com hora {string} e minuto {string}', function (string, string2, string3, string4, string5, string6) {
    fillTextxpath("//*[@name='batchScheduledDate']/*/*[@name='timeInput']/*/*[@name='nlgTimepicker']/*[@name='hour']/*[@name='nlgNumberInput']", string2);
    fillTextxpath("//*[@name='batchScheduledDate']/*/*[@name='timeInput']/*/*[@name='nlgTimepicker']/*[@name='minute']/*[@name='nlgNumberInput']", string3);
    utils.fillNumberXpath("//*[@name='batchScheduledDate']/*/*[@name='dateInput']/*[@name='datepicker']/*[@name='dateInput']", string);

    fillNumberXpath("//*[@name='batchScheduledDeliveryDate']/*/*[@name='timeInput']/*/*[@name='nlgTimepicker']/*[@name='hour']/*[@name='nlgNumberInput']", string5);
    fillNumberXpath("//*[@name='batchScheduledDeliveryDate']/*/*[@name='timeInput']/*/*[@name='nlgTimepicker']/*[@name='minute']/*[@name='nlgNumberInput']", string6);
    return utils.fillNumberXpath("//*[@name='batchScheduledDeliveryDate']/*/*[@name='dateInput']/*[@name='datepicker']/*[@name='dateInput']", string4);
});

When('clico no botão de preenchimento automatico de Data de Agendamento', function () {
    return analisys.clickBatchEditDate();
});

When('clico no botão de preenchimento automatico de Data de Expedição', function () {
    return analisys.clickBatchEditExpeditionDate();
});

When('clico em selecionar todas as agendas', function () {
    return analisys.clickSelectAll();
});

When('clico no botão de preenchimento automatico de Data de Entrega', function () {
    return elementClickXpath("//*[@name='batchEditDeliveryDate']");
});

Then('o sistema deve preencher todos os campos da coluna Data de Agendamento e Data de Expedição automaticamente', function () {
});

Then('verifico se a data e hora da agenda é {string}', function (expectedSchedule) {
    return messages.validaAtributo("[name='presentationnode.nodeproperty.date']", expectedSchedule);
});

Then('verifico se a data da expedição é {string}', function (expectedExpedition) {
    return messages.assertAttribute("[name='scheduledExpeditionDate'] [name='datepicker'] [name='dateInput']", expectedExpedition);
});

Then('o sistema deve exibir a violação {string}{string}{string}', function (string, string2, string3) {
    let self = this;
    var expectedMessage = string + string2 + string3;
    var text = string2
    return messages.validaParteDaMensagemAgendamento(expectedMessage, text, self);

});

Then('o sistema deve exibir a violação de agenda {string}', function (expectedMessage) {
    return messages.validaParteDaMensagem(expectedMessage);

});

Then('clico no botão Cancelar na modal Sugestão de Agenda', function () {
    return elementClickXpath("//*[@name='scheduleSuggestionModal']/*[@name='modalFooter']/*[@name='buttonCancel']");
});

Then('é exibido a mensagem Data de entrega deve ser maior que a data de expedição', function () {
    let self = this;
    var expectedMessage = "Data de entrega deve ser maior que a data de expedição";
    return messages.validaParteDaMensagem(expectedMessage, self);
});

Then('cancelo o agendamento', function () {
    return element(by.css(scheduleHeader)).isPresent().then(function (isPresent) {
        if (isPresent === true) {
            selectOrderOrTrip(scheduleHeader);
        }
        else {
            selectOrderOrTrip(userBasket);
        }
        elementClick("[name='scheduleDropdown']");
        elementClick("[name='deleteScheduleDus']");
        element(by.css("[name='routingSelectionDialog']")).isPresent().then(function (isPresent) {
            if (isPresent === true) {
                elementClick("[name='routingSelectionDialog'] [name='buttonOk']");
            }
        });
        return elementClick("[name='buttonSave']");
    });
});