"use strict";

var chai = require('chai');
var chaiAsPromised = require('chai-as-promised');
chai.use(chaiAsPromised);
var assert = chai.assert;

const utils = require('../../scripts/utils'),
    filter = require("../../scripts/filter"),
    genericParam = require("./genericParamPage");

module.exports = {
    setOriginGroup,
    setOriginCarrierZone,
    setDestinationGroup,
    setDestinationCarrierZone,
    setPassingHub,
    searchParam,
    fillMandatoryPassingHubGenericParam,
    assertParamMandatoryPassingHubIsFilled
}

function fillMandatoryPassingHubGenericParam(originGroup, originCarrierZone, destinationGroup, destinationCarrierZone, hub) {
    return genericParam.navigateToParamEditingPage("Hubs de passagem obrigatórios")
        .then(function () {
            return filterAndGetCount(originGroup, originCarrierZone, destinationGroup, destinationCarrierZone, hub)
                .then(function (regCount) {
                    if (regCount === 0) {
                        fillMandatoryPassingHub(originGroup, originCarrierZone, destinationGroup, destinationCarrierZone, hub);
                        genericParam.saveParam();
                        genericParam.clickOkButton();
                    }
                    return genericParam.cancelParam();
                })
        })
};

function filterAndGetCount(originGroup, originCarrierZone, destinationGroup, destinationCarrierZone, hub) {
    customizeFilter();
    fillOriginGroupAttribute(originGroup);
    fillOriginCarrierZoneAttribute(originCarrierZone);
    fillDestinationGroupAttribute(destinationGroup);
    fillDestinationCarrierZoneAttribute(destinationCarrierZone);
    fillPassingHub(hub);
    utils.elementClick("[name='submitButton']");
    return element.all(by.css("[name='nlgGenericParamDataTable'] tbody tr")).count();
};

function fillOriginGroupAttribute(group) {
    return utils.addTextTags("[name='Agrupador de Zona de Transporte de Origem-br.com.neolog.service.crud.filter.FilterOperation.EQUAL']", group);
};

function fillOriginCarrierZoneAttribute(carrierZone) {
    return utils.addTextTags("[name='Zona de Transporte de Origem-br.com.neolog.service.crud.filter.FilterOperation.EQUAL']", carrierZone);
};

function fillDestinationGroupAttribute(group) {
    return utils.addTextTags("[name='Agrupador de Zona de Transporte de Destino-br.com.neolog.service.crud.filter.FilterOperation.EQUAL']", group);
};

function fillDestinationCarrierZoneAttribute(carrierZone) {
    return utils.addTextTags("[name='Zona de Transporte de Destino-br.com.neolog.service.crud.filter.FilterOperation.EQUAL']", carrierZone);
};

function fillPassingHub(hub) {
    return utils.addTextTags("[name='Hub de Passagem-br.com.neolog.service.crud.filter.FilterOperation.EQUAL']", hub);
};

function customizeFilter() {
    filter.clearFilter();
    filter.customizeFilter();
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+0']", "Agrupador de Zona de Transporte de Origem", "Agrupador de Zona de Transporte de Origem");
    utils.elementClick("[name='buttonAdd+0']");
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+1']", "Zona de Transporte de Origem", "Zona de Transporte de Origem");
    utils.elementClick("[name='buttonAdd+0']");
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+2']", "Agrupador de Zona de Transporte de Destino", "Agrupador de Zona de Transporte de Destino");
    utils.elementClick("[name='buttonAdd+0']");
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+3']", "Zona de Transporte de Destino", "Zona de Transporte de Destino");
    utils.elementClick("[name='buttonAdd+0']");
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+4']", "Hub de Passagem", "Hub de Passagem");
    return utils.elementClick("[name='buttonApply']");
};

function fillMandatoryPassingHub(originGroup, originCarrierZone, destinationGroup, destinationCarrierZone, hub) {
    genericParam.addParam();
    setOriginGroup(originGroup);
    setOriginCarrierZone(originCarrierZone);
    setDestinationGroup(destinationGroup);
    setDestinationCarrierZone(destinationCarrierZone);
    return setPassingHub(hub);
};

function setOriginGroup(group) {
    return utils.addTextTags("[name='Agrupador de Zona de Transporte de Origem']", group);
};

function setOriginCarrierZone(carrierZone) {
    return utils.addTextTags("[name='Zona de Transporte de Origem']", carrierZone);
};

function setDestinationGroup(group) {
    return utils.addTextTags("[name='Agrupador de Zona de Transporte de Destino']", group);
};

function setDestinationCarrierZone(carrierZone) {
    return utils.addTextTags("[name='Zona de Transporte de Destino']", carrierZone);
};

function setPassingHub(hub) {
    return utils.addTextTags("[name='Hub de Passagem']", hub);
};

function searchParam(originGroup, originCarrierZone, destinationGroup, destinationCarrierZone, hub) {
    return filterAndGetCount(originGroup, originCarrierZone, destinationGroup, destinationCarrierZone, hub);
};

function assertParamMandatoryPassingHubIsFilled(originGroup, originCarrierZone, destinationGroup, destinationCarrierZone, hub) {
    return searchParam(originGroup, originCarrierZone, destinationGroup, destinationCarrierZone, hub)
        .then(function (result) {
            const expectedResult = "1";
            return assert.equal(expectedResult, result, "Era esperado [" + expectedResult + "] registro" + " ,porém  foram encontrados [" + result + "].");
        })
};