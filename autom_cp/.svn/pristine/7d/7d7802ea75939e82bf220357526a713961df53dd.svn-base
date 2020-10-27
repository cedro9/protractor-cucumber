"use strict";

var chai = require('chai');
var chaiAsPromised = require('chai-as-promised');
chai.use(chaiAsPromised);

const utils = require('../../scripts/utils'),
    genericParam = require('../../pages/Administration/genericParamPage'),
    filter = require('../../scripts/filter');

module.exports = {
    setOrigin,
    setCarrierZoneGrouper,
    setCarrierZone,
    setTypeClassification,
    setClassification,
    setDateLimitInitial,
    setDateLimitEnd,
    setHourLimitInitial,
    setHourLimitEnd,
    setDateLimitEndLessThanDateLimitInitial,
    fillOriginTripAutomaticOfferExceptionsGenericParam,
    removeOriginTripAutomaticOfferExceptionsGenericParam,
    filterOriginAndGetCount,
    fillCarrierZoneTripAutomaticOfferExceptionsGenericParam,
    removeCarrierZoneTripAutomaticOfferExceptionsGenericParam,
    filterCarrierZoneAndGetCount,
    fillClassificationTripAutomaticOfferExceptionsGenericParam,
    removeClassificationTripAutomaticOfferExceptionsGenericParam,
    filterClassificationAndGetCount,
    fillDateTripAutomaticOfferExceptionsGenericParam,
    removeDateTripAutomaticOfferExceptionsGenericParam
}

function setOrigin(origin) {
    return utils.addTextTags("[name='Origem']", origin);

}

function setCarrierZoneGrouper(carrierzonegrouper) {
    return utils.addTextTags("[name='Agrupador de Zona de Transporte']", carrierzonegrouper);

}

function setCarrierZone(carrierzone) {
    return utils.addTextTags("[name='Zona de Transporte']", carrierzone);

}

function setTypeClassification(typeclassification) {
    return utils.addTextTags("[name='Tipo de classificação']", typeclassification);

}

function setClassification(classification) {
    return utils.addTextTags("[name='Classificação']", classification);

}

function setDateLimitInitial(dateinitial) {
    return utils.fillText("[name='Data Limite Inicial'] [name='dateInput'] [name='dateInput']", dateinitial);
}

function setDateLimitEnd(dateend) {
    return utils.fillText("[name='Data Limite Final'] [name='dateInput'] [name='dateInput']", dateend);
}

function setHourLimitInitial() {
    return utils.fillTimePicker("[name='Data Limite Inicial']", "00", "00");
}

function setHourLimitEnd() {
    return utils.fillTimePicker("[name='Data Limite Final']", "00", "00");
}

function setDateLimitEndLessThanDateLimitInitial() {
    return utils.fillText("[name='Data Limite Final'] [name='dateInput'] [name='dateInput']", "01/12/2019");
}

function fillOriginTripAutomaticOfferExceptionsGenericParam(origin) {
    return genericParam.navigateToParamEditingPage('Exceções do fluxo de oferta automática de viagens')
        .then(function () {
            return filterOriginAndGetCount(origin)
                .then(function (regCount) {
                    if (regCount === 0) {
                        genericParam.addParam();
                        setOrigin(origin);
                        genericParam.saveParam();
                        genericParam.clickOkButton();
                    }
                    return genericParam.cancelParam();
                })
        })
};

