"use strict";

const { Given, When, Then } = require("cucumber");

const utils = require('../scripts/utils'),
    navigate = require('../scripts/navigate');

const genericParamPage = require('../pages/Administration/genericParamPage'),
    weekDayByCarrierZone = require("../pages/administration/weekDayByCarrierZoneGenericParamPage");

Given('preencho o parâmetro com a transportadora {string}', function (carrier) {
    return weekDayByCarrierZone.setCarrier(carrier);
});

Given('preencho o parâmetro com o agrupador {string}', function (carrierZoneGrouper) {
    return weekDayByCarrierZone.setCarrierZoneGrouper(carrierZoneGrouper);
});


Given('preencho o parâmetro com a zona de transporte {string}', function (carrierZone) {
    return weekDayByCarrierZone.setCarrierZone(carrierZone);
});

Given('preencho o parâmetro com o dia da semana {string}', function (weekDay) {
    return weekDayByCarrierZone.setWeekDay(weekDay);
});

Given('verifico se o parâmetro Dia da semana por zona de transporte está preenchido', function () {
    weekDayByCarrierZone.searchParam("TRANSDEPWDBCZP03", "AZTDEPWDBCZP01", "ZTDEPWDBCZP01", "Sexta-Feira");
    return weekDayByCarrierZone.searchParam("TRANSDEPWDBCZP04", "AZTDEPWDBCZP01", "ZTDEPWDBCZP01", "Sexta-Feira");
});

Given('que preencho o parâmetro genérico Dia da semana por zona de transporte com a transportadora {string}, agrupador {string}, zona de transporte {string} e dia da semana {string}', function (carrier, carrierZoneGrouper, carrierZone, weekDay) {
    return weekDayByCarrierZone.fillParam(carrier, carrierZoneGrouper, carrierZone, weekDay);
});