"use strict";

const { Given, When, Then } = require("cucumber");

const utils = require('../scripts/utils'),
    messages = require('../scripts/messages'),
    navigate = require('../scripts/navigate');

const genericParamPage = require('../pages/Administration/genericParamPage'),
    param = require("../pages/administration/blockedVehiclesOnLocalityGenericParamPage");

Given('que bloqueio o veículo {string} para a localidade {string} no parâmetro Restrição de veículos bloqueados por localidade', function (vehicle, locality) {
    return param.fillBlockedVehiclesOnLocalityGenericParamPage(locality, vehicle);
});