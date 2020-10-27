"use strict";

const menu = "Programação",
    subMenu = "Análise",
    submitButton = "[name='submitButton']",
    okButton = "[name='buttonOk']",
    monitorablesButton = "[name='monitoring.search.actions']",
    startTrackingMenu = "[name='monitoring.search.actions.start']",
    cancelTrackingMenu = "[name='monitoring.search.actions.cancel']",
    tripHeader = " [data-node-type='Trip']",
    analysisTreeCheckBox = " [name='nlgAnalysisTreeCheckBox']",
    startExecutionCheckBox = "[name='start']",
    trackingMonitorableModal = "[name='trackMonitorableModal']",
    cancelButton = "[name='cancel']",
    saveButton = "[name='buttonSave']",
    tagInputTextField = "[name='tagInputTextField']",
    monitorableCodeFilter = "Código externo";

var chai = require('chai');
var chaiAsPromised = require('chai-as-promised');
chai.use(chaiAsPromised);
var expect = chai.expect,
    assert = chai.assert;

const utils = require('../../scripts/utils'),
    elementClick = utils.elementClick,
    addTextTags = utils.addTextTags,
    navigate = require("../../scripts/navigate"),
    filter = require("../../scripts/filter"),
    transfer = require('../../scripts/transferPanel'),
    fillCombo = utils.fillCombo,
    fillText = utils.fillText,
    present = require("../../scripts/wait").present,
    dblClick = require("../../scripts/events").dblClick,
    fillBasicInfo = require("../../scripts/fillBasicEntity").fillBasicEntityInfo,
    scroll = require("../../scripts/scroll"),
    taginput = require("../../scripts/taginput"),
    moveLeftToRigth = transfer.moveLeftToRigth,
    moveRigthToLeft = transfer.moveRigthToLeft,
    moveToPreValidator = transfer.moveToPreValidator,
    validaMensagem = require("../../scripts/messages").validaMensagem,
    confirmSelectedContext = utils.confirmSelectedContext,
    selectOrderOrTrip = utils.selectOrderOrTrip;

module.exports = {
    searchMonitorable,
    trackingMonitorable,
    cancelTrackingMonitorable
};

function searchMonitorable(monitorableCode) {
    navigate.acessoTela("[name='menu-userMenu.monitoring']", "[name='subMenu-userMenu.monitorable']");
    filter.configuraFiltro();
    addTextTags("[name='sourceId-br.com.neolog.webfilter.FilterOperation.EQUAL']", monitorableCode);
    return elementClick(submitButton);
};

function selectHeader(header) {
    return elementClick(header + analysisTreeCheckBox);
};

function selectMonitorable() {
    return selectHeader(tripHeader);
};

function trackingMonitorable() {
    selectMonitorable();
    elementClick(monitorablesButton);
    elementClick(startTrackingMenu);
    setTrackingMonitorableModal();
    return elementClick(okButton);
};

function cancelTrackingMonitorable() {
    selectMonitorable();
    elementClick(monitorablesButton);
    elementClick(cancelTrackingMenu);
    elementClick(okButton);
    return elementClick(okButton);
};

function setTrackingMonitorableModal() {
    const driver = "MOTDEPMON",
        trackingDevice = "5511987654321",
        temperatureRangeType = "Default";
    return setTrackingMonitorable(driver, trackingDevice, temperatureRangeType);
};

function setTrackingMonitorable(driver, trackingDevice, temperatureRangeType) {
    element(by.css(trackingMonitorableModal)).isPresent().then(function (isPresent) {
        if (isPresent === true) {
            addTextTags("[name='monitorable.driver']", driver);
        }
    });
    element(by.css(trackingMonitorableModal)).isPresent().then(function (isPresent) {
        if (isPresent === true) {
            addTextTags("[name='monitorable.truckDevice']", trackingDevice);
        }
    });
    element(by.css(trackingMonitorableModal)).isPresent().then(function (isPresent) {
        if (isPresent === true) {
            addTextTags("[name='monitorable.temperatureRangeType']", temperatureRangeType);
        }
    });
    elementClick(startExecutionCheckBox);
    elementClick(okButton);
    return elementClick(okButton);
};