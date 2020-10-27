"use strict";

const { Given, When, Then } = require("cucumber");

const utils = require('../scripts/utils'),
    messages = require('../scripts/messages'),
    navigate = require('../scripts/navigate');

const genericParamPage = require('../pages/Administration/genericParamPage'),
    smallVehicles = require("../pages/administration/smallVehiclesGenericParamPage");

Given('que preencho o parâmetro genérico Veículos pequenos que permitem carga desunitizada com o veículo {string}', function (vehicle) {
    return smallVehicles.fillSmallVehiclesGenericParam(vehicle);
});

Given('que removo do parâmetro genérico Veículos pequenos que permitem carga desunitizada o registro com o veículo {string}', function (vehicle) {
    return smallVehicles.removeSmallVehiclesGenericParam(vehicle);
});

Given('preencho o parâmetro com o veículo {string}', function (vehicle) {
    return smallVehicles.setVehicle(vehicle);
});

When('preencho o parâmetro com a ordem {string}', function (order) {
    return smallVehicles.setOrdem(order);
});

When('preencho o parâmetro Veículos pequenos que permitem carga desunitizada com veículo {string} em duplicidade', function (vehicle) {
    return smallVehicles.fillSmallVehiclesGenericParamWithRepeteVehicle(vehicle);
});

When('verifico se o parâmetro Veículos pequenos que permitem carga desunitizada está preenchido', function () {
    smallVehicles.assertParamSmallVehiclesIsFilled("VEIDEPSV06", "1")
    return smallVehicles.assertParamSmallVehiclesIsFilled("VEIDEPSV07", "2");
});