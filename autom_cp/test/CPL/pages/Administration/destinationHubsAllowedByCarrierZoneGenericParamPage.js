"use strict";

var chai = require('chai');
var chaiAsPromised = require('chai-as-promised');
chai.use(chaiAsPromised);

const utils = require('../../scripts/utils'),
    genericParam = require('./genericParamPage'),
    filter = require('../../scripts/filter');

module.exports = {
    setDestinationHub,
    setCarrierZoneGroup,
    setCarrierZone,
    filldestinationHubsAllowedByCarrierZoneGenericParam,
    removedestinationHubsAllowedByCarrierZoneGenericParam
}

function setDestinationHub(destinationhub) {
    return utils.addTextTags("[name='Hub de Destino']", destinationhub);
};

function setCarrierZoneGroup(carrierzonegroup) {
    return utils.addTextTags("[name='Agrupador de Zona de Transporte']", carrierzonegroup);
};

function setCarrierZone(carrierzone) {
    return utils.addTextTags("[name='Zona de Transporte de Destino']", carrierzone);
};

function filldestinationHubsAllowedByCarrierZoneGenericParam(destinationhub, carrierzonegroup, carrierzone) {
    return genericParam.navigateToParamEditingPage('Hubs de destino permitidos por zona de transporte')
        .then(function () {
            return filterdestinationHubsAllowedByCarrierZoneAndGetCount(destinationhub, carrierzonegroup, carrierzone)
                .then(function (regCount) {
                    if (regCount === 0) {
                        genericParam.addParam();
                        setDestinationHub(destinationhub);
                        setCarrierZoneGroup(carrierzonegroup);
                        setCarrierZone(carrierzone);
                        genericParam.saveParam();
                        genericParam.clickOkButton();
                    }
                    return genericParam.cancelParam();
                })
        })
};

function removedestinationHubsAllowedByCarrierZoneGenericParam(destinationhub, carrierzonegroup, carrierzone) {
    return genericParam.navigateToParamEditingPage('Hubs de destino permitidos por zona de transporte')
        .then(function () {
            genericParam.tableViewParam();
            return filterdestinationHubsAllowedByCarrierZoneAndGetCount(destinationhub, carrierzonegroup, carrierzone)
                .then(function (regCount) {
                    if (regCount === 1) {
                        genericParam.removeDataParam();
                        genericParam.saveParam();
                        genericParam.clickOkButton();
                    }
                    return genericParam.cancelParam();
                })
        })
};

function filterdestinationHubsAllowedByCarrierZoneAndGetCount(destinationhub, carrierzonegroup, carrierzone) {
    filter.clearFilter();
    filter.customizeFilter();
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+0']", "Hub de Destino", "Hub de Destino");
    utils.elementClick("[name='buttonAdd+0']");
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+1']", "Agrupador de Zona de Transporte", "Agrupador de Zona de Transporte");
    utils.elementClick("[name='buttonAdd+1']");
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+2']", "Zona de Transporte de Destino", "Zona de Transporte de Destino");
    utils.elementClick("[name='buttonApply']");
    utils.addTextTags("[name='Hub de Destino-br.com.neolog.service.crud.filter.FilterOperation.EQUAL']", destinationhub);
    utils.addTextTags("[name='Agrupador de Zona de Transporte-br.com.neolog.service.crud.filter.FilterOperation.EQUAL']", carrierzonegroup);
    utils.addTextTags("[name='Zona de Transporte de Destino-br.com.neolog.service.crud.filter.FilterOperation.EQUAL']", carrierzone);
    utils.elementClick("[name='submitButton']");
    return element.all(by.css("[name='nlgGenericParamDataTable'] tbody tr")).count();
};