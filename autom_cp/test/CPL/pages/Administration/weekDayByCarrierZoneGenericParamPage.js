"use strict";

var chai = require('chai');
var chaiAsPromised = require('chai-as-promised');
chai.use(chaiAsPromised);
var assert = chai.assert;

const utils = require('../../scripts/utils'),
    filter = require("../../scripts/filter"),
    genericParam = require("./genericParamPage");

function setCarrier(carrier) {
    return utils.addTextTags("[name='Transportadora']", carrier);
};

function setCarrierZoneGrouper(carrierZoneGrouper) {
    return utils.addTextTags("[name='Agrupador de Zona de Transporte']", carrierZoneGrouper);
};

function setCarrierZone(carrierZone) {
    return utils.addTextTags("[name='Zona de Transporte']", carrierZone);
};

function setWeekDay(weekDay) {
    return utils.addTextTags("[name='Dia da semana']", weekDay);
};

function searchParam(carrier, carrierZoneGrouper, carrierZone, weekDay) {
    return filterAndGetCount(carrier, carrierZoneGrouper, carrierZone, weekDay);
};

function filterAndGetCount(carrier, carrierZoneGrouper, carrierZone, weekDay) {
    customizeFilter();
    fillCarrierAttribute(carrier);
    fillCarrierZoneGrouperAttribute(carrierZoneGrouper);
    fillCarrierZoneAttribute(carrierZone);
    fillWeekDayAttribute(weekDay);
    utils.elementClick("[name='submitButton']");
    return element.all(by.css("[name='nlgGenericParamDataTable'] tbody tr")).count();
};

function fillCarrierAttribute(carrier) {
    return utils.addTextTags("[name='Transportadora-br.com.neolog.service.crud.filter.FilterOperation.EQUAL']", carrier);
};

function fillCarrierZoneGrouperAttribute(carrierZoneGrouper) {
    return utils.addTextTags("[name='Agrupador de Zona de Transporte-br.com.neolog.service.crud.filter.FilterOperation.EQUAL']", carrierZoneGrouper);
};

function fillCarrierZoneAttribute(carrierZone) {
    return utils.addTextTags("[name='Zona de Transporte-br.com.neolog.service.crud.filter.FilterOperation.EQUAL']", carrierZone);
};

function fillWeekDayAttribute(weekDay) {
    return utils.fillFilterDropdown("[name='Dia da semana-br.com.neolog.service.crud.filter.FilterOperation.EQUAL']", weekDay)
};

function customizeFilter() {
    filter.clearFilter();
    filter.customizeFilter();
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+0']", "Transportadora", "Transportadora");
    utils.elementClick("[name='buttonAdd+0']");
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+1']", "Agrupador de Zona de Transporte", "Agrupador de Zona de Transporte");
    utils.elementClick("[name='buttonAdd+0']");
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+2']", "Zona de Transporte", "Zona de Transporte");
    utils.elementClick("[name='buttonAdd+0']");
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+3']", "Dia da semana", "Dia da semana");
    return utils.elementClick("[name='buttonApply']");
};

function fillParam(carrier, carrierZoneGrouper, carrierZone, weekDay) {
    return genericParam.navigateToParamEditingPage("Dia da semana por zona de transporte")
        .then(function () {
            filterAndGetCount(carrier, carrierZoneGrouper, carrierZone, weekDay)
                .then(function (regCount) {
                    if (regCount === 0) {
                        genericParam.addParam();
                        setCarrier(carrier);
                        setCarrierZoneGrouper(carrierZoneGrouper);
                        setCarrierZone(carrierZone);
                        setWeekDay(weekDay);
                        genericParam.saveParam();
                        genericParam.clickOkButton();
                    }
                    return genericParam.cancelParam();
                })
        });
};

module.exports = {
    setCarrier,
    setCarrierZoneGrouper,
    setCarrierZone,
    fillParam,
    setWeekDay,
    searchParam
}