function removeOriginTripAutomaticOfferExceptionsGenericParam(origin) {
    return genericParam.navigateToParamEditingPage('Exceções do fluxo de oferta automática de viagens')
        .then(function () {
            return filterOriginAndGetCount(origin)
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

function filterOriginAndGetCount(origin) {
    filter.clearFilter();
    filter.customizeFilter();
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+0']", "Origem", "Origem");
    utils.elementClick("[name='buttonApply']");
    utils.addTextTags("[name='Origem-br.com.neolog.service.crud.filter.FilterOperation.EQUAL']", origin);
    utils.elementClick("[name='submitButton']");
    return element.all(by.css("[name='nlgGenericParamDataTable'] tbody tr")).count();
};

function fillCarrierZoneTripAutomaticOfferExceptionsGenericParam(carrierzonegrouper, carrierzone) {
    return genericParam.navigateToParamEditingPage('Exceções do fluxo de oferta automática de viagens')
        .then(function () {
            return filterCarrierZoneAndGetCount(carrierzonegrouper, carrierzone)
                .then(function (regCount) {
                    if (regCount === 0) {
                        genericParam.addParam();
                        setCarrierZoneGrouper(carrierzonegrouper);
                        setCarrierZone(carrierzone);
                        genericParam.saveParam();
                        genericParam.clickOkButton();
                    }
                    return genericParam.cancelParam();
                })
        })
};

function removeCarrierZoneTripAutomaticOfferExceptionsGenericParam(carrierzonegrouper, carrierzone) {
    return genericParam.navigateToParamEditingPage('Exceções do fluxo de oferta automática de viagens')
        .then(function () {
            return filterCarrierZoneAndGetCount(carrierzonegrouper, carrierzone)
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

function filterCarrierZoneAndGetCount(carrierzonegrouper, carrierzone) {
    filter.clearFilter();
    filter.customizeFilter();
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+0']", "Agrupador de Zona de Transporte", "Agrupador de Zona de Transporte");
    utils.elementClick("[name='buttonAdd+0']");
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+1']", "Zona de Transporte", "Zona de Transporte");
    utils.elementClick("[name='buttonApply']");
    utils.addTextTags("[name='Agrupador de Zona de Transporte-br.com.neolog.service.crud.filter.FilterOperation.EQUAL']", carrierzonegrouper);
    utils.addTextTags("[name='Zona de Transporte-br.com.neolog.service.crud.filter.FilterOperation.EQUAL']", carrierzone);
    utils.elementClick("[name='submitButton']");
    return element.all(by.css("[name='nlgGenericParamDataTable'] tbody tr")).count();
};

function fillClassificationTripAutomaticOfferExceptionsGenericParam(typeclassification, classification) {
    return genericParam.navigateToParamEditingPage('Exceções do fluxo de oferta automática de viagens')
        .then(function () {
            return filterClassificationAndGetCount(typeclassification, classification)
                .then(function (regCount) {
                    if (regCount === 0) {
                        genericParam.addParam();
                        setTypeClassification(typeclassification);
                        setClassification(classification);
                        genericParam.saveParam();
                        genericParam.clickOkButton();
                    }
                    return genericParam.cancelParam();
                })
        })
};

function removeClassificationTripAutomaticOfferExceptionsGenericParam(typeclassification, classification) {
    return genericParam.navigateToParamEditingPage('Exceções do fluxo de oferta automática de viagens')
        .then(function () {
            return filterClassificationAndGetCount(typeclassification, classification)
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

function filterClassificationAndGetCount(typeclassification, classification) {
    filter.clearFilter();
    filter.customizeFilter();
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+0']", "Tipo de classificação", "Tipo de classificação");
    utils.elementClick("[name='buttonAdd+0']");
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+1']", "Classificação", "Classificação");
    utils.elementClick("[name='buttonApply']");
    utils.addTextTags("[name='Tipo de classificação-br.com.neolog.service.crud.filter.FilterOperation.EQUAL']", typeclassification);
    utils.addTextTags("[name='Classificação-br.com.neolog.service.crud.filter.FilterOperation.EQUAL']", classification);
    utils.elementClick("[name='submitButton']");
    return element.all(by.css("[name='nlgGenericParamDataTable'] tbody tr")).count();
};

function fillDateTripAutomaticOfferExceptionsGenericParam(dateinitial, dateend, origin) {
    return genericParam.navigateToParamEditingPage('Exceções do fluxo de oferta automática de viagens')
        .then(function () {
            return filterDateAndGetCount(dateinitial, dateend, origin)
                .then(function (regCount) {
                    if (regCount === 0) {
                        genericParam.addParam();
                        setDateLimitInitial(dateinitial);
                        setDateLimitEnd(dateend);
                        setHourLimitInitial();
                        setHourLimitEnd();
                        setOrigin(origin);
                        genericParam.saveParam();
                        genericParam.clickOkButton();
                    }
                    return genericParam.cancelParam();
                })
        })
};

function removeDateTripAutomaticOfferExceptionsGenericParam(dateinitial, dateend, origin) {
    return genericParam.navigateToParamEditingPage('Exceções do fluxo de oferta automática de viagens')
        .then(function () {
            return filterDateAndGetCount(dateinitial, dateend, origin)
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

function filterDateAndGetCount(dateinitial, dateend, origin) {
    filter.clearFilter();
    filter.customizeFilter();
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+0']", "Data Limite Inicial", "Data Limite Inicial");
    utils.elementClick("[name='buttonAdd+0']");
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+1']", "Data Limite Final", "Data Limite Final");
    utils.elementClick("[name='buttonAdd+1']");
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+2']", "Origem", "Origem");
    utils.elementClick("[name='buttonApply']");
    utils.fillText("[name='Data Limite Inicial-br.com.neolog.service.crud.filter.FilterOperation.GREATER_EQUAL_THAN'] [name='dateInput'] [name='dateInput']", dateinitial);
    utils.fillText("[name='Data Limite Final-br.com.neolog.service.crud.filter.FilterOperation.GREATER_EQUAL_THAN'] [name='dateInput'] [name='dateInput']", dateend);
    utils.addTextTags("[name='Origem-br.com.neolog.service.crud.filter.FilterOperation.EQUAL']", origin);
    utils.elementClick("[name='submitButton']");
    return element.all(by.css("[name='nlgGenericParamDataTable'] tbody tr")).count();
};