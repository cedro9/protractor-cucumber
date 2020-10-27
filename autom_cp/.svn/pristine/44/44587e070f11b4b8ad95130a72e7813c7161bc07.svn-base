"use strict";

var chai = require('chai');
var chaiAsPromised = require('chai-as-promised');
chai.use(chaiAsPromised);

const utils = require('../../scripts/utils'),
    genericParam = require('./genericParamPage'),
    filter = require('../../scripts/filter');

module.exports = {
    setClassification,
    setClassification,
    setVehicle,
    setOccupationOperator,
    setOccupation,
    setQuantityZoneOperator,
    setQuantityZone,
    setWeightOperator,
    setWeight,
    setDestiny,
    setServiceType,
    setPriority,
    fillTripClassificationByVehicleGenericParam,
    removeTripClassificationByVehicleGenericParam
}

function setClassification(classification) {
    return utils.addTextTags("[name='Classificação']", classification);
};

function setVehicle(vehicle) {
    return utils.addTextTags("[name='Veículo']", vehicle);
};

function setOccupationOperator(occupationoperator) {
    return utils.addTextTags("[name='Operador de ocupação']", occupationoperator);
};

function setOccupation(occupation) {
    return utils.fillNumber("[name='Ocupação']", occupation);
};

function setQuantityZoneOperator(quantityzoneoperator) {
    return utils.addTextTags("[name='Operador de quantidade de zonas']", quantityzoneoperator);
};

function setQuantityZone(quantityzone) {
    return utils.fillNumber("[name='Quantidade de zonas']", quantityzone);
};

function setWeightOperator(weightoperator) {
    return utils.addTextTags("[name='Operador de Peso']", weightoperator);
};

function setWeight(weight) {
    return utils.fillNumber("[name='Peso (Ton)']", weight);
};

function setDestiny(destiny) {
    return utils.addTextTags("[name='Destino']", destiny);
};

function setServiceType(servicetype) {
    return utils.addTextTags("[name='Tipo de serviço']", servicetype);
};

function setPriority(priority) {
    return utils.fillNumber("[name='Prioridade']", priority);
};

function fillTripClassificationByVehicleGenericParam(classification, vehicle, occupationoperator, quantityzoneoperator, quantityzone, weightoperator, weight, destiny, servicetype, priority) {
    return genericParam.navigateToParamEditingPage('Classificação de viagem por Veículo')
        .then(function () {
            return filterTripClassificationByVehicle(classification, vehicle, servicetype)
                .then(function (regCount) {
                    if (regCount === 0) {
                        genericParam.addParam();
                        setClassification(classification);
                        setVehicle(vehicle);
                        setOccupationOperator(occupationoperator);
                        setOccupation(occupation);
                        setQuantityZoneOperator(quantityzoneoperator);
                        setQuantityZone(quantityzone);
                        setWeightOperator(weightoperator);
                        setWeight(weight);
                        setDestiny(destiny);
                        setServiceType(servicetype);
                        setPriority(priority);
                        genericParam.saveParam();
                        genericParam.clickOkButton();
                    }
                    return genericParam.cancelParam();
                })
        })
};

function removeTripClassificationByVehicleGenericParam(classification, vehicle, servicetype) {
    return genericParam.navigateToParamEditingPage('Classificação de viagem por Veículo')
        .then(function () {
            return filterTripClassificationByVehicle(classification, vehicle, servicetype)
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

function filterTripClassificationByVehicle(classification, vehicle, servicetype) {
    filter.clearFilter();
    filter.customizeFilter();
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+0']", "Classificação", "Classificação");
    utils.elementClick("[name='buttonAdd+0']");
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+1']", "Veículo", "Veículo");
    utils.elementClick("[name='buttonAdd+1']");
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+2']", "Tipo de serviço", "Tipo de serviço");
    utils.elementClick("[name='buttonApply']");
    utils.addTextTags("[name='Classificação-br.com.neolog.service.crud.filter.FilterOperation.EQUAL']", classification);
    utils.addTextTags("[name='Veículo-br.com.neolog.service.crud.filter.FilterOperation.EQUAL']", vehicle);
    utils.addTextTags("[name='Tipo de serviço-br.com.neolog.service.crud.filter.FilterOperation.EQUAL']", servicetype);
    utils.elementClick("[name='submitButton']");
    return element.all(by.css("[name='nlgGenericParamDataTable'] tbody tr")).count();
};