"use strict";

var { Given, When, Then } = require("cucumber");

const page = require("../pages/administration/forbiddenVehicleOnCarrierGenericParamPage");

Given('que preencho o parâmetro genérico Veículos proibidos por transportadora deixando apenas o veículo {string} liberado para a transportadora {string}', function (vehicle, carrier) {
    return page.setForbidAllVehiclesExceptOne(vehicle, carrier);
});