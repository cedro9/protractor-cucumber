"use strict";

const { Given, When, Then } = require("cucumber");

const page = require("../pages/administration/mandatoryPassingHubGenericParamPage");

Given('preencho o parâmetro com o agrupador de zona de transporte de origem com {string}', function (grouper) {
    return page.setOriginGroup(grouper);
});

Given('preencho o parâmetro com a zona de transporte de origem com {string}', function (carrierZone) {
    return page.setOriginCarrierZone(carrierZone);
});

Given('preencho o parâmetro com o agrupador de zona de transporte de destino com {string}', function (grouper) {
    return page.setDestinationGroup(grouper);
});

Given('preencho o parâmetro com a zona de transporte de destino com {string}', function (carrierZone) {
    return page.setDestinationCarrierZone(carrierZone);
});

Given('preencho o parâmetro com o hub de passagem com {string}', function (hub) {
    return page.setPassingHub(hub);
});

Given('verifico se o parâmetro Hubs de passagem obrigatórios está preenchido', function () {
    page.assertParamMandatoryPassingHubIsFilled("AGRZTDEPMPHGP03", "ZTDEPMPHGP04", "AGRZTDEPMPHGP03", "ZTDEPMPHGP04", "HPDEPMPHGP");
    page.assertParamMandatoryPassingHubIsFilled("AGRZTDEPMPHGP03", "ZTDEPMPHGP04", "AGRZTDEPMPHGP03", "ZTDEPMPHGP05", "HPDEPMPHGP");
    return page.assertParamMandatoryPassingHubIsFilled("AGRZTDEPMPHGP03", "ZTDEPMPHGP05", "AGRZTDEPMPHGP03", "ZTDEPMPHGP06", "HPDEPMPHGP");
});

Given('que preencho o parâmetro genérico Hubs de passagem obrigatórios com o agrupador {string}, com a zona de transporte {string} e hub {string}', function (grouper, carrierZone, hub) {
    return page.fillMandatoryPassingHubGenericParam(grouper, carrierZone, grouper, carrierZone, hub);
});