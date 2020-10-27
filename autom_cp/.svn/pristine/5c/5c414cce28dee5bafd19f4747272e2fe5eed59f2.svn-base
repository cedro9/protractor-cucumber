"use strict";

const { Given, When, Then } = require("cucumber");

const page = require("../pages/administration/restrictedDeliveryTimeByCarrierZoneGenericParamPage");

Given('que preencho o parâmetro genérico Restrição de horário de entrega de produtos perigosos por zona de transporte com o agrupador {string}, com a zona de transporte {string}', function (group, carrierZone) {
    return page.fillRestrictedDeliveryTimeByCarrierZoneGenericParam(group, carrierZone);
});

Given('preencho o parâmetro com o agrupador de zona de transporte com {string}', function (group) {
    return page.setGroup(group);
});

Given('preencho o parâmetro com a zona de transporte com {string}', function (carrierZone) {
    return page.setCarrierZone(carrierZone);
});

Given('preencho o horário de inicio da restrição com {string}', function (restrictionStart) {
    return page.setRestrictionStart(restrictionStart);
});

Given('preencho o horário de fim da restrição com {string}', function (restrictionEnd) {
    return page.setRestrictionEnd(restrictionEnd);
});