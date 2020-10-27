"use strict";

var { When } = require("cucumber");

const { setClassification,
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
    removeTripClassificationByVehicleGenericParam } = require("../pages/Administration/tripClassificationByVehicleGenericParamPage");

When('preencho a classificação de viagem com o valor {string}', function (classification) {
    return setClassification(classification);
});

When('preencho o veículo {string}', function (vehicle) {
    return setVehicle(vehicle);
});

When('preencho o operador de ocupação {string}', function (occupationoperator) {
    return setOccupationOperator(occupationoperator);
});

When('preencho a ocupação {string}', function (occupation) {
    return setOccupation(occupation);
});

When('preencho o operador de quantidade de zonas {string}', function (quantityzoneoperator) {
    return setQuantityZoneOperator(quantityzoneoperator);
});

When('preencho a quantidade de zonas {string}', function (quantityzone) {
    return setQuantityZone(quantityzone);
});

When('preencho o operador de peso {string}', function (weightoperator) {
    return setWeightOperator(weightoperator);
});

When('preencho o peso {string}', function (weight) {
    return setWeight(weight);
});

When('preencho o destino da viagem {string}', function (destiny) {
    return setDestiny(destiny);
});

When('preencho o tipo de serviço da viagem {string}', function (servicetype) {
    return setServiceType(servicetype);
});

When('preencho a prioridade {string}', function (priority) {
    return setPriority(priority);
});

When('que removo a classificação {string} veículo {string} e tipo de serviço {string} do parâmetro genérico Classificação de viagem por Veículo', function (classification, vehicle, servicetype) {
    return removeTripClassificationByVehicleGenericParam(classification, vehicle, servicetype);
});