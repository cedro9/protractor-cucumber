"use strict";

var chai = require('chai');
var chaiAsPromised = require('chai-as-promised');
chai.use(chaiAsPromised);
var assert = chai.assert;

const utils = require('../../scripts/utils'),
    filter = require("../../scripts/filter"),
    genericParam = require("./genericParamPage");


const fillRestrictedDeliveryTimeByCarrierZoneGenericParam = (group, carrierZone) => {
    return genericParam.navigateToParamEditingPage("Restrição de horário de entrega de produtos perigosos por zona de transporte")
        .then(function () {
            return filterAndGetCount(group, carrierZone)
                .then(function (regCount) {
                    if (regCount < 2) {
                        fillRestrictedDeliveryTimeByCarrierZone(group, carrierZone);
                        genericParam.saveParam();
                        genericParam.clickOkButton();
                    }
                    return genericParam.cancelParam();
                })
        })
};

const filterAndGetCount = (group, carrierZone) => {
    customizeFilter();
    fillGroupAttribute(group);
    fillCarrierZoneAttribute(carrierZone);
    utils.elementClick("[name='submitButton']");
    return element.all(by.css("[name='nlgGenericParamDataTable'] tbody tr")).count();
};

const fillGroupAttribute = group => {
    return utils.addTextTags("[name='Agrupador de Zona de Transporte-br.com.neolog.service.crud.filter.FilterOperation.EQUAL']", group);
};

const fillCarrierZoneAttribute = carrierZone => {
    return utils.addTextTags("[name='Zona de Transporte-br.com.neolog.service.crud.filter.FilterOperation.EQUAL']", carrierZone);
};

const customizeFilter = () => {
    filter.clearFilter();
    filter.customizeFilter();
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+0']", "Agrupador de Zona de Transporte", "Agrupador de Zona de Transporte");
    utils.elementClick("[name='buttonAdd+0']");
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+1']", "Zona de Transporte", "Zona de Transporte");
    return utils.elementClick("[name='buttonApply']");
};

const fillRestrictedDeliveryTimeByCarrierZone = (group, carrierZone) => {
    genericParam.addParam();
    setGroup(group);
    setCarrierZone(carrierZone);
    setRestrictionStart("10:00");
    setRestrictionEnd("15:00");  
    genericParam.addParam();
    setGroup(group);
    setCarrierZone(carrierZone);
    setRestrictionStart("15:30");
    return setRestrictionEnd("22:00");
};

const setGroup = group => {
    return utils.comboAddTag("[name='Agrupador de Zona de Transporte']", group, group);
};

const setCarrierZone = carrierZone => {
    return utils.comboAddTag("[name='Zona de Transporte']", carrierZone, carrierZone);
};

const setRestrictionEnd = time => {
    const hour = time.substring(0, 2);
    const minute = time.substring(3);
    return utils.fillTimePicker("[name='Fim']", hour, minute);;
};

const setRestrictionStart = time => {
    const hour = time.substring(0, 2);
    const minute = time.substring(3);
    return utils.fillTimePicker("[name='Início']", hour, minute);
};

const searchParam = (group, carrierZone) => {
    return filterAndGetCount(group, carrierZone);
};

const assertParamRestrictedDeliveryTimeByCarrierZoneIsFilled = (group, carrierZone) => {
    return searchParam(group, carrierZone)
        .then(function (result) {
            const expectedResult = "1";
            return assert.equal(expectedResult, result, "Era esperado [" + expectedResult + "] registro" + " ,porém  foram encontrados [" + result + "].");
        })
};

module.exports = {
    setGroup,
    setCarrierZone,
    setRestrictionStart,
    setRestrictionEnd,
    searchParam,
    fillRestrictedDeliveryTimeByCarrierZoneGenericParam,
    assertParamRestrictedDeliveryTimeByCarrierZoneIsFilled
}