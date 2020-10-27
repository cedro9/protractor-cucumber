"use strict";

var chai = require('chai');
var chaiAsPromised = require('chai-as-promised');
chai.use(chaiAsPromised);

const utils = require('../../scripts/utils'),
    genericParam = require('../../pages/Administration/genericParamPage'),
    filter = require('../../scripts/filter');

module.exports = {
    setCarrierZoneGrouper,
    setCarrierZone,
    setDelayTimeOV,
    setDelayTimeOrder,
    fillCarrierZoneOVRemessaDelayTimeGenericParam,
    removeCarrierZoneOVRemessaDelayTimeGenericParam
};

function setCarrierZoneGrouper(carrierzonegrouper) {
    return utils.addTextTags("[name='Agrupador de Zona de Transporte']", carrierzonegrouper);

};

function setCarrierZone(carrierzone) {
    return utils.addTextTags("[name='Zona de Transporte de Destino']", carrierzone);

};

function setDelayTimeOV() {
    return utils.fillNumber("[name='Tempo de atraso (OV)'] [name='secondInput']", "05");
};

function setDelayTimeOrder() {
    return utils.fillNumber("[name='Tempo de atraso (Remessa)'] [name='secondInput']", "05");
};

function fillCarrierZoneOVRemessaDelayTimeGenericParam(carrierzonegrouper, carrierzone) {
    return genericParam.navigateToParamEditingPage('Tempo de atraso por zona de transporte e data de OV ou data de remessa')
        .then(function () {
            return filterCarrierZoneOVRemessaDelayTimeAndGetCount(carrierzonegrouper, carrierzone)
                .then(function (regCount) {
                    if (regCount === 0) {
                        genericParam.addParam();
                        setCarrierZoneGrouper(carrierzonegrouper);
                        setCarrierZone(carrierzone);
                        setDelayTimeOV();
                        setDelayTimeOrder();
                        genericParam.saveParam();
                        genericParam.clickOkButton();
                    }
                    return genericParam.cancelParam();
                })
        })
};

function removeCarrierZoneOVRemessaDelayTimeGenericParam(carrierzonegrouper, carrierzone) {
    return genericParam.navigateToParamEditingPage('Tempo de atraso por zona de transporte e data de OV ou data de remessa')
        .then(function () {
            return filterCarrierZoneOVRemessaDelayTimeAndGetCount(carrierzonegrouper, carrierzone)
                .then(function (regCount) {
                    if (regCount === 3) {
                        genericParam.removeDataParam();
                        genericParam.saveParam();
                        genericParam.clickOkButton();
                    }
                    return genericParam.cancelParam();
                })
        })
};

function filterCarrierZoneOVRemessaDelayTimeAndGetCount(carrierzonegrouper, carrierzone) {
    filter.clearFilter();
    filter.customizeFilter();
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+0']", "Agrupador de Zona de Transporte", "Agrupador de Zona de Transporte");
    utils.elementClick("[name='buttonAdd+0']");
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+1']", "Zona de Transporte de Destino", "Zona de Transporte de Destino");
    utils.elementClick("[name='buttonApply']");
    utils.addTextTags("[name='Agrupador de Zona de Transporte-br.com.neolog.service.crud.filter.FilterOperation.EQUAL']", carrierzonegrouper);
    utils.addTextTags("[name='Zona de Transporte de Destino-br.com.neolog.service.crud.filter.FilterOperation.EQUAL']", carrierzone);
    utils.elementClick("[name='submitButton']");
    return element.all(by.css("[name='nlgGenericParamDataTable'] tbody tr")).count();
};